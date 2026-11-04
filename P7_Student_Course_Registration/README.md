# Experiment 7 – Student Course Registration

Run `./run.sh` on Ubuntu or `run.bat` on Windows. The launcher creates a local virtual environment, installs Django, creates/applies migrations, and starts the server.

Open http://127.0.0.1:8000/index/.

Demonstration:
1. Add a course using **Register Course**.
2. Register a student and select one or more courses.
3. Select a course on the index page to view the students enrolled in it.

The models, forms, view names, URL patterns, and data fields follow Experiment 7 of the lab manual. Template paths are namespaced under `registration/` so Django's app-template loader can resolve the manual's render paths.
