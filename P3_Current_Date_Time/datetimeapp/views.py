from datetime import datetime
from django.shortcuts import render
def home(request):
    return render(request, "datetimeapp/home.html", {"current_datetime": datetime.now()})
