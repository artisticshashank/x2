from django.urls import path
from . import views
urlpatterns = [path("", views.index, name="home"), path("student/register/", views.register_student, name="register_student"), path("course/register/", views.register_course, name="register_course"), path("course/<int:course_id>/students/", views.student_list, name="student_list")]
