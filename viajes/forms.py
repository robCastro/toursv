from django import forms

class TransporteForm(forms.Form):
	placa = forms.CharField(label='Placa del Vehiculo', max_length=100)
	capacidad = forms.IntegerField(label='Capacidad de Transporte', min_value = 1, max_value=100)
	opciones = [
		('Sedan', 'Sedan'),
		('Pick up', 'Pick up'),
		('Camioneta', 'Camioneta'),
		('Micro bus', 'Micro bus'),
		('Buseta', 'Buseta'),
		('Bus', 'Bus'),
		('Otro', 'Otro'),

	]
	tipo = forms.ChoiceField(label='Tipo de Vehiculo', choices=opciones)