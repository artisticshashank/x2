from django.urls import path
from . import views

urlpatterns = [
    path('', views.datetime_offsets, name='datetime_offsets'),
]
