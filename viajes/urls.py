from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),


    path('registrar_vehiculo/', views.registrarVehiculo, name='registrar_vehiculo'),
    path('control_vehiculos/', views.controlVehiculo, name='control_vehiculos'),
    path('pdf_vehiculos/(<fechaInicio>)/(<fechaFin>)/(<tipo>)/',
		views.RepControlVehiculos.as_view(),
		name = 'pdf_vehiculo'
	),


	path('registrar_destino/', views.registrarDestino, name='registrar_destino'),
    path('control_destinos/', views.controlDestino, name='control_destinos'),
    path('pdf_destinos/(<fechaInicio>)/(<fechaFin>)/(<tipo>)/(<departamento>)/',
		views.RepControlDestinos.as_view(),
		name = 'pdf_destinos'
	)
]