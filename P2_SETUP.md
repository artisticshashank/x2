# P2 — Python Environment Setup

The current repository contains the P2 environment directory but no P2 application source files. To demonstrate environment creation from the repository root:

Windows:
```bat
py -m venv .venv
.venv\Scripts\activate
python -m pip install -r requirements.txt
```

Ubuntu/Linux:
```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
```

This demonstrates environment creation and activation. It is not a Django application launch. The P3–P7 launcher reuses this root environment.
