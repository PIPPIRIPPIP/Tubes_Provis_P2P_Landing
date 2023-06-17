from fastapi import HTTPException, Depends
from sqlalchemy.orm import Session
from email_validator import validate_email, EmailNotValidError
from passlib.hash import bcrypt
from jwt import encode as jwt_encode
from jwt import decode as jwt_decode
from typing import List
from datetime import datetime

import models as _models
import schemas as _schemas

# NOTE : This is supposed to be a secret key, using to encrypt from JWT
_JWT_SECRET = "ThisIsSecretKey"

# for create code pinjaman
_BASE_CODE = "P23A0"

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
        saldo=0,
        foto="",
        jenis_user=datas.jenis_user
        )

    db.add(_model_user)
    db.commit()
    db.refresh(_model_user)
    return _model_user

# Read
async def get_user_by_email(email: str, db: Session) -> _models.User:
    return db.query(_models.User).filter(_models.User.email == email).first()

async def get_user_by_id(id: str, db: Session) -> _models.User:
    return db.query(_models.User).filter(_models.User.id == id).first()

async def get_user_by_number_phone(number_phone: str, db: Session) -> _models.User:
    return db.query(_models.User).filter(_models.User.nomor_ponsel == number_phone).first()

async def get_user_via_token(token: str, db: Session) -> _models.User:
    try:
        _payload = jwt_decode(token, _JWT_SECRET, algorithms=["HS256"])
        _user = db.query(_models.User).get(_payload["id"])
    except:
        raise HTTPException(status_code=401, detail="Problem with given token")

    return _user

# Update
def update_user_balance(user_id: int, jumlah: int, db: Session):
    user = db.query(_models.User).filter(_models.User.id == user_id).first()
    user.saldo += jumlah
    
    if user.saldo < 0:
        raise HTTPException(status_code=400, detail="Saldo tidak mencukupi")
    
    db.commit()
    db.refresh(user)

async def update_user(datas: _schemas.UpdateUser, _user: _models.User, db: Session) -> _models.User:
    # Update the user data
    _user.email = datas.email
    _user.password = datas.password  # You may want to hash the password here
    _user.nama = datas.nama
    _user.nomor_ponsel = datas.nomor_ponsel
    _user.foto = datas.foto

    # Commit the changes to the database
    db.commit()
    # Refresh the user object
    db.refresh(_user)

    return _user

# Delete

# Token
async def genereate_token_user(user: _models.User) -> str:
    _schema_user = _schemas.User.from_orm(user)
    _user_dict = _schema_user.dict(include={'id', 'email'})

    # NOTE : Combine [email] & [id] with [_JWT_SECRET] to generate JWT key
    _token = jwt_encode(_user_dict, _JWT_SECRET)
    return _token

# NOTIFIKASI
# get
async def add_notifikasi(datas: _schemas.AddNotifikasi, user_id: int, db: Session) -> List[_models.Notifikasi]:
    # make model
    _notifikasi = _models.Notifikasi(
        user_id=user_id,
        jenis=datas.jenis,
        judul=datas.judul,
        pesan=datas.pesan
    )
    
    db.add(_notifikasi)
    db.commit()
    db.refresh(_notifikasi)
    return _notifikasi

# set
async def get_notifikasi(user_id: int, db: Session) -> List[_models.Notifikasi]:
    notifikasi = db.query(_models.Notifikasi).filter(_models.Notifikasi.user_id == user_id).all()
    return notifikasi

# delete
async def delete_notifikasi(notifikasi_id: int, db: Session):
    _notifikasi = db.query(_models.Notifikasi).filter(_models.Notifikasi.id == notifikasi_id).first()
    if not _notifikasi:
        return None

    db.delete(_notifikasi)
    db.commit()

    return _notifikasi


# TRANSAKSI PEMBAYARAN
# get
async def add_transaksi_pembayaran(datas: _schemas.AddTransaksiPembayaran, user_id: int, db: Session) -> _models.TransaksiPembayaran:
    # check saldo
    update_user_balance(user_id=user_id, jumlah=datas.jumlah, db=db)
    
    # make model
    _transaksi_pembayaran = _models.TransaksiPembayaran(
        user_id=user_id,
        jenis=datas.jenis,
        metode_pembayaran=datas.metode_pembayaran,
        jumlah=datas.jumlah,
    )
    
    db.add(_transaksi_pembayaran)
    db.commit()
    db.refresh(_transaksi_pembayaran)
    
    return _transaksi_pembayaran

