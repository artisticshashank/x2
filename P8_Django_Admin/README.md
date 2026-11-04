# Experiment 8 – Django Admin

This practical contains the Student and Course models from Experiment 7 and the admin registration shown in Experiment 8.

Run `./run.sh` on Ubuntu or `run.bat` on Windows. The launcher creates a local virtual environment, installs Django, and applies migrations.

In a second terminal opened in this folder, activate the environment and create an admin account:

- Ubuntu: `source .venv/bin/activate`
- Windows PowerShell: `.venv\\Scripts\\Activate.ps1`
- Then run: `python manage.py createsuperuser`

Open http://127.0.0.1:8000/admin/, sign in, and add Course and Student records through the admin forms. StudentAdmin displays first name, last name and email, with the courses ManyToMany field shown using the horizontal selector.
