from fastapi import APIRouter, Depends, HTTPException
from fastapi.security import OAuth2PasswordBearer
import fastapi.security as _security
from sqlalchemy.orm import Session

import database as _db
import schemas as _schemas
import services as _services
import models as _models

# Auth Pass
oauth2schema = OAuth2PasswordBearer("/peminjam/token/")

# Router
router = APIRouter()
router_peminjam = APIRouter()
router_pendana = APIRouter()

# Create session
def get_db():
    db = _db.SessionLocal()
    try:
        yield db
    finally:
        db.close()
        
# ===========================================================================================
# USER
# signup
@router.post("/signup")
async def signUpUser(datas: _schemas.SignUpUser, db: Session = Depends(get_db)) -> _schemas.ReturnUser:
    # check di database
    _existed_user = await _services.get_user_by_email(datas.email, db)
    if _existed_user:
        raise HTTPException(status_code=400, detail="User with this email already existed")
    
    _existed_number_phone = await _services.get_user_by_number_phone(datas.nomor_ponsel, db)
    if _existed_number_phone:
        raise HTTPException(status_code=400, detail="User with this number phone already existed")

    # create db user dengan tokennya
    _user = await _services.create_user(datas=_schemas.SignUpUser(
        email=datas.email,
        password=datas.password,
        nama=datas.nama,
        nomor_ponsel=datas.nomor_ponsel,
        jenis_user=datas.jenis_user,
        ), db=db)

    _token = await _services.genereate_token_user(user=_user)

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
        jenis_user=_user.jenis_user
    )

# signin
@router.post("/signin")
async def signInUser(datas: _schemas.SignInUser, db: Session = Depends(get_db)) -> _schemas.ReturnUser:
    # check in database
    _user = await _services.get_user_by_email(datas.email, db)
    if _user.jenis_user == "pendana":
        pass
    else:
        pass
    
    if not _user:
        raise HTTPException(status_code=404, detail="user with this email is not found")

    # verify password
    if not _user.verify_password(datas.password):
        raise HTTPException(status_code=401, detail="Password not matched")
    
    # generate token
    _token = await _services.genereate_token_user(user=_user)

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
        jenis_user=_user.jenis_user,
        
        notifikasi=_user.notifikasi,
        transaksi_pembayaran= _user.transaksi_pembayaran
    )
    
# get with auth
@router.get("/me")
async def getUserUserViaToken(token: str = Depends(oauth2schema), db: Session = Depends(get_db)):
    # get user and user
    _user = await _services.get_user_via_token(token=token, db=db)
    
    return _schemas.ReturnUser(
        id=_user.id,
        email=_user.email,
        password=_user.password,
        token=token,
        tanggal_dibuat=_user.tanggal_dibuat,
        nama=_user.nama,
        nomor_ponsel=_user.nomor_ponsel,
        saldo=_user.saldo,
        foto=_user.foto,
        jenis_user=_user.jenis_user,
        
        notifikasi=_user.notifikasi,
        transaksi_pembayaran= _user.transaksi_pembayaran
    )

# ===========================================================================================
# NOTIFIKASI
# set notifikasi
@router.post("/setNotifikasi/{user_id}")
async def setNotifikasi(datas: _schemas.Notifikasi, user_id: int, db: Session = Depends(get_db)):
    _notifikasi = await _services.set_notifikasi(datas=datas, user_id=user_id, db=db)
    
    return {"notifikasi": _notifikasi}
    
# # get notifikasi
@router.get("/getNotifikasi/{user_id}")
async def getNotifikasi(user_id: int, db: Session = Depends(get_db)):
    _notifikasi = await _services.get_notifikasi(user_id=user_id, db=db)
    return {"notifikasi": _notifikasi}

