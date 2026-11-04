from django.shortcuts import render
def home(request):
    fruits = ["Apple", "Banana", "Mango", "Orange", "Grapes"]
    students = ["Aarav", "Diya", "Rahul", "Sneha"]
    return render(request, "listsapp/home.html", {"fruits": fruits, "students": students})
