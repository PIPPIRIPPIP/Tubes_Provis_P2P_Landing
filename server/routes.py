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
router = APIRouter(tags=["User"])
router_peminjam = APIRouter(tags=["Peminjam"])
router_pendana = APIRouter(tags=["Pendana"])

# Create session
def get_db():
    db = _db.SessionLocal()
    try:
        yield db
    finally:
        db.close()
        
# ===========================================================================================
# USER
# method get user
async def get_return_user(_user: _models.User, _token: str) -> _schemas.ReturnUser:
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
    
# signup
@router.post("/signup")
async def signUpUser(datas: _schemas.SignUpUser, jenis_user: str, db: Session = Depends(get_db)) -> _schemas.ReturnUser:
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
        ), jenis_user=jenis_user, db=db)

    _token = await _services.genereate_token_user(user=_user)

    return await get_return_user(_user=_user, _token=_token)

# signin
@router.post("/signin")
async def signInUser(datas: _schemas.SignInUser, db: Session = Depends(get_db)):
    # check in database
    _user_model = await _services.get_user_by_email(datas.email, db)
    if not _user_model:
        raise HTTPException(status_code=404, detail="user with this email is not found")

    # verify password
    if not _user_model.verify_password(datas.password):
        raise HTTPException(status_code=401, detail="Password not matched")
    
    # generate token
    _token = await _services.genereate_token_user(user=_user_model)
    
    _user = await get_return_user(_user=_user_model, _token=_token)
    
    # check pendana atau peminjam
    if _user.jenis_user == "pendana":
        return await signInPendana(_user=_user, db=db)
    elif _user.jenis_user == "peminjam":
        return await signInPeminjam(_user=_user, db=db)
    else:
        return _user
    
# get with auth
@router.get("/me")
async def getUserUserViaToken(token: str = Depends(oauth2schema), db: Session = Depends(get_db)):
    # get user and user
    _user_model = await _services.get_user_via_token(token=token, db=db)
    
    _user = await get_return_user(_user=_user_model, _token=token)
    
    # check pendana atau peminjam
    if _user.jenis_user == "pendana":
        return await signInPendana(_user=_user, db=db)
    elif _user.jenis_user == "peminjam":
        return await signInPeminjam(_user=_user, db=db)
    else:
        return _user

#update
@router.put("/update/{user_id}")
async def updateUser(datas: _schemas.UpdateUser, user_id: int, db: Session = Depends(get_db)) -> _schemas.ReturnUser:
    # Get the user from the database
    _user_old = await _services.get_user_by_id(id=user_id, db=db)
    if not _user_old:
        raise HTTPException(status_code=404, detail="User not found")
    
    # check email
    if _user_old.email != datas.email:
        _existed_user = await _services.get_user_by_email(datas.email, db)
        if _existed_user:
            raise HTTPException(status_code=400, detail="User with this email already existed")
    
    _user = await _services.update_user(datas, _user_old, db)

    _token = await _services.genereate_token_user(user=_user)

    return await get_return_user(_user=_user, _token=_token)

# ===========================================================================================
# NOTIFIKASI
# add notifikasi
@router.post("/addNotifikasi/{user_id}/")
async def addNotifikasi(datas: _schemas.AddNotifikasi, user_id: int, db: Session = Depends(get_db)):
    _notifikasi = await _services.add_notifikasi(datas=datas, user_id=user_id, db=db)
    return _notifikasi
    
# # get notifikasi
@router.get("/getNotifikasi/{user_id}/")
async def getNotifikasi(user_id: int, db: Session = Depends(get_db)):
    _notifikasi = await _services.get_notifikasi(user_id=user_id, db=db)
    return _notifikasi

# delete notifikasi
@router.delete("/deleteNotifikasi/{notifikasi_id}/")
async def deleteNotifikasi(notifikasi_id: int, db: Session = Depends(get_db)):
    _notifikasi = await _services.delete_notifikasi(notifikasi_id=notifikasi_id, db=db)
    if not _notifikasi:
        raise HTTPException(status_code=404, detail="Notifikasi not found")
    return {"message": "Notifikasi deleted successfully"}

