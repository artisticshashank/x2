# Generated for the Django lab practical.
from django.db import migrations, models
import django.db.models.deletion
class Migration(migrations.Migration):
    initial = True
    dependencies = []
    operations = [
        migrations.CreateModel(name="Course", fields=[("id", models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name="ID")), ("name", models.CharField(max_length=100)), ("description", models.TextField(blank=True))]),
        migrations.CreateModel(name="Student", fields=[("id", models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name="ID")), ("first_name", models.CharField(max_length=100)), ("last_name", models.CharField(max_length=100)), ("email", models.EmailField(max_length=254, unique=True)), ("courses", models.ManyToManyField(blank=True, related_name="students", to="registrationapp.course"))]),
    ]
