from django.shortcuts import render
from django.http import HttpResponse
from datetime import datetime, timedelta
from django.db import connection

from .forms import TransporteForm

from .models import Transporte

def index(request):
	context = {}
	return render(request, 'base/base_estrategica.html', context)

def registrarVehiculo(request):
	if request.method == 'POST':
		form = TransporteForm(request.POST)
		if form.is_valid():
			transporte = Transporte.objects.create(
				placa_transporte = form.cleaned_data['placa'],
				capacidad_transporte = form.cleaned_data['capacidad'],
				tipo_transporte = form.cleaned_data['tipo']
			)

		else:
			return HttpResponse('Error')
			print("Invalid")
	else:
		form = TransporteForm()

	for transporte in Transporte.objects.all():
		print(transporte.placa_transporte)
		print(transporte.capacidad_transporte)
		print(transporte.tipo_transporte)
	context = {
		'form': form,
	}
	return render(request, 'operativas/registrar_vehiculo.html', context)

def controlVehiculo(request):
	fechaFin = datetime.today()
	fechaInicio = fechaFin - timedelta(days=30)
	tipo = "Sedan"
	vehiculos = None
	errores = []
	if request.method == 'POST':
		print(request.POST)
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
				print ('TO DO PDF')
	context = {
		'fechaInicio': fechaInicio,
		'fechaFin': fechaFin,
		'tipo': tipo,
		'vehiculos': vehiculos,
		'errores': errores,
	}
	return render(request, 'operativas/control_vehiculos.html', context)

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