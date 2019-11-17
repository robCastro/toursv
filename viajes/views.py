from django.shortcuts import render, redirect
from django.http import HttpResponse
from datetime import datetime, timedelta
from django.db import connection
from wkhtmltopdf.views import PDFTemplateView

from .forms import TransporteForm, DestinoForm, HospedajeForm

from .models import Transporte, Destino, Hospedaje

def index(request):
	context = {}
	return render(request, 'base/base_estrategica.html', context)

def registrarVehiculo(request):
	msg = None
	if request.method == 'POST':
		form = TransporteForm(request.POST)
		if form.is_valid():
			transporte = Transporte.objects.create(
				placa_transporte = form.cleaned_data['placa'],
				capacidad_transporte = form.cleaned_data['capacidad'],
				tipo_transporte = form.cleaned_data['tipo']
			)
			msg = "Guardado correctamente"
		else:
			return HttpResponse('Error')
	else:
		form = TransporteForm()
	context = {
		'form': form,
		'msg': msg
	}
	return render(request, 'operativas/registrar_vehiculo.html', context)

def controlVehiculo(request):
	preview = True
	fechaFin = datetime.now().date()
	fechaInicio = fechaFin - timedelta(days=30)
	tipo = "Sedan"
	vehiculos = None
	errores = []
	if request.method == 'POST':
		fechaInicio = datetime.strptime(request.POST['fechaI'], '%Y-%m-%d')
		fechaFin = datetime.strptime(request.POST['fechaF'], '%Y-%m-%d')
		if fechaInicio > fechaFin:
			errores.append("Fecha de Inicio no puede ser mayor a Fecha de Fin")
		else:
			tipo = request.POST['tipo']
			vehiculos = consultaVehiculosExcursiones(fechaInicio, fechaFin, tipo)
			if not vehiculos:
				errores.append("No hay vehiculos para esta busqueda")
			if request.POST['submit'] == 'Generar' and vehiculos:
				preview = False
	context = {
		'fechaInicio': fechaInicio,
		'fechaFin': fechaFin,
		'tipo': tipo,
		'vehiculos': vehiculos,
		'errores': errores,
	}
	if preview:
		return render(request, 'operativas/control_vehiculos.html', context)
	else:
		return redirect('pdf_vehiculo', fechaInicio.date(), fechaFin.date(), tipo)
		
class RepControlVehiculos(PDFTemplateView):
	filename = 'control_vehiculos.pdf'
	template_name = 'operativas/reporte_vehiculos.html'
	show_content_in_browser=True
	def get_context_data(self, **kwargs):
		context = super(RepControlVehiculos, self).get_context_data(**kwargs)
		fechaInicio = datetime.strptime(self.kwargs['fechaInicio'], '%Y-%m-%d')
		fechaFin = datetime.strptime(self.kwargs['fechaFin'], '%Y-%m-%d')
		tipo = self.kwargs['tipo']
		context['fechaHoy'] = datetime.now().date()
		context['fechaInicio'] = fechaInicio
		context['fechaFin'] = fechaFin
		context['tipo'] = tipo
		context['vehiculos'] = consultaVehiculosExcursiones(fechaInicio, fechaFin, tipo)
		return context

def consultaVehiculosExcursiones(fechaInicio, fechaFin, tipo):
	with connection.cursor() as cursor:
		cursor.execute("""
    		select placa_transporte, fecha_inicio_excursion, fecha_fin_excursion, nombre_hospedaje, direccion_hospedaje
    		from excursion
			natural join transporte
			natural join hospedaje
			where 
			tipo_transporte = '{}' and 
			fecha_inicio_excursion >= '{}' and
			fecha_inicio_excursion <= '{}'
			""".format(
				tipo,
				datetime.strftime(fechaInicio, '%Y-%m-%d'),
				datetime.strftime(fechaFin, '%Y-%m-%d')
			) 
		)
		return cursor.fetchall()



