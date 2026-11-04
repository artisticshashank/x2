from django.shortcuts import render
from django.http import HttpResponse
def home(request):
    return HttpResponse("<h1>P2: Django project and app are running.</h1>")
