#!/usr/bin/env bash
set -e
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CHOICE="${1:-}"
if [ -z "$CHOICE" ]; then
  echo "X2 Django Lab Projects"
  echo "P2 - Environment setup | P3 - Date/time | P4 - Time offsets"
  echo "P5 - Fruit/student lists | P6 - Portfolio | P7 - Student-course registration"
  read -rp "Select experiment (P2-P7): " CHOICE
fi
CHOICE="$(printf '%s' "$CHOICE" | tr '[:lower:]' '[:upper:]')"
case "$CHOICE" in
  P2)
    if [ ! -d "$ROOT_DIR/.venv" ]; then python3 -m venv "$ROOT_DIR/.venv"; fi
    source "$ROOT_DIR/.venv/bin/activate"
    python -m pip install --disable-pip-version-check -r "$ROOT_DIR/requirements.txt"
    echo "P2 environment setup complete. Virtual environment: $ROOT_DIR/.venv"
    echo "No P2 Django application source/manage.py is present in the repository."
    exit 0
    ;;
  P3) PROJECT_DIR="ps/ p3currentdateandtime/fsd pro3/pro3project" ;;
  P4) PROJECT_DIR="ps/p4dateandtime4hrsplusand4hrsbeforeoffset/pro4/pro4project" ;;
  P5) PROJECT_DIR="ps/p5/pro5/pro5project" ;;
  P6) PROJECT_DIR="pro6" ;;
  P7) PROJECT_DIR="ps/p7/pro7" ;;
  *) echo "Invalid selection. Choose P2, P3, P4, P5, P6 or P7."; exit 1 ;;
esac
if [ ! -f "$ROOT_DIR/$PROJECT_DIR/manage.py" ]; then echo "manage.py not found: $PROJECT_DIR"; exit 1; fi
if [ ! -d "$ROOT_DIR/.venv" ]; then python3 -m venv "$ROOT_DIR/.venv"; fi
source "$ROOT_DIR/.venv/bin/activate"
python -m pip install --disable-pip-version-check -r "$ROOT_DIR/requirements.txt"
cd "$ROOT_DIR/$PROJECT_DIR"
python manage.py migrate
echo "Starting $CHOICE at http://127.0.0.1:8000/"
python manage.py runserver 127.0.0.1:8000
