//** MODEL */
class User {
  String nama;
  String nik;
  String nomorPonsel;
  String alamat;
  String email;
  String password;
  String jenisUsaha;
  String provinsiUsaha;
  String kotaUsaha;
  int pendapatan;
  List<RiwayatTransaksi> riwayatTransaksi;
  Pinjaman? pinjaman;
  List<RiwayatPinjaman> riwayatPinjaman;

  User({
    required this.nama,
    required this.nik,
    required this.nomorPonsel,
    required this.alamat,
    required this.email,
    required this.password,
    required this.jenisUsaha,
    required this.provinsiUsaha,
    required this.kotaUsaha,
    required this.pendapatan,
    required this.riwayatTransaksi,
    this.pinjaman,
    required this.riwayatPinjaman,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      nama: json['nama'],
      nik: json['nik'],
      nomorPonsel: json['nomor_ponsel'],
      alamat: json['alamat'],
      email: json['email'],
      password: json['password'],
      jenisUsaha: json['jenis_usaha'],
      provinsiUsaha: json['provinsi_usaha'],
      kotaUsaha: json['kota_usaha'],
      pendapatan: json['pendapatan'],
      riwayatTransaksi: List<RiwayatTransaksi>.from(json['riwayat_transaksi']
          .map((transaksiJson) => RiwayatTransaksi.fromJson(transaksiJson))),
      pinjaman: json['pinjaman'] != null ? Pinjaman.fromJson(json['pinjaman']) : null,
      riwayatPinjaman: List<RiwayatPinjaman>.from(json['riwayat_pinjaman']
          .map((pinjamanJson) => RiwayatPinjaman.fromJson(pinjamanJson))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nama': nama,
      'nik': nik,
      'nomor_ponsel': nomorPonsel,
      'alamat': alamat,
      'email': email,
      'password': password,
      'jenis_usaha': jenisUsaha,
      'provinsi_usaha': provinsiUsaha,
      'kota_usaha': kotaUsaha,
      'pendapatan': pendapatan,
      'riwayat_transaksi': riwayatTransaksi.map((transaksi) => transaksi.toJson()).toList(),
      'pinjaman': pinjaman?.toJson(),
      'riwayat_pinjaman': riwayatPinjaman.map((pinjaman) => pinjaman.toJson()).toList(),
    };
  }
}

class RiwayatTransaksi {
  int id;
  String jenis;
  int jumlah;
  String tanggal;

  RiwayatTransaksi({
    required this.id,
    required this.jenis,
    required this.jumlah,
    required this.tanggal,
  });

  factory RiwayatTransaksi.fromJson(Map<String, dynamic> json) {
    return RiwayatTransaksi(
      id: json['id'],
      jenis: json['jenis'],
      jumlah: json['jumlah'],
      tanggal: json['tanggal'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'jenis': jenis,
      'jumlah': jumlah,
      'tanggal': tanggal,
    };
  }
}

class Pinjaman {
  String kode;
  String tanggalPinjaman;
  int jumlahPinjaman;
  int tenor;
  double bunga;
  String jenisAngsuran;
  int jumlahAngsuran;
  String tujuanPinjaman;

  Pinjaman({
    required this.kode,
    required this.tanggalPinjaman,
    required this.jumlahPinjaman,
    required this.tenor,
    required this.bunga,
    required this.jenisAngsuran,
    required this.jumlahAngsuran,
    required this.tujuanPinjaman,
  });

  factory Pinjaman.fromJson(Map<String, dynamic> json) {
    return Pinjaman(
      kode: json['kode'],
      tanggalPinjaman: json['tanggal_pinjaman'],
      jumlahPinjaman: json['jumlah_pinjaman'],
      tenor: json['tenor'],
      bunga: json['bunga'],
      jenisAngsuran: json['jenis_angsuran'],
      jumlahAngsuran: json['jumlah_angsuran'],
      tujuanPinjaman: json['tujuan_pinjaman'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'kode': kode,
      'tanggal_pinjaman': tanggalPinjaman,
      'jumlah_pinjaman': jumlahPinjaman,
      'tenor': tenor,
      'bunga': bunga,
      'jenis_angsuran': jenisAngsuran,
      'jumlah_angsuran': jumlahAngsuran,
      'tujuan_pinjaman': tujuanPinjaman,
    };
  }
}

class RiwayatPinjaman {
  int id;
  String tanggalPinjaman;
  int jumlahPinjaman;
  int tenor;
  double bunga;
  String tanggalSelesai;
  String status;

  RiwayatPinjaman({
    required this.id,
    required this.tanggalPinjaman,
    required this.jumlahPinjaman,
    required this.tenor,
    required this.bunga,
    required this.tanggalSelesai,
    required this.status,
  });

  factory RiwayatPinjaman.fromJson(Map<String, dynamic> json) {
    return RiwayatPinjaman(
      id: json['id'],
      tanggalPinjaman: json['tanggal_pinjaman'],
      jumlahPinjaman: json['jumlah_pinjaman'],
      tenor: json['tenor'],
      bunga: json['bunga'],
      tanggalSelesai: json['tanggal_selesai'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'tanggal_pinjaman': tanggalPinjaman,
      'jumlah_pinjaman': jumlahPinjaman,
      'tenor': tenor,
      'bunga': bunga,
      'tanggal_selesai': tanggalSelesai,
      'status': status,
    };
  }
}