# Django Lab Practicals (P2–P8)

Each practical is self-contained. Open this folder in VS Code and run its launcher:
- Windows: double-click `run.bat` or run it from PowerShell.
- Ubuntu: `chmod +x run.sh && ./run.sh`

The launcher creates a local `.venv`, installs Django from PyPI, applies migrations where needed, and starts the development server. First run requires internet access to install Django.

## Experiments
| Folder | Practical |
|---|---|
| P2_Setup | Virtual environment, Django project and app |
| P3_Current_Date_Time | Display server date and time |
| P4_Date_Time_Offset | Display current time, +4 hours and -4 hours |
| P5_Fruits_Students | HTML unordered and ordered lists |
| P6_Layout_Inheritance | Shared layout and Home/About/Contact pages |
| P7_Student_Course_Registration | Student/course ManyToMany registration |
| P8_Django_Admin | Register Student and Course in Django admin |

## Download without Git
Windows PowerShell:
```powershell
curl.exe -L https://github.com/artisticshashank/x2/archive/refs/heads/lab-ready-v2.zip -o django-lab.zip
Expand-Archive .\django-lab.zip -DestinationPath .
```
Ubuntu:
```bash
curl -L https://github.com/artisticshashank/x2/archive/refs/heads/lab-ready-v2.zip -o django-lab.zip
unzip django-lab.zip
```

Run only the required practical's launcher. See each folder's README for its exact URL and demonstration steps.
