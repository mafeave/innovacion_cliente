from django.urls import path
from . import views

urlpatterns = [
    # 1. 'inicio' puede usar la raíz (la primera página)
    path("", views.inicio, name="inicio"), 
    
    # 2. 'formulario' DEBE tener una ruta única (p.ej., 'formulario/')
    path("formulario/", views.formulario, name="formulario"), 
    
    # 3. 'evaluacion' DEBE tener una ruta única (p.ej., 'evaluacion/')
    path("evaluacion/", views.evaluacion, name="evaluacion"), 
]