# set
async def get_transaksi_pembayaran(user_id: int, db: Session) -> List[_models.TransaksiPembayaran]:
    transaksi_pembayaran = db.query(_models.TransaksiPembayaran).filter(_models.TransaksiPembayaran.user_id == user_id).all()
    return transaksi_pembayaran

# ===========================================================================================
# PENDANA
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
async def get_pendana_by_user_id(user_id: int, db: Session) -> _models.Pendana:
    return db.query(_models.Pendana).filter(_models.Pendana.user_id == user_id).first()

async def get_pendana_by_id(id: int, db: Session) -> _models.Pendana:
    return db.query(_models.Pendana).filter(_models.Pendana.id == id).first()

# Update
# Delete

# INVESTASI
# function
def calculate_investment_profit(pinjaman: _models.Pinjaman, jumlah_investasi: int) -> float:
    bunga = pinjaman.bunga
    
    keuntungan = jumlah_investasi * bunga / 100
    return keuntungan

# update
def update_investasi_status(pinjaman_id: int, db: Session):
    _investasi_list = db.query(_models.Investasi).filter(_models.Investasi.pinjaman_id == pinjaman_id).all()
    
    for investasi in _investasi_list:
        investasi.status = "selesai"
        
        # tambahkan keuntungan investasi ke saldo user
        _pendana = db.query(_models.Pendana).filter(_models.Pendana.id == investasi.pendana_id).first()
        _user = db.query(_models.User).filter(_models.User.id == _pendana.user_id).first()
        _user.saldo += investasi.keuntungan + investasi.jumlah_investasi
        
    db.commit()

# set
async def add_investasi(datas: _schemas.AddInvestasi, _pendana: _models.Pendana, db: Session) -> List[_models.Investasi]:
    # check
    _pinjaman = db.query(_models.Pinjaman).filter(_models.Pinjaman.id == datas.pinjaman_id).first()
    if not _pinjaman:
        pass
    
    _sisa_didanai = _pinjaman.jumlah_pinjaman - _pinjaman.jumlah_didanai
    if _sisa_didanai < datas.jumlah_investasi:
        datas.jumlah_investasi = _sisa_didanai
        
    # update saldo pendana
    update_user_balance(_pendana.user_id, -datas.jumlah_investasi, db)
    
    _keuntungan = calculate_investment_profit(_pinjaman, datas.jumlah_investasi)
    
    # Perbarui jumlah_didanai dan saldo pada user
    update_pinjaman_jumlah_didanai(_pinjaman, datas.jumlah_investasi, db)
    
    # make model
    _investasi = _models.Investasi(
        pendana_id=_pendana.id,
        pinjaman_id=datas.pinjaman_id,
        jumlah_investasi=datas.jumlah_investasi,
        keuntungan=_keuntungan,
        status="aktif",
    )
    
    db.add(_investasi)
    db.commit()
    db.refresh(_investasi)
    
    return _investasi

# get
async def get_investasi(user_id: int, db: Session) -> List[_models.Investasi]:
    investasi = db.query(_models.Investasi).filter(_models.Investasi.user_id == user_id).all()
    return investasi

async def get_investasi_by_pendana_id(pendana_id: int, db: Session) -> List[_models.Investasi]:
    investasi = db.query(_models.Investasi).filter(_models.Investasi.pendana_id == pendana_id).all()
    return investasi

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
        grade=100,
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
async def get_peminjam_by_user_id(user_id: int, db: Session) -> _models.Peminjam:
    return db.query(_models.Peminjam).filter(_models.Peminjam.user_id == user_id).first()

async def get_peminjam_by_id(id: int, db: Session) -> _models.Peminjam:
    return db.query(_models.Peminjam).filter(_models.Peminjam.id == id).first()

# Update
# Delete

# PINJAMAN
# function
# menghitung angsuran
def calculate_angsuran(pinjaman: _schemas.Pinjaman) -> int:
    jumlah_pinjaman = pinjaman.jumlah_pinjaman
    tenor = pinjaman.tenor
    bunga = pinjaman.bunga
    
    # Perhitungan jumlah angsuran
    angsuran = (jumlah_pinjaman + (jumlah_pinjaman * bunga / 100)) / tenor
    return int(angsuran)

# generate kode pinjaman
def generate_next_kode(existing_kodes: List[str], base_code: str) -> str:
    prefix = base_code[:-1]  # Mengambil prefix dari base_code
    max_number = 0
    
    # Mencari angka maksimum dari kode yang ada
    for kode in existing_kodes:
        if kode.startswith(prefix):
            number = int(kode[len(prefix):])
            max_number = max(max_number, number)
    
    next_number = max_number + 1
    next_kode = f"{prefix}{next_number:03d}"
    return next_kode

