

from django.shortcuts import render 

def inicio(request):
    return render(request, 'start.html')

def formulario(request):
    return render(request, 'index.html')

def evaluacion(request):
    return render(request, 'finish.html')
    