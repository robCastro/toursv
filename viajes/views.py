from django.shortcuts import render
from django.http import HttpResponse
from .forms import TransporteForm

from .models import Transporte

def index(request):
	context = {}
	return render(request, 'base/base_estrategica.html', context)

def registrarVehiculo(request):
	if request.method == 'POST':
		form = TransporteForm(request.POST)
		if form.is_valid():
			print(form.cleaned_data)
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
	context = {
		'form': form,
	}
	return render(request, 'operativas/registrar_vehiculo.html', context)