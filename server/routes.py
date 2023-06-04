from fastapi import APIRouter, Depends, HTTPException
from fastapi.security import OAuth2PasswordBearer
from sqlalchemy.orm import Session

import database as _db
import schemas as _schemas
import services as _services

# Auth Pass
oauth2schema = OAuth2PasswordBearer("/email-password-signin")

# Router
router = APIRouter()
router2 = APIRouter()

# Create session
def get_db():
    db = _db.SessionLocal()
    try:
        yield db
    finally:
        db.close()

# test
# @router.get("/test")
# def testCreate():
#     return {"Test": "Testing Peminjam routes"}

# @router2.get("/test")
# def testCreate():
#     return {"Test": "Testing Pendana routes"}

# PEMINJAM
# get data with schema peminjam
def get_peminjam_return(_peminjam, _token, db):
    
    _riwayat_transaksi = _services.get_riwayat_transaksi(peminjam_id=_peminjam.id, db=db)
    _notifikasi = _services.get_notifikasi(peminjam_id=_peminjam.id, db=db)
    _pinjaman = _services.get_pinjaman(peminjam_id=_peminjam.id, db=db)
    _riwayat_pinjaman = _services.get_riwayat_pinjaman(peminjam_id=_peminjam.id, db=db)
    
    return _schemas.Peminjam(
        id=_peminjam.id,
        email=_peminjam.email,
        password=_peminjam.password,
        token=_token,
        tanggal_dibuat=_peminjam.tanggal_dibuat,

        nama=_peminjam.nama,
        nik=_peminjam.nik,
        nomor_ponsel=_peminjam.nomor_ponsel,
        alamat=_peminjam.alamat,
        saldo=_peminjam.saldo,
        grade=_peminjam.grade,
        jenis_usaha=_peminjam.jenis_usaha,
        provinsi_usaha=_peminjam.provinsi_usaha,
        kota_usaha=_peminjam.kota_usaha,
        pendapatan=_peminjam.pendapatan,

        riwayat_transaksi=_riwayat_transaksi,
        pinjaman=_pinjaman,
        riwayat_pinjaman=_riwayat_pinjaman,
        notifikasi=_notifikasi
    )

# signup
@router.post("/signup")
async def signUpPeminjam(datas: _schemas.SignUpPeminjam, db: Session = Depends(get_db)):
    _existed_peminjam = await _services.get_peminjam_by_email(datas.email, db)
    if _existed_peminjam:
        raise HTTPException(status_code=400, detail="peminjam with this email already existed")

    _peminjam = await _services.create_peminjam(datas=datas, db=db)
    _token = await _services.genereate_token_peminjam(peminjam=_peminjam)

    return get_peminjam_return(_peminjam, _token, db)

# signin
@router.post("/signin")
async def signInPeminjam(datas: _schemas.SignInPeminjam, db: Session = Depends(get_db)):
    _existed_peminjam = await _services.get_peminjam_by_email(datas.email, db)
    if not _existed_peminjam:
        raise HTTPException(status_code=404, detail="Peminjam with this email is not found")

    if not _existed_peminjam.verify_password(datas.password):
        raise HTTPException(status_code=401, detail="Password not matched")

    _token = await _services.genereate_token_peminjam(peminjam=_existed_peminjam)

    return get_peminjam_return(_existed_peminjam, _token, db)

# get with auth
@router.get("/me")
async def getPeminjamViaToken(token: str = Depends(oauth2schema), db: Session = Depends(get_db)):
    _peminjam_model = await _services.get_peminjam_via_token(token=token, db=db)
    return get_peminjam_return(_peminjam_model, token, db)
    
# PENDANA
# get data with schema pendana
def get_pendana_return(_pendana, _token, db):
    
    _riwayat_transaksi = _services.get_riwayat_transaksi_pendana(pendana_id=_pendana.id, db=db)
    _notifikasi = _services.get_notifikasi_pendana(pendana_id=_pendana.id, db=db)
    _investasi = _services.get_investasi(pendana_id=_pendana.id, db=db)
    _riwayat_investasi = _services.get_riwayat_investasi(pendana_id=_pendana.id, db=db)
    
    return _schemas.Pendana(
        id=_pendana.id,
        email=_pendana.email,
        password=_pendana.password,
        token=_token,
        tanggal_dibuat=_pendana.tanggal_dibuat,

        nama=_pendana.nama,
        nik=_pendana.nik,
        nomor_ponsel=_pendana.nomor_ponsel,
        saldo=_pendana.saldo,

        riwayat_transaksi=_riwayat_transaksi,
        investasi=_investasi,
        riwayat_investasi=_riwayat_investasi,
        notifikasi=_notifikasi
    )

# signup
@router2.post("/signup")
async def signUpPendana(datas: _schemas.SignUpPendana, db: Session = Depends(get_db)):
    _existed_pendana = await _services.get_pendana_by_email(datas.email, db)
    if _existed_pendana:
        raise HTTPException(status_code=400, detail="pendana with this email already existed")

    _pendana = await _services.create_pendana(datas=datas, db=db)
    _token = await _services.genereate_token_pendana(pendana=_pendana)

    return get_pendana_return(_pendana, _token, db)

# signin
@router2.post("/signin")
async def signInPendana(datas: _schemas.SignInPendana, db: Session = Depends(get_db)):
    _existed_pendana = await _services.get_pendana_by_email(datas.email, db)
    if not _existed_pendana:
        raise HTTPException(status_code=404, detail="pendana with this email is not found")

    if not _existed_pendana.verify_password(datas.password):
        raise HTTPException(status_code=401, detail="Password not matched")

    _token = await _services.genereate_token_pendana(pendana=_existed_pendana)

    return get_pendana_return(_existed_pendana, _token, db)

# get with auth
@router2.get("/me")
async def getPendanaViaToken(token: str = Depends(oauth2schema), db: Session = Depends(get_db)):
    _pendana_model = await _services.get_pendana_via_token(token=token, db=db)
    return get_pendana_return(_pendana_model, token, db)