# ===========================================================================================
# TRANSAKSI PEMBAYARAN
# set TransaksiPembayaran
@router.post("/setTransaksiPembayaran/{user_id}")
async def setTransaksiPembayaran(datas: _schemas.TransaksiPembayaran, user_id: int, db: Session = Depends(get_db)):
    _transaksi_pembayaran = await _services.set_transaksi_pembayaran(datas=datas, user_id=user_id, db=db)
    
    return {"transaksi_pembayaran": _transaksi_pembayaran}
    
# # get TransaksiPembayaran
@router.get("/getTransaksiPembayaran/{user_id}")
async def getTransaksiPembayaran(user_id: int, db: Session = Depends(get_db)):
    _transaksi_pembayaran = await _services.get_transaksi_pembayaran(user_id=user_id, db=db)
    return {"transaksi_pembayaran": _transaksi_pembayaran}

# ===========================================================================================
# PENDANA
# signup
@router_pendana.post("/signup")
async def signUpPendana(datas: _schemas.SignUpPendana, db: Session = Depends(get_db)):
    # check user
    _user = await signUpUser(datas, db)

    datas.user_id = _user.id

    # create pendana
    _pendana = await _services.create_pendana(datas=datas, db=db)

    return _schemas.ReturnPendana(
        id=_user.id,
        email=_user.email,
        password=_user.password,
        token=_user.token,
        tanggal_dibuat=_user.tanggal_dibuat,
        nama=_user.nama,
        nomor_ponsel=_user.nomor_ponsel,
        saldo=_user.saldo,
        foto=_user.foto,
        jenis_user=_user.jenis_user,
        
        notifikasi=_user.notifikasi,
        transaksi_pembayaran= _user.transaksi_pembayaran,
        
        pendana_id=_pendana.id,
        
        investasi=_pendana.investasi
    )

# signin
@router_pendana.post("/signin")
async def signInPendana(datas: _schemas.SignInUser, db: Session = Depends(get_db)):
    
    _user = await signInUser(datas=datas, db=db)
    
    _pendana = await _services.get_pendana_by_user_id(user_id=_user.id, db=db)
    if not _pendana:
        raise HTTPException(status_code=404, detail="Pendana with this email is not found")

    return _schemas.ReturnPendana(
        id=_user.id,
        email=_user.email,
        password=_user.password,
        token=_user.token,
        tanggal_dibuat=_user.tanggal_dibuat,
        nama=_user.nama,
        nomor_ponsel=_user.nomor_ponsel,
        saldo=_user.saldo,
        foto=_user.foto,
        jenis_user=_user.jenis_user,
        
        notifikasi=_user.notifikasi,
        transaksi_pembayaran= _user.transaksi_pembayaran,
        
        pendana_id=_pendana.id,
        
        investasi=_pendana.investasi
    )

# get with auth
@router_pendana.get("/me")
async def getPendanaViaToken(token: str = Depends(oauth2schema), db: Session = Depends(get_db)):
    # get user and peminjam
    _user = await _services.get_user_via_token(token=token, db=db)
    _pendana = await _services.get_pendana_by_user_id(user_id=_user.id, db=db)
    
    return _schemas.ReturnPendana(
        id=_user.id,
        email=_user.email,
        password=_user.password,
        token=token,
        tanggal_dibuat=_user.tanggal_dibuat,
        nama=_user.nama,
        nomor_ponsel=_user.nomor_ponsel,
        saldo=_user.saldo,
        foto=_user.foto,
        jenis_user=_user.jenis_user,
        
        notifikasi=_user.notifikasi,
        transaksi_pembayaran= _user.transaksi_pembayaran,
        
        pendana_id=_pendana.id,
        
        investasi=_pendana.investasi
    )
    
# ===========================================================================================
# INVESTASI
# set investasi
@router_pendana.post("/setInvestasi/{pendana_id}/{pinjaman_id}")
async def setInvestasi(datas: _schemas.Investasi, pendana_id: int, pinjaman_id: int, db: Session = Depends(get_db)):
    _investasi = await _services.set_investasi(datas=datas, pendana_id=pendana_id, pinjaman_id=pinjaman_id, db=db)
    
    return {"investasi": _investasi}

