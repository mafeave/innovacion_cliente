# blog/views.py

from django.shortcuts import render 

def inicio(request):
    # Renderizará el archivo HTML que acabas de crear
    return render(request, 'inicio.html')