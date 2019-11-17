# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.BooleanField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.BooleanField()
    is_active = models.BooleanField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Cliente(models.Model):
    id_cliente = models.AutoField(primary_key=True)
    nombre_cliente = models.CharField(max_length=128)
    apellido_cliente = models.CharField(max_length=128)
    telefono_cliente = models.CharField(max_length=9, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'cliente'


class Destino(models.Model):
    id_destino = models.AutoField(primary_key=True)
    nombre_destino = models.CharField(max_length=128)
    tipo_destino = models.CharField(max_length=128)
    departamento_destino = models.CharField(max_length=128)
    fecha_registro_destino = models.DateField()

    class Meta:
        managed = False
        db_table = 'destino'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.SmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Excursion(models.Model):
    id_excursion = models.AutoField(primary_key=True)
    id_hospedaje = models.ForeignKey('Hospedaje', models.DO_NOTHING, db_column='id_hospedaje')
    id_publiciste = models.ForeignKey('Publicista', models.DO_NOTHING, db_column='id_publiciste')
    id_transporte = models.ForeignKey('Transporte', models.DO_NOTHING, db_column='id_transporte')
    id_guia = models.ForeignKey('Guia', models.DO_NOTHING, db_column='id_guia')
    fecha_inicio_excursion = models.DateField()
    fecha_fin_excursion = models.DateField()
    precio_excursion = models.DecimalField(max_digits=8, decimal_places=2, blank=True, null=True)
    id_destino = models.ForeignKey(Destino, models.DO_NOTHING, db_column='id_destino', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'excursion'


class Guia(models.Model):
    id_guia = models.AutoField(primary_key=True)
    nombre_guia = models.CharField(max_length=1024)
    apellido_guia = models.CharField(max_length=1024)

    class Meta:
        managed = False
        db_table = 'guia'


class Hospedaje(models.Model):
    id_hospedaje = models.AutoField(primary_key=True)
    nombre_hospedaje = models.CharField(max_length=1024)
    direccion_hospedaje = models.CharField(max_length=1024)
    telefono_hospedaje = models.CharField(max_length=10)
    estrellas_hospedaje = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'hospedaje'


class Publicista(models.Model):
    id_publiciste = models.AutoField(primary_key=True)
    nombre_publiciste = models.CharField(max_length=128)
    apellido_publiciste = models.CharField(max_length=128)

    class Meta:
        managed = False
        db_table = 'publicista'


class Reservan(models.Model):
    id_van_a = models.AutoField(primary_key=True)
    id_excursion = models.ForeignKey(Excursion, models.DO_NOTHING, db_column='id_excursion')
    id_cliente = models.ForeignKey(Cliente, models.DO_NOTHING, db_column='id_cliente')
    nota_publiciste = models.IntegerField(blank=True, null=True)
    nota_guia = models.IntegerField(blank=True, null=True)
    nota_hospedaje = models.IntegerField(blank=True, null=True)
    fue = models.BooleanField()

    class Meta:
        managed = False
        db_table = 'reservan'


class Transporte(models.Model):
    id_transporte = models.AutoField(primary_key=True)
    placa_transporte = models.CharField(max_length=1024)
    capacidad_transporte = models.IntegerField()
    tipo_transporte = models.CharField(max_length=1024, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'transporte'
