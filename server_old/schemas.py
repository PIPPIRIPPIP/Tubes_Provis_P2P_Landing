from pydantic import BaseModel
import datetime as dt
from typing import List

# Skema untuk User
class UserBase(BaseModel):
    email: str

class SignInUser(UserBase):
    password: str

class SignUpUser(UserBase):
    password: str
    nama: str
    nomor_ponsel: str

class User(UserBase):
    id: int
    password: str
    tanggal_dibuat: dt.datetime
    nama: str
    nomor_ponsel: str
    saldo: int
    foto: str

class UserConfig(User):
    class Config:
        orm_mode = True
        
class ReturnUser(User):
    token: str

# Skema untuk Transaksi Pembayaran
class TransaksiPembayaran(BaseModel):
    id: int
    user_id: int
    jenis: str
    metode_pembayaran: str
    jumlah: int
    timestamp: dt.datetime
        
class TransaksiPembayaranConfig(TransaksiPembayaran):
    class Config:
        orm_mode = True

# Skema untuk Notifikasi
class Notifikasi(BaseModel):
    id: int
    user_id: int
    jenis: str
    judul: str
    pesan: str
    timestamp: dt.datetime
        
class NotifikasiConfig(Notifikasi):
    class Config:
        orm_mode = True

# Skema untuk Peminjam
class SignUpPeminjam(SignUpUser):
    user_id: int
    jenis: str
    nik: str
    alamat: str
    grade: int
    jenis_usaha: str
    provinsi_usaha: str
    kota_usaha: str
    pendapatan: int

class Peminjam(ReturnUser):
    peminjam_id: int
    jenis: str
    nik: str
    alamat: str
    grade: int
    jenis_usaha: str
    provinsi_usaha: str
    kota_usaha: str
    pendapatan: int

class PeminjamConfig(Peminjam):
    class Config:
        orm_mode = True

# Skema untuk Pinjaman
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
    tanggal_selesai: str
    status: str

class PinjamanConfig(Pinjaman):
    class Config:
        orm_mode = True

# Skema untuk Pembayaran
class Pembayaran(BaseModel):
    id: int
    pinjaman_id: int
    peminjam_id: int
    tanggal_pembayaran: dt.datetime
    jumlah_pembayaran: int

class PembayaranConfig(Pembayaran):
    class Config:
        orm_mode = True

# Skema untuk Pendana
class SignUpPendana(SignUpUser):
    user_id: int

class Pendana(BaseModel):
    pendana_id: int

class PendanaConfig(Pendana):
    class Config:
        orm_mode = True

# Skema untuk Investasi
class Investasi(BaseModel):
    id: int
    pendana_id: int
    pinjaman_id: int
    jumlah_investasi: int

class InvestasiConfig(Investasi):
    class Config:
        orm_mode = True
