# X2 — Django Lab Projects (P2–P7)

A single entry point for running the Django experiments in this repository. Original application source files are retained; lab setup and missing project configuration are supplied separately.

## Quick start

### Windows
```bat
git clone https://github.com/artisticshashank/x2.git
cd x2
run.bat
```
Enter P3–P7 when prompted, or run `run.bat P7`.

### Ubuntu / Linux
```bash
git clone https://github.com/artisticshashank/x2.git
cd x2
chmod +x run.sh
./run.sh
```
Enter P3–P7 when prompted, or run `./run.sh P7`.

The launcher creates one root virtual environment, installs Django, applies migrations, and starts the selected project at http://127.0.0.1:8000/.

## Experiments

| Experiment | Demonstration |
|---|---|
| P2 | Python environment setup |
| P3 | Current date and time |
| P4 | Current time, four hours ahead and four hours behind |
| P5 | Fruit and student lists |
| P6 | Portfolio: Home, About and Contact |
| P7 | Student-course registration |

### P2 availability
The current GitHub tree contains only an environment directory for P2. No P2 Django source or `manage.py` is present. P2 is therefore documented as the environment-setup exercise, not represented as a runnable Django website. See [P2_SETUP.md](P2_SETUP.md).

## Manual execution
Activate the root `.venv`, change into the selected project directory, then run:
```bash
python manage.py migrate
python manage.py runserver
```

## Notes
- Python 3.10 or newer is recommended.
- The old committed virtual environments are machine-specific and are not used by the launcher.
- P6 and P7 referenced `fullstack_project.settings` in `manage.py`, but that configuration package was missing. Minimal configuration files have been added without rewriting their application code.
- P5's original template filename begins with a space although the view requests `home.html`. A correctly named duplicate template is supplied; the original is preserved.
- For local college-lab demonstrations only; not production deployment.
