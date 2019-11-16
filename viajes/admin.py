from django.contrib import admin
from .models import Cliente, Excursion, Guia, Hospedaje, Publicista, Reservan, Transporte
# Register your models here.

admin.site.register(Cliente)
admin.site.register(Excursion)
admin.site.register(Guia)
admin.site.register(Hospedaje)
admin.site.register(Publicista)
admin.site.register(Reservan)
admin.site.register(Transporte)