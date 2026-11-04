from datetime import datetime, timedelta
from django.shortcuts import render
def home(request):
    now = datetime.now()
    return render(request, "offsetapp/home.html", {
        "current_time": now,
        "four_hours_ahead": now + timedelta(hours=4),
        "four_hours_before": now - timedelta(hours=4),
    })
