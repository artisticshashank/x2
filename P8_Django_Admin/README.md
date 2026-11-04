# P8 – Register models in Django admin

## Run
- Windows: double-click `run.bat`.
- Ubuntu: `chmod +x run.sh && ./run.sh`.

The first run needs internet to install Django. The launcher applies migrations and starts the server.

## Demonstration
1. Open a second terminal in this folder.
2. Activate the environment:
   - Windows PowerShell: `.venv\\Scripts\\Activate.ps1`
   - Ubuntu: `source .venv/bin/activate`
3. Create an admin login: `python manage.py createsuperuser`.
4. Open `http://127.0.0.1:8000/admin/` and sign in.
5. Add Course and Student records using the admin forms.
6. Show StudentAdmin's list columns and horizontal course selector.

The Student and Course models use the same ManyToMany relationship as P7.
