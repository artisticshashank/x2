from django.shortcuts import render, redirect, get_object_or_404
from .models import Student, Course
from .forms import StudentForm, CourseForm
def index(request):
    return render(request, "registrationapp/index.html", {"courses": Course.objects.all()})
def register_student(request):
    form = StudentForm(request.POST or None)
    if request.method == "POST" and form.is_valid(): form.save(); return redirect("student_list")
    return render(request, "registrationapp/form.html", {"form": form, "heading": "Register Student"})
def register_course(request):
    form = CourseForm(request.POST or None)
    if request.method == "POST" and form.is_valid(): form.save(); return redirect("home")
    return render(request, "registrationapp/form.html", {"form": form, "heading": "Register Course"})
def student_list(request, course_id):
    course = get_object_or_404(Course, pk=course_id)
    return render(request, "registrationapp/student_list.html", {"course": course, "students": course.students.all()})
