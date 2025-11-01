# Team 5

- Ayesha Ali Firdaus (2101990)
- Azzahra Alika Putri Yudha (2105899)
- Dicki Fathurohman (2103842)
- Muhammad Fadillah Nursyawal (2107135)

## Project Description
This project involves the development of a mobile-based Peer-to-Peer (P2P) Lending application designed to support secure lending transactions between users. The UI/UX design and interactive prototype were created using Figma to deliver a user-friendly and visually consistent interface. The mobile application is developed using Flutter for a seamless cross-platform experience, while the backend is built using FastAPI to ensure high performance and scalability.

## Backend Setup - FastAPI with Virtual Environment (Python)
### Create & Activate Virtual Environment
- Open the project in Visual Studio Code
- Create a virtual environment on terminal (recommend using cmd):
```
python -m venv venv_name 
```
- To activate the virtual environment press CTRL+SHIFT+P, select Python: Select Interpreter, then choose the virtual environment that already made. Or you can activate the virtual environment using terminal at project directory:
```
.\venv_name\Scripts\activate
```
### Install Required Dependencies
- Install backend dependencies for authentication, API management,and database operations [Requirements](server/guide/requirements.txt) using pip on terminal:
```
pip install fastapi uvicorn SQLAlchemy pydantic
pip install email-validator passlib PyJWT bcrypt
```
### Project Structure Setup
- Create a server directory
- Go to the directory and add main application files (e.g., main.py)
### Run FastAPI Server
- Run the backend server for development with auto-reload
```
uvicorn main:app --reload
```
- or with Python execution
```
py main.py
```
