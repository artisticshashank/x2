# P2 – Virtual environment, Django project and app

## Run
- Windows: double-click `run.bat`.
- Ubuntu: `chmod +x run.sh && ./run.sh`.

The first run needs internet to install Django. Keep this folder intact.

## Demonstration
1. The folder contains a working Django project and app scaffold.
2. The launcher creates and activates `.venv`, installs Django, then starts the server.
3. To demonstrate project/app creation commands in the terminal:
   - `django-admin startproject labsite .`
   - `python manage.py startapp setupapp`
4. The project settings already include `setupapp`.

Open: http://127.0.0.1:8000/
