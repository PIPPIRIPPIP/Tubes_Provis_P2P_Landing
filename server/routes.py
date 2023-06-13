from fastapi import APIRouter, Depends, HTTPException
from fastapi.security import OAuth2PasswordBearer
from sqlalchemy.orm import Session

import database as _db
import schemas as _schemas
import services as _services
import models as _models

# Auth Pass
oauth2schema = OAuth2PasswordBearer("/email-password-signin")

# Router
router = APIRouter() # peminjam
router_peminjam = APIRouter()
router_pendana = APIRouter()

# Create session
def get_db():
    db = _db.SessionLocal()
    try:
        yield db
    finally:
        db.close()

# USER
async def get_user_return(_user: _models.User, _token, db):
    
    _transaksi_pembayaran = await _services.get_transaksi_pembayaran(user_id=_user.id, db=db)
    _notifikasi = await _services.get_notifikasi(user_id=_user.id, db=db)
    
    return _schemas.ReturnUser(
        id=_user.id,
        email=_user.email,
        password=_user.password,
        token=_token,
        tanggal_dibuat=_user.tanggal_dibuat,
        nama=_user.nama,
        nomor_ponsel=_user.nomor_ponsel,
        saldo=_user.saldo,
        foto=_user.foto,
        
        transaksi_pembayaran=_transaksi_pembayaran,
        notifikasi=_notifikasi,
    )

# PEMINJAM
# get data with schema peminjam
async def get_peminjam_return(_user: _models.User, _peminjam: _models.Peminjam, _token, db):
    
    _transaksi_pembayaran = await _services.get_transaksi_pembayaran(user_id=_user.id, db=db)
    _notifikasi = await _services.get_notifikasi(user_id=_user.id, db=db)
    
    _pinjaman = await _services.get_pinjaman(peminjam_id=_peminjam.id, db=db)
    _pembayaran = await _services.get_pembayaran(peminjam_id=_peminjam.id, db=db)
    
    return _schemas.Peminjam(
        id=_user.id,
        email=_user.email,
        password=_user.password,
        token=_token,
        tanggal_dibuat=_user.tanggal_dibuat,
        nama=_user.nama,
        nomor_ponsel=_user.nomor_ponsel,
        saldo=_user.saldo,
        foto=_user.foto,
        
        transaksi_pembayaran=_transaksi_pembayaran,
        notifikasi=_notifikasi,
        
        peminjam_id=_peminjam.id,
        jenis=_peminjam.jenis,
        nik=_peminjam.nik,
        alamat=_peminjam.alamat,
        grade=_peminjam.grade,
        jenis_usaha=_peminjam.jenis_usaha,
        provinsi_usaha=_peminjam.provinsi_usaha,
        kota_usaha=_peminjam.kota_usaha,
        pendapatan=_peminjam.pendapatan,

        pinjaman=_pinjaman,
        pembayaran=_pembayaran
    )

# signup
@router_peminjam.post("/signup")
async def signUpPeminjam(datas: _schemas.SignUpPeminjam, db: Session = Depends(get_db)):
    # check di database
    _existed_user = await _services.get_user_by_email(datas.email, db)
    if _existed_user:
        raise HTTPException(status_code=400, detail="User with this email already existed")

    # create db user dengan tokennya
    _user = await _services.create_user(datas=_schemas.SignUpUser(
        email=datas.email,
        password=datas.password,
        nama=datas.nama,
        nomor_ponsel=datas.nomor_ponsel
        ), db=db)
    
    datas.user_id = _user.id
    
    _peminjam = await _services.create_peminjam(datas=datas, db=db)
    _token = await _services.genereate_token_user(user=_user)

    return get_peminjam_return(_user, _peminjam, _token, db)

# signin
@router_peminjam.post("/signin")
async def signInPeminjam(datas: _schemas.SignInUser, db: Session = Depends(get_db)):
    
    # check in database
    _existed_user = await _services.get_user_by_email(datas.email, db)
    if not _existed_user:
        raise HTTPException(status_code=404, detail="user with this email is not found")

    # verify password
    if not _existed_user.verify_password(datas.password):
        raise HTTPException(status_code=401, detail="Password not matched")
    
    # token and peminjam
    _token = await _services.genereate_token_user(user=_existed_user)
    _peminjam = await _services.get_peminjam_by_user_id(user_id=_existed_user.id, db=db)
    
    return get_peminjam_return(_existed_user, _peminjam, _token, db)

# get with auth
@router_peminjam.get("/me")
async def getUserPeminjamViaToken(token: str = Depends(oauth2schema), db: Session = Depends(get_db)):
    # get user and peminjam
    _user_model = await _services.get_user_via_token(token=token, db=db)
    _peminjam = await _services.get_peminjam_by_user_id(user_id=_user_model.id, db=db)
    
    return get_peminjam_return(_user_model, _peminjam, token, db)
    
