# Experiment 4 – Date and Time Offsets

Run `./run.sh` on Ubuntu or `run.bat` on Windows. The launcher creates a local virtual environment and installs Django plus the manual's `dateutil` import dependency.

Open http://127.0.0.1:8000/datetime-offsets/ to display the current server time, four hours ahead, and four hours before.

The view uses the manual's `datetime_offsets` function and calculations. The template is referenced as `offsetapp/datetime_offsets.html` for Django's app-template loader.
