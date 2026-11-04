@echo off
setlocal
cd /d "%~dp0"
set "CHOICE=%~1"
if "%CHOICE%"=="" (
  echo X2 Django Lab Projects
  echo P2 - Environment setup
  echo P3 - Current date and time
  echo P4 - Four-hour time offsets
  echo P5 - Fruit and student lists
  echo P6 - Portfolio
  echo P7 - Student-course registration
  set /p CHOICE=Select experiment (P2-P7): 
)
if /I "%CHOICE%"=="P2" (
  if not exist ".venv\Scripts\python.exe" py -m venv .venv
  call ".venv\Scripts\activate.bat"
  python -m pip install --disable-pip-version-check -r requirements.txt
  if errorlevel 1 exit /b 1
  echo P2 environment setup complete. Virtual environment: .venv
  echo No P2 Django application source/manage.py is present in the repository.
  exit /b 0
)
if /I "%CHOICE%"=="P3" set "PROJECT_DIR=ps\ p3currentdateandtime\fsd pro3\pro3project"
if /I "%CHOICE%"=="P4" set "PROJECT_DIR=ps\p4dateandtime4hrsplusand4hrsbeforeoffset\pro4\pro4project"
if /I "%CHOICE%"=="P5" set "PROJECT_DIR=ps\p5\pro5\pro5project"
if /I "%CHOICE%"=="P6" set "PROJECT_DIR=pro6"
if /I "%CHOICE%"=="P7" set "PROJECT_DIR=ps\p7\pro7"
if not defined PROJECT_DIR (echo Invalid selection. Choose P2-P7. & exit /b 1)
if not exist "%PROJECT_DIR%\manage.py" (echo manage.py not found: %PROJECT_DIR% & exit /b 1)
if not exist ".venv\Scripts\python.exe" py -m venv .venv
call ".venv\Scripts\activate.bat"
python -m pip install --disable-pip-version-check -r requirements.txt
if errorlevel 1 exit /b 1
pushd "%PROJECT_DIR%"
python manage.py migrate
if errorlevel 1 (popd & exit /b 1)
echo Starting %CHOICE% at http://127.0.0.1:8000/
python manage.py runserver 127.0.0.1:8000
popd
endlocal