# get semua kode dari pinjaman
def get_existing_kodes(db: Session) -> List[str]:
    existing_kodes = []
    
    pinjaman_list = db.query(_models.Pinjaman).all()
    
    for pinjaman in pinjaman_list:
        existing_kodes.append(pinjaman.kode)
    
    return existing_kodes

# update
def update_pinjaman_jumlah_didanai(_pinjaman: _models.Pinjaman, jumlah_investasi: int, db: Session):
    _pinjaman.jumlah_didanai += jumlah_investasi
    
    if _pinjaman.jumlah_didanai >= _pinjaman.jumlah_pinjaman:
        _pinjaman.status = "aktif"
        
        # tambahkan jumlah didanai ke saldo user
        _peminjam = db.query(_models.Peminjam).filter(_models.Peminjam.id == _pinjaman.peminjam_id).first()
        _user = db.query(_models.User).filter(_models.User.id == _peminjam.user_id).first()
        _user.saldo += _pinjaman.jumlah_didanai
    
    db.commit()
    
def update_pinjaman_pembayaran(_pinjaman: _models.Pinjaman, jumlah_pembayaran: int, db: Session):
    _pinjaman.jumlah_pembayaran += jumlah_pembayaran
    
    if _pinjaman.jumlah_pembayaran >= _pinjaman.jumlah_angsuran * _pinjaman.tenor:
        _pinjaman.status = "lunas"
        _pinjaman.tanggal_selesai = datetime.now()

        update_investasi_status(_pinjaman.id, db)
    
    db.commit()

# set
async def set_pinjaman(datas: _schemas.AddPinjaman, peminjam_id: int, db: Session) -> List[_models.Pinjaman]:
    # create atrb
    _kode = generate_next_kode(get_existing_kodes(db=db), _BASE_CODE)
    _angsuran = calculate_angsuran(datas)
    
    # make model
    _pinjaman = _models.Pinjaman(
        peminjam_id=peminjam_id,
        kode=_kode,
        jumlah_pinjaman=datas.jumlah_pinjaman,
        tenor=datas.tenor,
        bunga=datas.bunga,
        jenis_angsuran=datas.jenis_angsuran,
        jumlah_angsuran=_angsuran,
        tujuan_pinjaman=datas.tujuan_pinjaman,
        jumlah_didanai=0,
        jumlah_pembayaran=0,
        tanggal_selesai="",
        status="proses",
    )
    
    db.add(_pinjaman)
    db.commit()
    db.refresh(_pinjaman)
    return _pinjaman

# get
async def get_pinjaman_by_peminjam_id(peminjam_id: int, db: Session) -> List[_models.Pinjaman]:
    pinjaman = db.query(_models.Pinjaman).filter(_models.Pinjaman.peminjam_id == peminjam_id).all()
    return pinjaman

async def get_pinjaman_by_id(id: int, db: Session) -> List[_models.Pinjaman]:
    pinjaman = db.query(_models.Pinjaman).filter(_models.Pinjaman.id == id).first()
    return pinjaman

# PEMBAYARAN
# update

# set
async def add_pembayaran(datas: _schemas.AddPembayaran, _peminjam: _models.Peminjam, db: Session) -> List[_models.Pembayaran]:
    # check
    _pinjaman = db.query(_models.Pinjaman).filter(_models.Pinjaman.id == datas.pinjaman_id).first()
    if not _pinjaman:
        pass
    
    _sisa_pembayaran = (_pinjaman.jumlah_angsuran * _pinjaman.tenor) - _pinjaman.jumlah_pembayaran
    if _sisa_pembayaran < datas.jumlah_pembayaran:
        datas.jumlah_pembayaran = _sisa_pembayaran
        
    # update saldo peminjam
    update_user_balance(_peminjam.user_id, -datas.jumlah_pembayaran, db)
    
    # Perbarui jumlah_pembayaran pada objek Pinjaman yang sesuai
    update_pinjaman_pembayaran(_pinjaman, datas.jumlah_pembayaran, db)
    
    # make model
    _pembayaran = _models.Pembayaran(
        peminjam_id=_peminjam.id,
        pinjaman_id=datas.pinjaman_id,
        jumlah_pembayaran=datas.jumlah_pembayaran,
    )
    
    db.add(_pembayaran)
    db.commit()
    db.refresh(_pembayaran)
    
    return _pembayaran

# get
async def get_pembayaran(user_id: int, db: Session) -> List[_models.Pembayaran]:
    pembayaran = db.query(_models.Pembayaran).filter(_models.Pembayaran.user_id == user_id).all()
    return pembayaran