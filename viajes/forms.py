from django import forms

class TransporteForm(forms.Form):
	placa = forms.CharField(label='Placa del Vehiculo', max_length=100)
	capacidad = forms.IntegerField(label='Capacidad de Transporte', min_value = 1, max_value=100)
	tipo = forms.CharField(label='Tipo de Vehiculo', max_length=100)