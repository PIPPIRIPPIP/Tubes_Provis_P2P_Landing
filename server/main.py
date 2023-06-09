from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
import uvicorn

from routes import router_peminjam as _peminjam_routes, router_pendana as _pendana_routes
from routes import router as _routes
import database as _db
import models as _models

# Create 
app = FastAPI()

# For Handle every possibilites
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Create Sqlite DB and table, if not existed
_models.Base.metadata.create_all(bind=_db.engine)

# test
@app.get("/")
def testRoute():
    return {"Test route": "Hello world!"}

# Include router from routes.py
app.include_router(_routes, prefix='/user')
app.include_router(_pendana_routes, prefix='/pendana')
app.include_router(_peminjam_routes, prefix='/peminjam')

# Run with py
if '__main__' == __name__:
    uvicorn.run('main:app', host='127.0.0.1', port=8000, reload=True)