# ===========================================================================================
# TRANSAKSI PEMBAYARAN
# set TransaksiPembayaran
@router.post("/addTransaksiPembayaran/{user_id}/")
async def addTransaksiPembayaran(datas: _schemas.AddTransaksiPembayaran, user_id: int, db: Session = Depends(get_db)):
    
    # _services.update_user_balance(user_id=user_id, jumlah=datas.jumlah, db=db)
    _transaksi_pembayaran = await _services.add_transaksi_pembayaran(datas=datas, user_id=user_id, db=db)
    
    return _transaksi_pembayaran
    
# # get TransaksiPembayaran
@router.get("/getTransaksiPembayaran/{user_id}/")
async def getTransaksiPembayaran(user_id: int, db: Session = Depends(get_db)):
    _transaksi_pembayaran = await _services.get_transaksi_pembayaran(user_id=user_id, db=db)
    return _transaksi_pembayaran

# ===========================================================================================
# PENDANA
# get data
async def get_return_pendana(_user: _schemas.ReturnUser, _pendana: _models.Pendana) -> _schemas.ReturnPendana:
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

# signup
@router_pendana.post("/signup")
async def signUpPendana(datas: _schemas.SignUpPendana, db: Session = Depends(get_db)):
    # check user
    _user = await signUpUser(datas, "pendana", db)

    # create pendana
    _pendana = await _services.create_pendana(datas=datas, user_id=_user.id, db=db)

    return await get_return_pendana(_user=_user, _pendana=_pendana)

# signin
# @router_pendana.post("/signin")
async def signInPendana(_user: _schemas.ReturnUser, db: Session = Depends(get_db)) -> _schemas.ReturnPendana:
    # get data
    _pendana = await _services.get_pendana_by_user_id(user_id=_user.id, db=db)
    if not _pendana:
        raise HTTPException(status_code=404, detail="Pendana with this email is not found")

    return await get_return_pendana(_user=_user, _pendana=_pendana)

# get with auth
# @router_pendana.get("/me")
# async def getPendanaViaToken(_user: _schemas.ReturnUser, db: Session = Depends(get_db)):
#     # get peminjam
#     _pendana = await _services.get_pendana_by_user_id(user_id=_user.id, db=db)
    
#     return get_return_pendana(_user=_user, _pendana=_pendana)

# update
@router_pendana.put("/update/{user_id}")
async def updatependana(datas: _schemas.UpdatePendana, user_id: int, db: Session = Depends(get_db)):
    # check user
    _user = await updateUser(datas, user_id, db)
    
    # Get the pendana from the database
    _pendana_old = await _services.get_pendana_by_user_id(user_id=user_id, db=db)
    if not _pendana_old:
        raise HTTPException(status_code=404, detail="pendana not found")
    
    # _pendana = await _services.update_pendana(datas, _pendana_old, db)

    return await get_return_pendana(_user=_user, _pendana=_pendana_old)

# ===========================================================================================
# INVESTASI
# add investasi
@router_pendana.post("/addInvestasi/{pendana_id}")
async def addInvestasi(datas: _schemas.AddInvestasi, pendana_id: int, db: Session = Depends(get_db)):
    # Check
    _pendana = await _services.get_pendana_by_id(id=pendana_id, db=db)
    if not _pendana:
        raise HTTPException(status_code=404, detail="Pendana with this id is not found")
    
    # create investasi
    _investasi = await _services.add_investasi(datas=datas, _pendana=_pendana, db=db)
    return _investasi

# get Investasi
@router_pendana.get("/getInvestasi/{pendana_id}/")
async def getInvestasi(pendana_id: int, db: Session = Depends(get_db)):
    _investasi = await _services.get_investasi_by_pendana_id(pendana_id=pendana_id, db=db)
    return _investasi

# ===========================================================================================
# PEMINJAM
# get data peminjam
async def get_return_peminjam(_user: _schemas.ReturnUser, _peminjam: _models.Peminjam) -> _schemas.ReturnPeminjam:
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
        transaksi_pembayaran=_user.transaksi_pembayaran,

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


