from django.contrib import admin
from django.urls import include, path
from student_course_registration_app import views

urlpatterns = [
    path("admin/", admin.site.urls),
    path("", views.index, name="home"),
    path("", include("student_course_registration_app.urls")),
]
