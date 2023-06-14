from pydantic import BaseModel
from typing import List
from datetime import datetime


class _UserBase(BaseModel):
    email: str


class User(_UserBase):
    id: int
    username: str
    date_created: datetime

    class Config:
        orm_mode = True


class UserReturn(_UserBase):
    username: str
    token: str


class SignUpUser(_UserBase):
    username: str
    password: str


class SignInUser(_UserBase):
    password: str
    
# =================================
# Bound for models app

class PeminjamBase(BaseModel):
    email: str

class Peminjam(PeminjamBase):
    id: int
    password: str
    token: str
    tanggal_dibuat: datetime
    nama: str
    nik: str
    nomor_ponsel: str
    alamat: str
    saldo: int
    grade: int
    jenis_usaha: str
    provinsi_usaha: str
    kota_usaha: str
    pendapatan: int
    riwayat_transaksi: List['RiwayatTransaksi'] = []
    pinjaman: List['Pinjaman'] = []
    riwayat_pinjaman: List['RiwayatPinjaman'] = []
    notifikasi: List['Notifikasi'] = []

    class Config:
        orm_mode = True

class SignInPeminjam(PeminjamBase):
    password: str

class SignUpPeminjam(PeminjamBase):
    password: str
    nama: str
    nik: str
    nomor_ponsel: str
    alamat: str
    saldo: int
    grade: int
    jenis_usaha: str
    provinsi_usaha: str
    kota_usaha: str
    pendapatan: int

class PinjamanBase(BaseModel):
    peminjam_id: int
    kode: str
    tanggal_pinjaman: datetime
    jumlah_pinjaman: int
    tenor: int
    bunga: int
    jenis_angsuran: str
    jumlah_angsuran: int
    tujuan_pinjaman: str
    jumlah_didanai: int

class Pinjaman(PinjamanBase):
    id: int
    peminjam: Peminjam

    class Config:
        orm_mode = True


class RiwayatPinjamanBase(BaseModel):
    peminjam_id: int
    tanggal_pinjaman: str
    jumlah_pinjaman: int
    tenor: int
    bunga: int
    tanggal_selesai: str
    status: str

class RiwayatPinjaman(RiwayatPinjamanBase):
    id: int
    peminjam: Peminjam

    class Config:
        orm_mode = True


class RiwayatTransaksiBase(BaseModel):
    peminjam_id: int
    jenis: str
    metode_pembayaran: str
    jumlah: int
    timestamp: datetime

class RiwayatTransaksi(RiwayatTransaksiBase):
    id: int
    peminjam: Peminjam

    class Config:
        orm_mode = True


class NotifikasiBase(BaseModel):
    peminjam_id: int
    judul: str
    pesan: str
    timestamp: datetime

class Notifikasi(NotifikasiBase):
    id: int
    peminjam: Peminjam

    class Config:
        orm_mode = True


class PendanaBase(BaseModel):
    email: str
    
class Pendana(PendanaBase):
    id: int
    password: str
    token: str
    tanggal_dibuat: datetime
    nama: str
    nik: str
    nomor_ponsel: str
    saldo: int
    riwayat_transaksi: List['RiwayatTransaksi'] = []
    investasi: List['Investasi'] = []
    riwayat_investasi: List['RiwayatInvestasi'] = []
    notifikasi: List['Notifikasi'] = []

    class Config:
        orm_mode = True

class SignInPendana(PendanaBase):
    password: str

class SignUpPendana(PendanaBase):
    password: str
    nama: str
    nik: str
    nomor_ponsel: str
    saldo: int


class InvestasiBase(BaseModel):
    pinjaman_id: int
    pendana_id: int
    jumlah_investasi: int
    keuntungan: int
    tanggal_investasi: datetime

class Investasi(InvestasiBase):
    id: int
    pinjaman: Pinjaman
    pendana: Pendana

    class Config:
        orm_mode = True


class RiwayatInvestasiBase(BaseModel):
    pinjaman_id: int
    pendana_id: int
    jumlah_investasi: int
    keuntungan: int
    tanggal_investasi: datetime
    status: str

class RiwayatInvestasi(RiwayatInvestasiBase):
    id: int
    pinjaman: Pinjaman
    pendana: Pendana

    class Config:
        orm_mode = True


class RiwayatTransaksiPendanaBase(BaseModel):
    pendana_id: int
    jenis: str
    metode_pembayaran: str
    jumlah: int
    timestamp: datetime

class RiwayatTransaksiPendana(RiwayatTransaksiPendanaBase):
    id: int
    pendana: Pendana

    class Config:
        orm_mode = True


class NotifikasiPendanaBase(BaseModel):
    pendana_id: int
    judul: str
    pesan: str
    timestamp: datetime

class NotifikasiPendana(NotifikasiPendanaBase):
    id: int
    pendana: Pendana

    class Config:
        orm_mode = True
