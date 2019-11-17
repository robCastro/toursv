from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('registrar_vehiculo/', views.registrarVehiculo, name='registrar_vehiculo'),
    path('control_vehiculos/', views.controlVehiculo, name='control_vehiculos'),
]