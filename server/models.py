from sqlalchemy import Column, String, Integer, DateTime, ForeignKey, Enum
from sqlalchemy.orm import relationship
import datetime as _dt
import passlib.hash as _hash

from database import Base

"""
User.jenis_user: {"peminjam", "pendana"}
Peminjam.jenis: {"perorangan", "perusahaan"}
Notifikasi.jenis: {"umum", "transaksi", "pendanaan", "status", "pengingat"}
Notifikasi.status: {"masuk", "dibaca"}
Pinjaman.jenis_angsuran: {""}
Pinjaman.status: {"proses", "aktif", "lunas"}
Investasi.status: {"aktif", "selesai"}
"""

# USER
class User(Base):
    __tablename__ = "users"
    
    id = Column(Integer, primary_key=True, index=True)
    email = Column(String, unique=True, nullable=False, index=True)
    password = Column(String, nullable=False)
    tanggal_dibuat = Column(DateTime, default=_dt.datetime.utcnow)
    nama = Column(String)
    nomor_ponsel = Column(String, unique=True)
    saldo = Column(Integer)
    foto = Column(String)
    jenis_user = Column(String)

    peminjam = relationship('Peminjam', back_populates='user')
    pendana = relationship('Pendana', back_populates='user')
    transaksi_pembayaran = relationship('TransaksiPembayaran', back_populates='user')
    notifikasi = relationship('Notifikasi', back_populates='user')
    
    def verify_password(self, password: str):
        return _hash.bcrypt.verify(password, self.password)
    
class TransaksiPembayaran(Base):
    __tablename__ = 'transaksi_pembayaran'
    
    id = Column(Integer, primary_key=True, index=True)
    user_id = Column(Integer, ForeignKey('users.id'))
    jenis = Column(String)
    metode_pembayaran = Column(String)
    jumlah = Column(Integer)
    timestamp = Column(DateTime, default=_dt.datetime.utcnow)
    
    user = relationship('User', back_populates='transaksi_pembayaran')
    
class Notifikasi(Base):
    __tablename__ = 'notifikasi'
    
    id = Column(Integer, primary_key=True)
    user_id = Column(Integer, ForeignKey('users.id'))
    jenis = Column(String)
    judul = Column(String)
    pesan = Column(String)
    status = Column(String)
    timestamp = Column(DateTime, default=_dt.datetime.utcnow)
    
    user = relationship('User', back_populates='notifikasi')
    
# PEMINJAM
class Peminjam(Base):
    __tablename__ = 'peminjam'
    
    id = Column(Integer, primary_key=True, index=True)
    user_id = Column(Integer, ForeignKey('users.id'))
    jenis = Column(String)
    nik = Column(String)
    alamat = Column(String)
    grade = Column(Integer)
    jenis_usaha = Column(String)
    provinsi_usaha = Column(String)
    kota_usaha = Column(String)
    pendapatan = Column(Integer)

    user = relationship('User', back_populates='peminjam')
    pinjaman = relationship('Pinjaman', back_populates='peminjam')
    pembayaran = relationship('Pembayaran', back_populates='peminjam')

class Pinjaman(Base):
    __tablename__ = 'pinjaman'
    
    id = Column(Integer, primary_key=True)
    peminjam_id = Column(Integer, ForeignKey('peminjam.id'))
    kode = Column(String)
    tanggal_pinjaman = Column(DateTime, default=_dt.datetime.utcnow)
    jumlah_pinjaman = Column(Integer)
    tenor = Column(Integer)
    bunga = Column(Integer)
    jenis_angsuran = Column(String)
    jumlah_angsuran = Column(Integer)
    tujuan_pinjaman = Column(String)
    jumlah_didanai = Column(Integer)
    jumlah_pembayaran = Column(Integer)
    tanggal_selesai = Column(String)
    status = Column(String)
    
    peminjam = relationship('Peminjam', back_populates='pinjaman')
    investasi = relationship('Investasi', back_populates='pinjaman')
    pembayaran = relationship('Pembayaran', back_populates='pinjaman')
    
class Pembayaran(Base):
    __tablename__ = 'pembayaran'
    
    id = Column(Integer, primary_key=True)
    pinjaman_id = Column(Integer, ForeignKey('pinjaman.id'))
    peminjam_id = Column(Integer, ForeignKey('peminjam.id'))
    tanggal_tagihan = Column(DateTime, default=_dt.datetime.utcnow)
    tanggal_pembayaran = Column(DateTime)
    jumlah_pembayaran = Column(Integer)
    status = Column(String)
    
    pinjaman = relationship('Pinjaman', back_populates='pembayaran')
    peminjam = relationship('Peminjam', back_populates='pembayaran')

# PENDANA 
class Pendana(Base):
    __tablename__ = 'pendana'
    
    id = Column(Integer, primary_key=True, index=True)
    user_id = Column(Integer, ForeignKey('users.id'))
    
    user = relationship('User', back_populates='pendana')
    investasi = relationship('Investasi', back_populates='pendana')

class Investasi(Base):
    __tablename__ = 'investasi'
    
    id = Column(Integer, primary_key=True)
    pinjaman_id = Column(Integer, ForeignKey('pinjaman.id'))
    pendana_id = Column(Integer, ForeignKey('pendana.id'))
    jumlah_investasi = Column(Integer)
    keuntungan = Column(Integer)
    tanggal_investasi = Column(DateTime, default=_dt.datetime.utcnow)
    status = Column(String)
    
    pinjaman = relationship('Pinjaman', back_populates='investasi')
    pendana = relationship('Pendana', back_populates='investasi')

'''
    
# investasi
def invest(self, jumlah_dana):
        self.jumlah_investasi += jumlah_dana
        self.pinjaman.jumlah_didanai += jumlah_dana
        self.pendana.user.saldo -= jumlah_dana
        self.pinjaman.peminjam.user.saldo += jumlah_dana
        # tambahkan logika lain yang diperlukan
    
    def cancel_investment(self):
        self.pendana.user.saldo += self.jumlah_investasi
        self.pinjaman.jumlah_didanai -= self.jumlah_investasi
        self.status = 'Dibatalkan'
        # tambahkan logika lain yang diperlukan

# pembayaran
def bayar_angsuran(self, jumlah_angsuran):
        if self.jumlah_pembayaran >= jumlah_angsuran:
            self.peminjam.user.saldo -= jumlah_angsuran
            self.pendana.user.saldo += jumlah_angsuran
            self.jumlah_pembayaran -= jumlah_angsuran
            # tambahkan logika lain yang diperlukan
        else:
            # tambahkan logika jika jumlah pembayaran tidak mencukupi
            pass
'''