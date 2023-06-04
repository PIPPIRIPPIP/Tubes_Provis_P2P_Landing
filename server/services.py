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


# getter
async def get_peminjam_by_email(email: str, db: Session) -> _models.Peminjam:
    return db.query(_models.Peminjam).filter(_models.Peminjam.email == email).first()

async def get_peminjam_via_token(token: str, db: Session) -> _models.Peminjam:
    try:
        _payload = jwt_decode(token, _JWT_SECRET, algorithms=["HS256"])
        _peminjam = db.query(_models.Peminjam).get(_payload["id"])
    except:
        raise HTTPException(status_code=401, detail="Problem with given token")

    return _peminjam

# Function to get riwayat_transaksi by peminjam id
def get_riwayat_transaksi(peminjam_id: int, db: Session) -> List[_models.RiwayatTransaksi]:
    riwayat_transaksi = db.query(_models.RiwayatTransaksi).filter(_models.RiwayatTransaksi.peminjam_id == peminjam_id).all()
    return riwayat_transaksi

# Function to get notifikasi by peminjam id
def get_notifikasi(peminjam_id: int, db: Session) -> List[_models.Notifikasi]:
    notifikasi = db.query(_models.Notifikasi).filter(_models.Notifikasi.peminjam_id == peminjam_id).all()
    return notifikasi

# Function to get pinjaman by peminjam id
def get_pinjaman(peminjam_id: int, db: Session) -> List[_models.Pinjaman]:
    pinjaman = db.query(_models.Pinjaman).filter(_models.Pinjaman.peminjam_id == peminjam_id).all()
    return pinjaman

# Function to get riwayat_pinjaman by peminjam id
def get_riwayat_pinjaman(peminjam_id: int, db: Session) -> List[_models.RiwayatPinjaman]:
    riwayat_pinjaman = db.query(_models.RiwayatPinjaman).filter(_models.RiwayatPinjaman.peminjam_id == peminjam_id).all()
    return riwayat_pinjaman


async def get_pendana_by_email(email: str, db: Session) -> _models.Pendana:
    return db.query(_models.Pendana).filter(_models.Pendana.email == email).first()

async def get_pendana_via_token(token: str, db: Session) -> _models.Pendana:
    try:
        _payload = jwt_decode(token, _JWT_SECRET, algorithms=["HS256"])
        _pendana = db.query(_models.Pendana).get(_payload["id"])
    except:
        raise HTTPException(status_code=401, detail="Problem with given token")

    return _pendana

# Function to get riwayat_transaksi by pendana id
def get_riwayat_transaksi_pendana(pendana_id: int, db: Session) -> List[_models.RiwayatTransaksiPendana]:
    riwayat_transaksi = db.query(_models.RiwayatTransaksiPendana).filter(_models.RiwayatTransaksiPendana.pendana_id == pendana_id).all()
    return riwayat_transaksi

# Function to get notifikasi by pendana id
def get_notifikasi_pendana(pendana_id: int, db: Session) -> List[_models.NotifikasiPendana]:
    notifikasi = db.query(_models.NotifikasiPendana).filter(_models.NotifikasiPendana.pendana_id == pendana_id).all()
    return notifikasi

# Function to get investasi by pendana id
def get_investasi(pendana_id: int, db: Session) -> List[_models.Investasi]:
    investasi = db.query(_models.Investasi).filter(_models.Investasi.pendana_id == pendana_id).all()
    return investasi

# Function to get riwayat_investasi by pendana id
def get_riwayat_investasi(pendana_id: int, db: Session) -> List[_models.RiwayatInvestasi]:
    riwayat_investasi = db.query(_models.RiwayatInvestasi).filter(_models.RiwayatInvestasi.pendana_id == pendana_id).all()
    return riwayat_investasi

# setter
async def create_peminjam(datas: _schemas.SignUpPeminjam, db: Session) -> _models.Peminjam:
    try:
        validated = validate_email(email=datas.email)
        email = validated.email
    except EmailNotValidError:
        raise HTTPException(status_code=404, detail="Please enter a valid email")

    _hashed_password = bcrypt.hash(datas.password)
    _model_peminjam = _models.Peminjam(
        email=email, 
        password=_hashed_password,
        nama=datas.nama, 
        nik=datas.nik,
        nomor_ponsel=datas.nomor_ponsel,
        alamat=datas.alamat,
        saldo=datas.saldo,
        grade=datas.grade,
        jenis_usaha=datas.jenis_usaha,
        provinsi_usaha=datas.provinsi_usaha,
        kota_usaha=datas.kota_usaha,
        pendapatan=datas.pendapatan)

    db.add(_model_peminjam)
    db.commit()
    db.refresh(_model_peminjam)
    return _model_peminjam

async def create_pendana(datas: _schemas.SignUpPendana, db: Session) -> _models.Pendana:
    try:
        validated = validate_email(email=datas.email)
        email = validated.email
    except EmailNotValidError:
        raise HTTPException(status_code=404, detail="Please enter a valid email")

    _hashed_password = bcrypt.hash(datas.password)
    _model_pendana = _models.Pendana(
        email=email, 
        password=_hashed_password,
        nama=datas.nama, 
        nik=datas.nik,
        nomor_ponsel=datas.nomor_ponsel,
        saldo=datas.saldo)

    db.add(_model_pendana)
    db.commit()
    db.refresh(_model_pendana)
    return _model_pendana

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