# ===========================================================================================
# PEMINJAM
# signup
@router_peminjam.post("/signup")
async def signUpPeminjam(datas: _schemas.SignUpPeminjam, db: Session = Depends(get_db)):
    # check user
    # datas.jenis_user = "peminjam"
    _user = await signUpUser(datas, db)

    datas.user_id = _user.id

    # create peminjam
    _peminjam = await _services.create_peminjam(datas=datas, db=db)

    return _schemas.ReturnPeminjam(
        id=_user.id,
        email=_user.email,
        password=_user.password,
        token=_user.token,
        tanggal_dibuat=_user.tanggal_dibuat,
        nama=_user.nama,
        nomor_ponsel=_user.nomor_ponsel,
        saldo=_user.saldo,
        foto=_user.foto,
        jenis_user=_user.jenis_user,
        
        peminjam_id=_peminjam.id,
        jenis=_peminjam.jenis,
        nik=_peminjam.nik,
        alamat=_peminjam.alamat,
        grade=_peminjam.grade,
        jenis_usaha=_peminjam.jenis_usaha,
        provinsi_usaha=_peminjam.provinsi_usaha,
        kota_usaha=_peminjam.kota_usaha,
        pendapatan=_peminjam.pendapatan,
    )

# signin
@router_peminjam.post("/signin")
async def signInPeminjam(datas: _schemas.SignInUser, db: Session = Depends(get_db)):
    
    _user = await signInUser(datas=datas, db=db)
    
    _peminjam = await _services.get_peminjam_by_user_id(user_id=_user.id, db=db)
    if not _peminjam:
        raise HTTPException(status_code=404, detail="Peminjam with this email is not found")

    return _schemas.ReturnPeminjam(
        id=_user.id,
        email=_user.email,
        password=_user.password,
        token=_user.token,
        tanggal_dibuat=_user.tanggal_dibuat,
        nama=_user.nama,
        nomor_ponsel=_user.nomor_ponsel,
        saldo=_user.saldo,
        foto=_user.foto,
        jenis_user=_user.jenis_user,
        
        notifikasi=_user.notifikasi,
        transaksi_pembayaran= _user.transaksi_pembayaran,
        
        peminjam_id=_peminjam.id,
        jenis=_peminjam.jenis,
        nik=_peminjam.nik,
        alamat=_peminjam.alamat,
        grade=_peminjam.grade,
        jenis_usaha=_peminjam.jenis_usaha,
        provinsi_usaha=_peminjam.provinsi_usaha,
        kota_usaha=_peminjam.kota_usaha,
        pendapatan=_peminjam.pendapatan,

        pinjaman=_peminjam.pinjaman,
        pembayaran=_peminjam.pembayaran
    )

# get with auth
@router_peminjam.get("/me")
async def getUserPeminjamViaToken(token: str = Depends(oauth2schema), db: Session = Depends(get_db)):
    # get user and peminjam
    _user = await _services.get_user_via_token(token=token, db=db)
    _peminjam = await _services.get_peminjam_by_user_id(user_id=_user.id, db=db)
    
    return _schemas.ReturnPeminjam(
        id=_user.id,
        email=_user.email,
        password=_user.password,
        token=token,
        tanggal_dibuat=_user.tanggal_dibuat,
        nama=_user.nama,
        nomor_ponsel=_user.nomor_ponsel,
        saldo=_user.saldo,
        foto=_user.foto,
        jenis_user=_user.jenis_user,
        
        notifikasi=_user.notifikasi,
        transaksi_pembayaran= _user.transaksi_pembayaran,
        
        peminjam_id=_peminjam.id,
        jenis=_peminjam.jenis,
        nik=_peminjam.nik,
        alamat=_peminjam.alamat,
        grade=_peminjam.grade,
        jenis_usaha=_peminjam.jenis_usaha,
        provinsi_usaha=_peminjam.provinsi_usaha,
        kota_usaha=_peminjam.kota_usaha,
        pendapatan=_peminjam.pendapatan,

        pinjaman=_peminjam.pinjaman,
        pembayaran=_peminjam.pembayaran
    )

