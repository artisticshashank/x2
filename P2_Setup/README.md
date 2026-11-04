# P2 – Virtual environment, Django project and app

## Run the prepared practical
- Windows: double-click `run.bat`.
- Ubuntu: `chmod +x run.sh && ./run.sh`.

The launcher creates `.venv`, installs Django, and starts the prepared project. First run requires internet access.

## Demonstrate project and app creation commands
The working example is already present in this folder. To demonstrate the creation commands without overwriting it, open a terminal in this folder and run:

```bash
mkdir creation_demo
cd creation_demo
python -m venv venv
# Activate: Windows: venv\\Scripts\\activate
# Activate: Ubuntu: source venv/bin/activate
pip install Django==5.2.18
django-admin startproject demo_project .
python manage.py startapp demo_app
```

Explain: `venv` isolates Python packages, `startproject` creates the Django project, and `startapp` creates an application.

Prepared example URL: http://127.0.0.1:8000/
