# Kelompok 5

- Ayesha Ali Firdaus (2101990)
- Azzahra Alika Putri Yudha (2105899)
- Dicki Fathurohman (2103842)
- Muhammad Fadillah Nursyawal (2107135)

## Deskripsi Projek
Membuat aplikasi P2P Landing berbasis mobile

## Membuat fast api dengan virtualenv (python)
- buka vscode bisa buka folder projectnya langsung
- buka terminal [CTRL ~] (saranin pake cmd) dan masuk ke direktori apa aja, untuk nyimpen folder 'venv' nya. Kalau bingung satu level aja sama direktori project.
- jalankan: (nama_env optional)
```
python -m venv nama_venv
```
```shell
D:\Fadhil\Computer Science\semester-4\provis\code>python -m venv venv-fastapi
```
- terus gunain venv nya dengan [CTRL SHIFT P] pilih Python: Select Interpreter, pilih venv yang udah dibuat. atau bisa cara kedua pake command di terminal: (di direktori .)
```
.\nama_venv\Scripts\activate
```
```shell
D:\Fadhil\Computer Science\semester-4\provis\code>.\venv-fastapi\Scripts\activate
```
- instal package [Requirements](server/guide/requirements.txt) pake pip di terminal:
```
pip install fastapi uvicorn SQLAlchemy pydantic
pip install email-validator passlib PyJWT bcrypt
```
- bikin direktori server buat code python fastapi
- masuk kesitu terus kalo udah ada file main.py, dll yang udah dibikin
- jalanin di terminal:
```
py main.py
```
default kalo bikin main.py sendiri
```
uvicorn main:app --reload
```
- ()
```shell
python -m venv venv

.\venv\Scripts\activate

uvicorn main:app --reload

venv\Scripts\deactivate.bat
```
