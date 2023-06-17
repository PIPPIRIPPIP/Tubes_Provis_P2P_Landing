from pydantic import BaseModel
import datetime as dt
from typing import List 

# USER
# Skema untuk Notifikasi
class AddNotifikasi(BaseModel):
    jenis: str
    judul: str
    pesan: str

class Notifikasi(BaseModel):
    id: int
    user_id: int
    jenis: str
    judul: str
    pesan: str
    timestamp: dt.datetime
    
    class Config:
        orm_mode = True
    
# Skema untuk Transaksi Pembayaran
class AddTransaksiPembayaran(BaseModel):
    jenis: str
    metode_pembayaran: str
    jumlah: int
    
class TransaksiPembayaran(BaseModel):
    id: int
    user_id: int
    jenis: str
    metode_pembayaran: str
    jumlah: int
    timestamp: dt.datetime
    
    class Config:
        orm_mode = True

# Schema untuk user
class UserBase(BaseModel):
    email: str

class SignInUser(UserBase):
    password: str

class SignUpUser(UserBase):
    password: str
    nama: str
    nomor_ponsel: str
    jenis_user: str

class UpdateUser(UserBase):
    password: str
    nama: str
    nomor_ponsel: str
    foto: str

class User(UserBase):
    id: int
    password: str
    tanggal_dibuat: dt.datetime
    nama: str
    nomor_ponsel: str
    saldo: int
    foto: str
    jenis_user: str
    
    notifikasi: List[Notifikasi]
    transaksi_pembayaran: List[TransaksiPembayaran]
    
    class Config:
        orm_mode = True

class ReturnUser(User):
    token: str
    
# class UserConfig(User):
#     class Config:
#         orm_mode = True
    

# PENDANA
# Skema untuk Investasi
class AddInvestasi(BaseModel):
    pinjaman_id: int
    jumlah_investasi: int

class Investasi(BaseModel):
    id: int
    pendana_id: int
    pinjaman_id: int
    jumlah_investasi: int
    keuntungan: int
    tanggal_investasi: dt.datetime
    status: str
    
    class Config:
        orm_mode = True

# Skema untuk Pendana
class SignUpPendana(SignUpUser):
    user_id: int

class Pendana(BaseModel):
    pendana_id: int
    
class ReturnPendana(ReturnUser):
    pendana_id: int
    
    investasi: List[Investasi]
    
    class Config:
        orm_mode = True

# PEMINJAM
# Skema untuk Pinjaman
class AddPinjaman(BaseModel):
    jumlah_pinjaman: int
    tenor: int
    bunga: int
    jenis_angsuran: str
    tujuan_pinjaman: str

class Pinjaman(BaseModel):
    id: int
    peminjam_id: int
    kode: str
    tanggal_pinjaman: dt.datetime
    jumlah_pinjaman: int
    tenor: int
    bunga: int
    jenis_angsuran: str
    jumlah_angsuran: int
    tujuan_pinjaman: str
    jumlah_didanai: int
    jumlah_pembayaran: int
    tanggal_selesai: str
    status: str
    
    class Config:
        orm_mode = True

# Skema untuk Pembayaran
class AddPembayaran(BaseModel):
    pinjaman_id: int
    jumlah_pembayaran: int

class Pembayaran(BaseModel):
    id: int
    pinjaman_id: int
    peminjam_id: int
    tanggal_pembayaran: dt.datetime
    jumlah_pembayaran: int
    
    class Config:
        orm_mode = True

# Skema untuk Peminjam
class SignUpPeminjam(SignUpUser):
    user_id: int
    jenis: str
    nik: str
    alamat: str
    jenis_usaha: str
    provinsi_usaha: str
    kota_usaha: str
    pendapatan: int

class ReturnPeminjam(ReturnUser):
    peminjam_id: int
    jenis: str
    nik: str
    alamat: str
    grade: int
    jenis_usaha: str
    provinsi_usaha: str
    kota_usaha: str
    pendapatan: int

    pinjaman: List[Pinjaman]
    pembayaran: List[Pembayaran]
    
    class Config:
        orm_mode = True