from sqlalchemy import Column, String, Integer, DateTime, ForeignKey
from sqlalchemy.orm import relationship
import datetime as _dt
import passlib.hash as _hash

from database import Base


class User(Base):
    __tablename__ = "users"
    id = Column(Integer, primary_key=True, index=True)
    email = Column(String, unique=True, index=True)
    username = Column(String)
    password = Column(String)
    date_created = Column(DateTime, default=_dt.datetime.utcnow)

    def verify_password(self, password: str):
        return _hash.bcrypt.verify(password, self.password)
    
# PEMINJAM
class Peminjam(Base):
    __tablename__ = 'peminjam'
    
    id = Column(Integer, primary_key=True, index=True)
    email = Column(String, unique=True, nullable=False, index=True)
    password = Column(String, nullable=False)
    tanggal_dibuat = Column(DateTime, default=_dt.datetime.utcnow)
    nama = Column(String)
    nik = Column(String)
    nomor_ponsel = Column(String)
    alamat = Column(String)
    saldo = Column(Integer)
    grade = Column(Integer)
    jenis_usaha = Column(String)
    provinsi_usaha = Column(String)
    kota_usaha = Column(String)
    pendapatan = Column(Integer)
    
    riwayat_transaksi = relationship('RiwayatTransaksi', back_populates='peminjam')
    pinjaman = relationship('Pinjaman', back_populates='peminjam')
    riwayat_pinjaman = relationship('RiwayatPinjaman', back_populates='peminjam')
    notifikasi = relationship('Notifikasi', back_populates='peminjam')

class Pinjaman(Base):
    __tablename__ = 'pinjaman'
    
    id = Column(Integer, primary_key=True)
    peminjam_id = Column(Integer, ForeignKey('peminjam.id'))
    kode = Column(String)
    tanggal_pinjaman = Column(DateTime)
    jumlah_pinjaman = Column(Integer)
    tenor = Column(Integer)
    bunga = Column(Integer)
    jenis_angsuran = Column(String)
    jumlah_angsuran = Column(Integer)
    tujuan_pinjaman = Column(String)
    jumlah_didanai = Column(Integer)
    
    peminjam = relationship('Peminjam', back_populates='pinjaman')
    investasi = relationship('Investasi', back_populates='pinjaman')
    
class RiwayatPinjaman(Base):
    __tablename__ = 'riwayat_pinjaman'
    
    id = Column(Integer, primary_key=True)
    peminjam_id = Column(Integer, ForeignKey('peminjam.id'))
    tanggal_pinjaman = Column(String)
    jumlah_pinjaman = Column(Integer)
    tenor = Column(Integer)
    bunga = Column(Integer)
    tanggal_selesai = Column(String)
    status = Column(String)
    
    peminjam = relationship('Peminjam', back_populates='riwayat_pinjaman')
    
class RiwayatTransaksi(Base):
    __tablename__ = 'riwayat_transaksi'
    
    id = Column(Integer, primary_key=True)
    peminjam_id = Column(Integer, ForeignKey('peminjam.id'))
    jenis = Column(String)
    metode_pembayaran = Column(String)
    jumlah = Column(Integer)
    timestamp = Column(DateTime)
    
    peminjam = relationship('Peminjam', back_populates='riwayat_transaksi')

class Notifikasi(Base):
    __tablename__ = 'notifikasi'
    
    id = Column(Integer, primary_key=True)
    peminjam_id = Column(Integer, ForeignKey('peminjam.id'))
    judul = Column(String)
    pesan = Column(String)
    timestamp = Column(DateTime)
    
    peminjam = relationship('Peminjam', back_populates='notifikasi')

# PENDANA 
class Pendana(Base):
    __tablename__ = 'pendana'
    
    id = Column(Integer, primary_key=True, index=True)
    email = Column(String, unique=True, nullable=False, index=True)
    password = Column(String, nullable=False)
    waktu_dibuat = Column(DateTime, default=_dt.datetime.utcnow)
    nama = Column(String)
    nik = Column(String)
    nomor_ponsel = Column(String)
    saldo = Column(Integer)
    
    riwayat_transaksi = relationship('RiwayatTransaksi', back_populates='pendana')
    investasi = relationship('Investasi', back_populates='pendana')
    riwayat_investasi = relationship('RiwayatInvestasi', back_populates='pendana')
    notifikasi = relationship('Notifikasi', back_populates='pendana')

class Investasi(Base):
    __tablename__ = 'investasi'
    
    id = Column(Integer, primary_key=True)
    pinjaman_id = Column(Integer, ForeignKey('pinjaman.id'))
    pendana_id = Column(Integer, ForeignKey('pendana.id'))
    jumlah_investasi = Column(Integer)
    keuntungan = Column(Integer)
    tanggal_investasi = Column(DateTime)
    
    pinjaman = relationship('Pinjaman', back_populates='investasi')
    pendana = relationship('Pendana', back_populates='investasi')

class RiwayatInvestasi(Base):
    __tablename__ = 'riwayat_investasi'
    
    id = Column(Integer, primary_key=True)
    pinjaman_id = Column(Integer, ForeignKey('pinjaman.id'))
    pendana_id = Column(Integer, ForeignKey('pendana.id'))
    jumlah_investasi = Column(Integer)
    keuntungan = Column(Integer)
    tanggal_investasi = Column(DateTime)
    status = Column(String)
    
    pinjaman = relationship('Pinjaman', back_populates='riwayat_investasi')
    pendana = relationship('Pendana', back_populates='riwayat_investasi')
    
class RiwayatTransaksiPendana(Base):
    __tablename__ = 'riwayat_transaksi_pendana'
    
    id = Column(Integer, primary_key=True)
    pendana_id = Column(Integer, ForeignKey('pendana.id'))
    jenis = Column(String)
    metode_pembayaran = Column(String)
    jumlah = Column(Integer)
    timestamp = Column(DateTime)
    
    pendana = relationship('pendana', back_populates='riwayat_transaksi_pendana')

class NotifikasiPendana(Base):
    __tablename__ = 'notifikasi_pendana'
    
    id = Column(Integer, primary_key=True)
    pendana_id = Column(Integer, ForeignKey('pendana.id'))
    judul = Column(String)
    pesan = Column(String)
    timestamp = Column(DateTime)
    
    pendana = relationship('pendana', back_populates='notifikasi_pendana')
