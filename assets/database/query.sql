-- Membuat database
CREATE DATABASE db_umkm_p2p_lending;

-- Menggunakan database
USE db_umkm_p2p_lending;

-- Membuat tabel Peminjam
CREATE TABLE peminjam (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    password VARCHAR(255),
    tanggal_dibuat DATETIME,
    nama VARCHAR(255),
    nik VARCHAR(255),
    nomor_ponsel VARCHAR(255),
    alamat VARCHAR(255),
    saldo INT,
    grade INT,
    jenis_usaha VARCHAR(255),
    provinsi_usaha VARCHAR(255),
    kota_usaha VARCHAR(255),
    pendapatan INT
);

-- Membuat tabel RiwayatTransaksi untuk Peminjam
CREATE TABLE riwayat_transaksi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    peminjam_id INT,
    jenis VARCHAR(255),
    metode_pembayaran VARCHAR(255),
    jumlah INT,
    tanggal_transaksi DATETIME,
    FOREIGN KEY (peminjam_id) REFERENCES Peminjam(id)
);

-- Membuat tabel Pinjaman
CREATE TABLE pinjaman (
    id INT AUTO_INCREMENT PRIMARY KEY,
    peminjam_id INT,
    kode VARCHAR(255),
    tanggal_pinjaman VARCHAR(255),
    jumlah_pinjaman INT,
    tenor INT,
    bunga INT,
    jenis_angsuran VARCHAR(255),
    jumlah_angsuran INT,
    tujuan_pinjaman VARCHAR(255),
    jumlah_didanai INT,
    FOREIGN KEY (peminjam_id) REFERENCES Peminjam(id)
);

-- Membuat tabel RiwayatPinjaman
CREATE TABLE riwayat_pinjaman (
    id INT AUTO_INCREMENT PRIMARY KEY,
    peminjam_id INT,
    tanggal_pinjaman VARCHAR(255),
    jumlah_pinjaman INT,
    tenor INT,
    bunga INT,
    tanggal_selesai VARCHAR(255),
    status VARCHAR(255),
    FOREIGN KEY (peminjam_id) REFERENCES Peminjam(id)
);

-- Membuat tabel Notifikasi untuk Peminjam
CREATE TABLE notifikasi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    peminjam_id INT,
    judul VARCHAR(255),
    pesan VARCHAR(255),
    timestamp DATETIME,
    FOREIGN KEY (peminjam_id) REFERENCES Peminjam(id)
);

-- Membuat tabel Pendana
CREATE TABLE pendana (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255),
    password VARCHAR(255),
    timestamp DATETIME,
    nama VARCHAR(255),
    nik VARCHAR(255),
    nomor_ponsel VARCHAR(255),
    saldo INT
);

-- Membuat tabel RiwayatTransaksi untuk Pendana
CREATE TABLE riwayat_transaksi_pendana (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pendana_id INT,
    jenis VARCHAR(255),
    metode_pembayaran VARCHAR(255),
    jumlah INT,
    tanggal_transaksi DATETIME,
    FOREIGN KEY (pendana_id) REFERENCES Pendana(id)
);

-- Membuat tabel Investasi
CREATE TABLE investasi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pendana_id INT,
    pinjaman_id INT,
    jumlah_investasi INT,
    keuntungan INT,
    tanggal_investasi DATETIME,
    FOREIGN KEY (pendana_id) REFERENCES Pendana(id),
    FOREIGN KEY (pinjaman_id) REFERENCES Pinjaman(id)
);

-- Membuat tabel RiwayatInvestasi
CREATE TABLE riwayat_investasi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pendana_id INT,
    pinjaman_id INT,
    jumlah_investasi INT,
    keuntungan INT,
    tanggal_investasi DATETIME,
    status VARCHAR(255),
    FOREIGN KEY (pendana_id) REFERENCES Pendana(id),
    FOREIGN KEY (pinjaman_id) REFERENCES Pinjaman(id)
);

-- Membuat tabel Notifikasi untuk Pendana
CREATE TABLE notifikasi_pendana (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pendana_id INT,
    judul VARCHAR(255),
    pesan VARCHAR(255),
    tanggal_notifikasi DATETIME,
    FOREIGN KEY (pendana_id) REFERENCES Pendana(id)
);