def registrarDestino(request):
	msg = None
	if request.method == 'POST':
		form = DestinoForm(request.POST)
		if form.is_valid():
			destino = Destino.objects.create(
				nombre_destino = form.cleaned_data['nombre_destino'],
				tipo_destino = form.cleaned_data['tipo_destino'],
				departamento_destino = form.cleaned_data['departamento_destino'],
				fecha_registro_destino = datetime.strftime(datetime.now().date(), '%Y-%m-%d')
			)
			msg = "Guardado correctamente"
		else:
			return HttpResponse('Error')
	else:
		form = DestinoForm()
	context = {
		'form': form,
		'msg': msg
	}
	return render(request, 'operativas/registrar_destino.html', context)

def controlDestino(request):
	preview = True
	fechaFin = datetime.now().date()
	fechaInicio = fechaFin - timedelta(days=30)
	tipo = "Montaña"
	departamento = "Ahuachapan"
	destinos = None
	errores = []
	if request.method == 'POST':
		fechaInicio = datetime.strptime(request.POST['fechaI'], '%Y-%m-%d')
		fechaFin = datetime.strptime(request.POST['fechaF'], '%Y-%m-%d')
		if fechaInicio > fechaFin:
			errores.append("Fecha de Inicio no puede ser mayor a Fecha de Fin")
		else:
			tipo = request.POST['tipo']
			departamento = request.POST['departamento']
			destinos = consultaDestinos(fechaInicio, fechaFin, tipo, departamento)
			if not destinos:
				errores.append("No hay Destinos para esta busqueda")
			if request.POST['submit'] == 'Generar' and destinos:
				preview = False
	context = {
		'fechaInicio': fechaInicio,
		'fechaFin': fechaFin,
		'tipo': tipo,
		'departamento': departamento,
		'destinos': destinos,
		'errores': errores,
	}
	if preview:
		return render(request, 'operativas/control_destinos.html', context)
	else:
		return redirect('pdf_destinos', fechaInicio.date(), fechaFin.date(), tipo, departamento)

class RepControlDestinos(PDFTemplateView):
	filename = 'control_destinos.pdf'
	template_name = 'operativas/reporte_destinos.html'
	show_content_in_browser=True
	def get_context_data(self, **kwargs):
		context = super(RepControlDestinos, self).get_context_data(**kwargs)
		fechaInicio = datetime.strptime(self.kwargs['fechaInicio'], '%Y-%m-%d')
		fechaFin = datetime.strptime(self.kwargs['fechaFin'], '%Y-%m-%d')
		tipo = self.kwargs['tipo']
		departamento = self.kwargs['departamento']
		context['fechaHoy'] = datetime.now().date()
		context['fechaInicio'] = fechaInicio
		context['fechaFin'] = fechaFin
		context['tipo'] = tipo
		context['departamento'] = departamento
		context['destinos'] = consultaDestinos(fechaInicio, fechaFin, tipo, departamento)
		return context

def consultaDestinos(fechaInicio, fechaFin, tipo, departamento):
	if tipo == "Todos":
		tipo = None
	if departamento == "Todos":
		departamento = None
	destinos = Destino.objects.all()
	if (tipo):
		destinos = destinos.filter(tipo_destino = tipo)
	if (departamento):
		destinos = destinos.filter(departamento_destino = departamento)
	if (fechaInicio and fechaFin):
		destinos = destinos.filter(fecha_registro_destino__range=(fechaInicio, fechaFin))
	return destinos



def registrarHospedaje(request):
	msg = None
	if request.method == 'POST':
		form = HospedajeForm(request.POST)
		if form.is_valid():
			hospedaje = Hospedaje.objects.create(
				nombre_hospedaje = form.cleaned_data['nombre_hospedaje'],
				direccion_hospedaje = form.cleaned_data['direccion_hospedaje'],
				telefono_hospedaje = form.cleaned_data['telefono_hospedaje'],
				estrellas_hospedaje = form.cleaned_data['estrellas_hospedaje'],
			)
			msg = "Guardado correctamente"
		#else:
			#return HttpResponse('Error')
	else:
		form = HospedajeForm()
	context = {
		'form': form,
		'msg': msg
	}
	return render(request, 'operativas/registrar_hospedaje.html', context)