# PENDANA
# get data with schema pendana
async def get_pendana_return(_user: _models.User, _pendana: _models.Pendana, _token, db):
    
    _transaksi_pembayaran = await _services.get_transaksi_pembayaran(user_id=_user.id, db=db)
    _notifikasi = await _services.get_notifikasi(user_id=_user.id, db=db)
    
    _investasi = await _services.get_investasi(pendana_id=_pendana.id, db=db)
    
    return _schemas.Pendana(
        id=_user.id,
        email=_user.email,
        password=_user.password,
        token=_token,
        tanggal_dibuat=_user.tanggal_dibuat,
        nama=_user.nama,
        nomor_ponsel=_user.nomor_ponsel,
        saldo=_user.saldo,
        foto=_user.foto,
        
        transaksi_pembayaran=_transaksi_pembayaran,
        notifikasi=_notifikasi,

        pendana_id=_pendana.id,

        investasi=_investasi
    )

# signup
@router_pendana.post("/signup")
async def signUpPendana(datas: _schemas.SignUpPendana, db: Session = Depends(get_db)):
    # check di database
    _existed_user = await _services.get_user_by_email(datas.email, db)
    if _existed_user:
        raise HTTPException(status_code=400, detail="User with this email already existed")

    # create db user dengan tokennya
    _user = await _services.create_user(datas=_schemas.SignUpUser(
        email=datas.email,
        password=datas.password,
        nama=datas.nama,
        nomor_ponsel=datas.nomor_ponsel
        ), db=db)

    datas.user_id = _user.id

    _pendana = await _services.create_pendana(datas=datas, db=db)
    _token = await _services.genereate_token_user(user=_user)

    return get_pendana_return(_user, _pendana, _token, db)

# signin
@router_pendana.post("/signin")
async def signInPendana(datas: _schemas.SignInUser, db: Session = Depends(get_db)):
    # check in database
    _existed_user = await _services.get_user_by_email(datas.email, db)
    if not _existed_user:
        raise HTTPException(status_code=404, detail="user with this email is not found")

    # verify password
    if not _existed_user.verify_password(datas.password):
        raise HTTPException(status_code=401, detail="Password not matched")
    
    # token and peminjam
    _token = await _services.genereate_token_user(user=_existed_user)
    _pendana = await _services.get_pendana_by_user_id(user_id=_existed_user.id, db=db)

    return get_pendana_return(_existed_user, _pendana, _token, db)

# get with auth
@router_pendana.get("/me")
async def getPendanaViaToken(token: str = Depends(oauth2schema), db: Session = Depends(get_db)):
    # get user and peminjam
    _user_model = await _services.get_user_via_token(token=token, db=db)
    _pendana = await _services.get_pendana_by_user_id(user_id=_user_model.id, db=db)
    
    return get_pendana_return(_user_model, _pendana, token, db)


# ===================
# temp
'''
# get data with schema peminjam
async def get_peminjam_return(_user: _models.User, _peminjam: _models.Peminjam, _token, db):
    
    _transaksi_pembayaran = await _services.get_transaksi_pembayaran(user_id=_user.id, db=db)
    _notifikasi = await _services.get_notifikasi(user_id=_user.id, db=db)
    
    _pinjaman = await _services.get_pinjaman(peminjam_id=_peminjam.id, db=db)
    _pembayaran = await _services.get_pembayaran(peminjam_id=_peminjam.id, db=db)
    
    return _schemas.Peminjam(
        id=_user.id,
        email=_user.email,
        password=_user.password,
        token=_token,
        tanggal_dibuat=_user.tanggal_dibuat,
        nama=_user.nama,
        nomor_ponsel=_user.nomor_ponsel,
        saldo=_user.saldo,
        foto=_user.foto,
        
        transaksi_pembayaran=_transaksi_pembayaran,
        notifikasi=_notifikasi,
        
        peminjam_id=_peminjam.id,
        jenis=_peminjam.jenis,
        nik=_peminjam.nik,
        alamat=_peminjam.alamat,
        grade=_peminjam.grade,
        jenis_usaha=_peminjam.jenis_usaha,
        provinsi_usaha=_peminjam.provinsi_usaha,
        kota_usaha=_peminjam.kota_usaha,
        pendapatan=_peminjam.pendapatan,

        pinjaman=_pinjaman,
        pembayaran=_pembayaran
    )

# get data with schema pendana
async def get_pendana_return(_user: _models.User, _pendana: _models.Pendana, _token, db):
    
    _transaksi_pembayaran = await _services.get_transaksi_pembayaran(user_id=_user.id, db=db)
    _notifikasi = await _services.get_notifikasi(user_id=_user.id, db=db)
    
    _investasi = await _services.get_investasi(pendana_id=_pendana.id, db=db)
    
    return _schemas.Pendana(
        id=_user.id,
        email=_user.email,
        password=_user.password,
        token=_token,
        tanggal_dibuat=_user.tanggal_dibuat,
        nama=_user.nama,
        nomor_ponsel=_user.nomor_ponsel,
        saldo=_user.saldo,
        foto=_user.foto,
        
        transaksi_pembayaran=_transaksi_pembayaran,
        notifikasi=_notifikasi,

        pendana_id=_pendana.id,

        investasi=_investasi
    )
'''