# # USER
# async def get_user_return(_user: _models.User, _token, db):
    
#     _transaksi_pembayaran = await _services.get_transaksi_pembayaran(user_id=_user.id, db=db)
#     _notifikasi = await _services.get_notifikasi(user_id=_user.id, db=db)
    
#     return _schemas.ReturnUser(
#         id=_user.id,
#         email=_user.email,
#         password=_user.password,
#         token=_token,
#         tanggal_dibuat=_user.tanggal_dibuat,
#         nama=_user.nama,
#         nomor_ponsel=_user.nomor_ponsel,
#         saldo=_user.saldo,
#         foto=_user.foto,
        
#         transaksi_pembayaran=_transaksi_pembayaran,
#         notifikasi=_notifikasi,
#     )

# # PEMINJAM
# # get data with schema peminjam
# async def get_peminjam_return(_user: _models.User, _peminjam: _models.Peminjam, _token, db):
    
#     _transaksi_pembayaran = await _services.get_transaksi_pembayaran(user_id=_user.id, db=db)
#     _notifikasi = await _services.get_notifikasi(user_id=_user.id, db=db)
    
#     _pinjaman = await _services.get_pinjaman(peminjam_id=_peminjam.id, db=db)
#     _pembayaran = await _services.get_pembayaran(peminjam_id=_peminjam.id, db=db)
    
#     return _schemas.Peminjam(
#         id=_user.id,
#         email=_user.email,
#         password=_user.password,
#         token=_token,
#         tanggal_dibuat=_user.tanggal_dibuat,
#         nama=_user.nama,
#         nomor_ponsel=_user.nomor_ponsel,
#         saldo=_user.saldo,
#         foto=_user.foto,
        
#         transaksi_pembayaran=_transaksi_pembayaran,
#         notifikasi=_notifikasi,
        
#         peminjam_id=_peminjam.id,
#         jenis=_peminjam.jenis,
#         nik=_peminjam.nik,
#         alamat=_peminjam.alamat,
#         grade=_peminjam.grade,
#         jenis_usaha=_peminjam.jenis_usaha,
#         provinsi_usaha=_peminjam.provinsi_usaha,
#         kota_usaha=_peminjam.kota_usaha,
#         pendapatan=_peminjam.pendapatan,

#         pinjaman=_pinjaman,
#         pembayaran=_pembayaran
#     )

# # signup
# @router_peminjam.post("/signup")
# async def signUpPeminjam(datas: _schemas.SignUpPeminjam, db: Session = Depends(get_db)):
#     # check di database
#     _existed_user = await _services.get_user_by_email(datas.email, db)
#     if _existed_user:
#         raise HTTPException(status_code=400, detail="User with this email already existed")

#     # create db user dengan tokennya
#     _user = await _services.create_user(datas=_schemas.SignUpUser(
#         email=datas.email,
#         password=datas.password,
#         nama=datas.nama,
#         nomor_ponsel=datas.nomor_ponsel
#         ), db=db)
    
#     datas.user_id = _user.id
    
#     _peminjam = await _services.create_peminjam(datas=datas, db=db)
#     _token = await _services.genereate_token_user(user=_user)

#     return get_peminjam_return(_user, _peminjam, _token, db)

# # signin
# @router_peminjam.post("/signin")
# async def signInPeminjam(datas: _schemas.SignInUser, db: Session = Depends(get_db)):
    
#     # check in database
#     _existed_user = await _services.get_user_by_email(datas.email, db)
#     if not _existed_user:
#         raise HTTPException(status_code=404, detail="user with this email is not found")

