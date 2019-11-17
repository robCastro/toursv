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


class DestinoForm(forms.Form):
	opcionesTipo = [
		('Montaña', 'Montaña'),
		('Playa', 'Playa'),
		('Ruinas', 'Ruinas'),
		('Valle', 'Valle'),
		('Pueblo', 'Pueblo'),
	]
	opcionesDepartamento = [
		('Ahuachapan', 'Ahuachapan'), ('Cabañas', 'Cabañas'), ('Chalatenango', 'Chalatenango'),
		('Cuscatlan', 'Cuscatlan'), ('La Libertad', 'La Libertad'), ('La Paz', 'La Paz'),
		('La Union', 'La Union'), ('Morazan', 'Morazan'), ('San Miguel', 'San Miguel'),
		('San Salvador', 'San Salvador'), ('San Vicente', 'San Vicente'), ('Santa Ana', 'Santa Ana'),
		('Sonsonate', 'Sonsonate'), ('Usulutan', 'Usulutan')
	]
	nombre_destino = forms.CharField(label='Nombre', max_length=100)
	tipo_destino = forms.ChoiceField(label='Tipo', choices=opcionesTipo)
	departamento_destino = forms.ChoiceField(label='Departamento', choices=opcionesDepartamento)