# signup
@router_peminjam.post("/signup")
async def signUpPeminjam(datas: _schemas.SignUpPeminjam, db: Session = Depends(get_db)):
    # check user
    # datas.jenis_user = "peminjam"
    _user = await signUpUser(datas, "peminjam", db)

    # create peminjam
    _peminjam = await _services.create_peminjam(datas=datas, user_id=_user.id, db=db)

    return await get_return_peminjam(_user=_user, _peminjam=_peminjam)

# signin
# @router_peminjam.post("/signin")
async def signInPeminjam(_user: _schemas.ReturnUser, db: Session = Depends(get_db)) -> _schemas.ReturnPeminjam:
    # get data
    _peminjam = await _services.get_peminjam_by_user_id(user_id=_user.id, db=db)
    if not _peminjam:
        raise HTTPException(status_code=404, detail="Peminjam with this email is not found")

    return await get_return_peminjam(_user=_user, _peminjam=_peminjam)
    # return await _schemas.ReturnPeminjam.from_orm(_peminjam)

# update
@router_peminjam.put("/update/{user_id}")
async def updatePeminjam(datas: _schemas.UpdatePeminjam, user_id: int, db: Session = Depends(get_db)):
    # check user
    _user = await updateUser(datas, user_id, db)
    
    # Get the peminjam from the database
    _peminjam_old = await _services.get_peminjam_by_user_id(user_id=user_id, db=db)
    if not _peminjam_old:
        raise HTTPException(status_code=404, detail="peminjam not found")
    
    _peminjam = await _services.update_peminjam(datas, _peminjam_old, db)

    return await get_return_peminjam(_user=_user, _peminjam=_peminjam)

# ===========================================================================================
# PINJAMAN
# set Pinjaman
@router_peminjam.post("/setPinjaman/{peminjam_id}")
async def setPinjaman(datas: _schemas.AddPinjaman, peminjam_id: int, db: Session = Depends(get_db)):
    # check peminjam
    _peminjam = await _services.get_peminjam_by_id(id=peminjam_id, db=db)
    if not _peminjam:
        raise HTTPException(status_code=404, detail="Peminjam with this id is not found")
    
    #create pinjaman
    _pinjaman = await _services.add_pinjaman(datas=datas, peminjam_id=peminjam_id, db=db)
    
    return _pinjaman

# get Pinjaman
@router_peminjam.get("/getPinjaman/{peminjam_id}/")
async def getPinjaman(peminjam_id: int, db: Session = Depends(get_db)):
    # _peminjam = await _services.get_peminjam_by_id(id=peminjam_id, db=db)
    _pinjaman = await _services.get_pinjaman_by_peminjam_id(peminjam_id=peminjam_id, db=db)
    return _pinjaman

#update

# ===========================================================================================
# PEMBAYARAN
# set Pembayaran
@router_peminjam.post("/addPembayaran/{peminjam_id}")
async def addPembayaran(datas: _schemas.AddPembayaran, peminjam_id: int, db: Session = Depends(get_db)):
    # check peminjam
    _peminjam = await _services.get_peminjam_by_id(id=peminjam_id, db=db)
    if not _peminjam:
        raise HTTPException(status_code=404, detail="Peminjam with this id is not found")
    
    #create pembayaran
    _pembayaran = await _services.add_pembayaran(datas=datas, _peminjam=_peminjam, db=db)
    
    return _pembayaran

@router_peminjam.put("/tagihanPembayaran/{peminjam_id}/{pembayaran_id}")
async def tagihanPembayaran(peminjam_id: int, pembayaran_id: int, db: Session = Depends(get_db)):
    # check peminjam
    _peminjam = await _services.get_peminjam_by_id(id=peminjam_id, db=db)
    if not _peminjam:
        raise HTTPException(status_code=404, detail="Peminjam with this id is not found")
    
    #create pembayaran
    _pembayaran = await _services.update_pembayaran(_peminjam=_peminjam, pembayaran_id=pembayaran_id, db=db)
    
    return _pembayaran

# get pembayaran
@router_peminjam.get("/getPembayaran/{peminjam_id}/")
async def getPembayaran(peminjam_id: int, db: Session = Depends(get_db)):
    _pembayaran = await _services.get_pembayaran(peminjam_id=peminjam_id, db=db)
    return _pembayaran

# ===========================================================================================