#     # verify password
#     if not _existed_user.verify_password(datas.password):
#         raise HTTPException(status_code=401, detail="Password not matched")
    
#     # token and peminjam
#     _token = await _services.genereate_token_user(user=_existed_user)
#     _peminjam = await _services.get_peminjam_by_user_id(user_id=_existed_user.id, db=db)
    
#     return get_peminjam_return(_existed_user, _peminjam, _token, db)

# # get with auth
# @router_peminjam.get("/me")
# async def getUserPeminjamViaToken(token: str = Depends(oauth2schema), db: Session = Depends(get_db)):
#     # get user and peminjam
#     _user_model = await _services.get_user_via_token(token=token, db=db)
#     _peminjam = await _services.get_peminjam_by_user_id(user_id=_user_model.id, db=db)
    
#     return get_peminjam_return(_user_model, _peminjam, token, db)
    
# # PENDANA
# # get data with schema pendana
# async def get_pendana_return(_user: _models.User, _pendana: _models.Pendana, _token, db):
    
#     _transaksi_pembayaran = await _services.get_transaksi_pembayaran(user_id=_user.id, db=db)
#     _notifikasi = await _services.get_notifikasi(user_id=_user.id, db=db)
    
#     _investasi = await _services.get_investasi(pendana_id=_pendana.id, db=db)
    
#     return _schemas.Pendana(
#         id=_user.id,
#         email=_user.email,
#         password=_user.password,
#         token=_token,
#         tanggal_dibuat=_user.tanggal_dibuat,
#         nama=_user.nama,
#         nomor_ponsel=_user.nomor_ponsel,
#         saldo=_user.saldo,
#         foto=_user.foto,
        
#         # transaksi_pembayaran=_transaksi_pembayaran,
#         # notifikasi=_notifikasi,

#         pendana_id=_pendana.id,

#         # investasi=_investasi
#     )

# # signup
# @router_pendana.post("/signup")
# async def signUpPendana(datas: _schemas.SignUpPendana, db: Session = Depends(get_db)):
#     # check di database
#     _existed_user = await _services.get_user_by_email(datas.email, db)
#     if _existed_user:
#         raise HTTPException(status_code=400, detail="User with this email already existed")

#     # create db user dengan tokennya
#     _user = await _services.create_user(datas=_schemas.SignUpUser(
#         email=datas.email,
#         password=datas.password,
#         nama=datas.nama,
#         nomor_ponsel=datas.nomor_ponsel
#         ), db=db)

#     datas.user_id = _user.id

#     _pendana = await _services.create_pendana(datas=datas, db=db)
#     _token = await _services.genereate_token_user(user=_user)

#     return get_pendana_return(_user, _pendana, _token, db)

# # signin
# @router_pendana.post("/signin")
# async def signInPendana(datas: _schemas.SignInUser, db: Session = Depends(get_db)):
#     # check in database
#     _existed_user = await _services.get_user_by_email(datas.email, db)
#     if not _existed_user:
#         raise HTTPException(status_code=404, detail="user with this email is not found")

#     # verify password
#     if not _existed_user.verify_password(datas.password):
#         raise HTTPException(status_code=401, detail="Password not matched")
    
#     # token and peminjam
#     _token = await _services.genereate_token_user(user=_existed_user)
#     _pendana = await _services.get_pendana_by_user_id(user_id=_existed_user.id, db=db)

#     return get_pendana_return(_existed_user, _pendana, _token, db)

# # get with auth
# @router_pendana.get("/me")
# async def getPendanaViaToken(token: str = Depends(oauth2schema), db: Session = Depends(get_db)):
#     # get user and peminjam
#     _user_model = await _services.get_user_via_token(token=token, db=db)
#     _pendana = await _services.get_pendana_by_user_id(user_id=_user_model.id, db=db)
    
#     return get_pendana_return(_user_model, _pendana, token, db)


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