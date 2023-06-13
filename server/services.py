from fastapi import HTTPException, Depends
from sqlalchemy.orm import Session
from email_validator import validate_email, EmailNotValidError
from passlib.hash import bcrypt
from jwt import encode as jwt_encode
from jwt import decode as jwt_decode
from typing import List

import models as _models
import schemas as _schemas


# NOTE : This is supposed to be a secret key, using to encrypt from JWT
_JWT_SECRET = "ThisIsSecretKey"


# USER
# Create
async def create_user(datas: _schemas.SignUpUser, db: Session) -> _models.User:
    # validasi email sesuai dengan penulisan
    try:
        validated = validate_email(email=datas.email)
        email = validated.email
    except EmailNotValidError:
        raise HTTPException(status_code=404, detail="Please enter a valid email")

    # hash password
    _hashed_password = bcrypt.hash(datas.password)
    _model_user= _models.User(
        email=email, 
        password=_hashed_password,
        nama=datas.nama, 
        nomor_ponsel=datas.nomor_ponsel,
        )

    db.add(_model_user)
    db.commit()
    db.refresh(_model_user)
    return _model_user

# Read
async def get_user_by_email(email: str, db: Session) -> _models.User:
    return db.query(_models.User).filter(_models.User.email == email).first()

async def get_user_via_token(token: str, db: Session) -> _models.User:
    try:
        _payload = jwt_decode(token, _JWT_SECRET, algorithms=["HS256"])
        _user = db.query(_models.User).get(_payload["id"])
    except:
        raise HTTPException(status_code=401, detail="Problem with given token")

    return _user

async def get_notifikasi(user_id: int, db: Session) -> List[_models.Notifikasi]:
    notifikasi = db.query(_models.Notifikasi).filter(_models.Notifikasi.user_id == user_id).all()
    return notifikasi

async def get_transaksi_pembayaran(user_id: int, db: Session) -> List[_models.TransaksiPembayaran]:
    transaksi_pembayaran = db.query(_models.TransaksiPembayaran).filter(_models.TransaksiPembayaran.user_id == user_id).all()
    return transaksi_pembayaran

# Update

# Delete

# Token
async def genereate_token_user(user: _models.User) -> str:
    _schema_user = _schemas.UserConfig.from_orm(user)
    _user_dict = _schema_user.dict(include={'id', 'email'})

    # NOTE : Combine [email] & [id] with [_JWT_SECRET] to generate JWT key
    _token = jwt_encode(_user_dict, _JWT_SECRET)
    return _token

# ===========================================================================================
# PEMINJAM
# Create
async def create_peminjam(datas: _schemas.SignUpPeminjam, db: Session) -> _models.Peminjam:
    # set model peminjam
    _model_peminjam = _models.Peminjam(
        user_id=datas.user_id,
        jenis=datas.jenis,
        nik=datas.nik,
        alamat=datas.alamat,
        grade=datas.grade,
        jenis_usaha=datas.jenis_usaha,
        provinsi_usaha=datas.provinsi_usaha,
        kota_usaha=datas.kota_usaha,
        pendapatan=datas.pendapatan
        )

    db.add(_model_peminjam)
    db.commit()
    db.refresh(_model_peminjam)
    return _model_peminjam

# Read
async def get_peminjam_by_user_id(user_id: str, db: Session) -> _models.Peminjam:
    return db.query(_models.Peminjam).filter(_models.Peminjam.user_id == user_id).first()

async def get_pinjaman(peminjam_id: int, db: Session) -> List[_models.Pinjaman]:
    pinjaman = db.query(_models.Pinjaman).filter(_models.Pinjaman.peminjam_id == peminjam_id).all()
    return pinjaman

async def get_pembayaran(peminjam_id: int, db: Session) -> List[_models.Pembayaran]:
    pembayaran = db.query(_models.Pembayaran).filter(_models.Pembayaran.peminjam_id == peminjam_id).all()
    return pembayaran

# Update
# Delete

# ===========================================================================================
# PEMINJAM
# Create
async def create_pendana(datas: _schemas.SignUpPendana, db: Session) -> _models.Pendana:
    # set model peminjam
    _model_pendana = _models.Pendana(
        user_id=datas.user_id
        )

    db.add(_model_pendana)
    db.commit()
    db.refresh(_model_pendana)
    return _model_pendana

# Read
async def get_pendana_by_user_id(user_id: str, db: Session) -> _models.Pendana:
    return db.query(_models.Pendana).filter(_models.Pendana.user_id == user_id).first()

async def get_investasi(pendana_id: int, db: Session) -> List[_models.Investasi]:
    investasi = db.query(_models.Investasi).filter(_models.Investasi.pendana_id == pendana_id).all()
    return investasi

# Update
# Delete


# ===========================================================================================
# temp
'''

# getter
async def get_peminjam_via_token(token: str, db: Session) -> _models.Peminjam:
    try:
        _payload = jwt_decode(token, _JWT_SECRET, algorithms=["HS256"])
        _peminjam = db.query(_models.Peminjam).get(_payload["id"])
    except:
        raise HTTPException(status_code=401, detail="Problem with given token")

    return _peminjam

async def get_pendana_via_token(token: str, db: Session) -> _models.Pendana:
    try:
        _payload = jwt_decode(token, _JWT_SECRET, algorithms=["HS256"])
        _pendana = db.query(_models.Pendana).get(_payload["id"])
    except:
        raise HTTPException(status_code=401, detail="Problem with given token")

    return _pendana

# token
async def genereate_token_peminjam(peminjam: _models.Peminjam) -> str:
    _schema_peminjam = _schemas.Peminjam.from_orm(peminjam)
    _peminjam_dict = _schema_peminjam.dict(include={'id', 'email'})

    # NOTE : Combine [email] & [id] with [_JWT_SECRET] to generate JWT key
    _token = jwt_encode(_peminjam_dict, _JWT_SECRET)
    return _token

async def genereate_token_pendana(pendana: _models.Pendana) -> str:
    _schema_pendana = _schemas.Pendana.from_orm(pendana)
    _pendana_dict = _schema_pendana.dict(include={'id', 'email'})

    # NOTE : Combine [email] & [id] with [_JWT_SECRET] to generate JWT key
    _token = jwt_encode(_pendana_dict, _JWT_SECRET)
    return _token

'''