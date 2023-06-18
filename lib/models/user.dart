import 'dart:convert';

class User {
  final int id;
  final String email;
  final String password;
  final DateTime tanggalDibuat;
  final String nama;
  final String nomorPonsel;
  late final int saldo;
  final String foto;
  final String jenisUser;
  final List<Notifikasi> notifikasi;
  final List<TransaksiPembayaran> transaksiPembayaran;
  final String token;

  User({
    required this.id,
    required this.email,
    required this.password,
    required this.tanggalDibuat,
    required this.nama,
    required this.nomorPonsel,
    required this.saldo,
    required this.foto,
    required this.jenisUser,
    required this.notifikasi,
    required this.transaksiPembayaran,
    required this.token,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? 0,
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      tanggalDibuat: DateTime.parse(map['tanggal_dibuat'] ?? ''),
      nama: map['nama'] ?? '',
      nomorPonsel: map['nomor_ponsel'] ?? '',
      saldo: map['saldo'] ?? 0,
      foto: map['foto'] ?? '',
      jenisUser: map['jenis_user'] ?? '',
      notifikasi: List<Notifikasi>.from(
          (map['notifikasi'] ?? []).map((x) => Notifikasi.fromMap(x))),
      transaksiPembayaran: List<TransaksiPembayaran>.from(
          (map['transaksi_pembayaran'] ?? [])
              .map((x) => TransaksiPembayaran.fromMap(x))),
      token: map['token'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'password': password,
      'tanggal_dibuat': tanggalDibuat.toIso8601String(),
      'nama': nama,
      'nomor_ponsel': nomorPonsel,
      'saldo': saldo,
      'foto': foto,
      'jenis_user': jenisUser,
      'notifikasi': notifikasi.map((x) => x.toMap()).toList(),
      'transaksi_pembayaran':
          transaksiPembayaran.map((x) => x.toMap()).toList(),
      'token': token,
    };
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}

class Notifikasi {
  final int id;
  final int userId;
  final String jenis;
  final String judul;
  final String pesan;
  final DateTime timestamp;

  Notifikasi({
    required this.id,
    required this.userId,
    required this.jenis,
    required this.judul,
    required this.pesan,
    required this.timestamp,
  });

  factory Notifikasi.fromMap(Map<String, dynamic> map) {
    return Notifikasi(
      id: map['id'] ?? 0,
      userId: map['user_id'] ?? 0,
      jenis: map['jenis'] ?? '',
      judul: map['judul'] ?? '',
      pesan: map['pesan'] ?? '',
      timestamp: DateTime.parse(map['timestamp'] ?? ''),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'user_id': userId,
      'jenis': jenis,
      'judul': judul,
      'pesan': pesan,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  String toJson() => json.encode(toMap());

  factory Notifikasi.fromJson(String source) => Notifikasi.fromMap(json.decode(source));

}

class TransaksiPembayaran {
  final int id;
  final int userId;
  final String jenis;
  final String metodePembayaran;
  final int jumlah;
  final DateTime timestamp;

  TransaksiPembayaran({
    required this.id,
    required this.userId,
    required this.jenis,
    required this.metodePembayaran,
    required this.jumlah,
    required this.timestamp,
  });

  factory TransaksiPembayaran.fromMap(Map<String, dynamic> map) {
    return TransaksiPembayaran(
      id: map['id'] ?? 0,
      userId: map['user_id'] ?? 0,
      jenis: map['jenis'] ?? '',
      metodePembayaran: map['metode_pembayaran'] ?? '',
      jumlah: map['jumlah'] ?? 0,
      timestamp: DateTime.parse(map['timestamp'] ?? ''),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'user_id': userId,
      'jenis': jenis,
      'metode_pembayaran': metodePembayaran,
      'jumlah': jumlah,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  String toJson() => json.encode(toMap());

  factory TransaksiPembayaran.fromJson(String source) => TransaksiPembayaran.fromMap(json.decode(source));
}

// PENDANA

// class Pendana {
//   final int id;
//   final String email;
//   final String password;
//   final DateTime tanggalDibuat;
//   final String nama;
//   final String nomorPonsel;
//   final int saldo;
//   final String foto;
//   final String jenisUser;
//   final List<Notifikasi> notifikasi;
//   final List<TransaksiPembayaran> transaksiPembayaran;
//   final String token;
//   final int pendana_id;
//   final List<Investasi> investasi;

//   Pendana({
//     required this.id,
//     required this.email,
//     required this.password,
//     required this.tanggalDibuat,
//     required this.nama,
//     required this.nomorPonsel,
//     required this.saldo,
//     required this.foto,
//     required this.jenisUser,
//     required this.notifikasi,
//     required this.transaksiPembayaran,
//     required this.token,
//     required this.pendana_id,
//     required this.investasi,
//   });

//   factory Pendana.fromMap(Map<String, dynamic> map) {
//     return Pendana(
//       id: map['id'] ?? 0,
//       email: map['email'] ?? '',
//       password: map['password'] ?? '',
//       tanggalDibuat: DateTime.parse(map['tanggal_dibuat'] ?? ''),
//       nama: map['nama'] ?? '',
//       nomorPonsel: map['nomor_ponsel'] ?? '',
//       saldo: map['saldo'] ?? 0,
//       foto: map['foto'] ?? '',
//       jenisUser: map['jenis_user'] ?? '',
//       notifikasi: List<Notifikasi>.from(
//           (map['notifikasi'] ?? []).map((x) => Notifikasi.fromMap(x))),
//       transaksiPembayaran: List<TransaksiPembayaran>.from(
//           (map['transaksi_pembayaran'] ?? [])
//               .map((x) => TransaksiPembayaran.fromMap(x))),
//       token: map['token'] ?? '',
//       pendana_id: map['pendana_id'] ?? 0,
//       investasi: List<Investasi>.from(
//           (map['investasi'] ?? []).map((x) => Investasi.fromMap(x))),
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'email': email,
//       'password': password,
//       'tanggal_dibuat': tanggalDibuat.toIso8601String(),
//       'nama': nama,
//       'nomor_ponsel': nomorPonsel,
//       'saldo': saldo,
//       'foto': foto,
//       'jenis_user': jenisUser,
//       'notifikasi': notifikasi.map((x) => x.toMap()).toList(),
//       'transaksi_pembayaran':
//           transaksiPembayaran.map((x) => x.toMap()).toList(),
//       'token': token,
//       'pendana_id': pendana_id,
//       'investasi': investasi.map((x) => x.toMap()).toList(),
//     };
//   }

//   String toJson() => json.encode(toMap());

//   factory Pendana.fromJson(String source) =>
//       Pendana.fromMap(json.decode(source));
// }

class Investasi {
  final int id;
  final int pinjamanId;
  final int pendanaId;
  final int jumlahInvestasi;
  final int keuntungan;
  final DateTime tanggalInvestasi;
  final String status;

  Investasi({
    required this.id,
    required this.pinjamanId,
    required this.pendanaId,
    required this.jumlahInvestasi,
    required this.keuntungan,
    required this.tanggalInvestasi,
    required this.status,
  });

  factory Investasi.fromMap(Map<String, dynamic> map) {
    return Investasi(
      id: map['id'] ?? 0,
      pinjamanId: map['pinjaman_id'] ?? 0,
      pendanaId: map['pendana_id'] ?? 0,
      jumlahInvestasi: map['jumlah_investasi'] ?? 0,
      keuntungan: map['keuntungan'] ?? 0,
      tanggalInvestasi: DateTime.parse(map['tanggal_investasi'] ?? ''),
      status: map['status'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'pinjaman_id': pinjamanId,
      'pendana_id': pendanaId,
      'jumlah_investasi': jumlahInvestasi,
      'keuntungan': keuntungan,
      'tanggal_investasi': tanggalInvestasi.toIso8601String(),
      'status': status,
    };
  }

  String toJson() => json.encode(toMap());

  factory Investasi.fromJson(String source) => Investasi.fromMap(json.decode(source));
}

// PEMINJAM

// class Peminjam {
//   final int id;
//   final String email;
//   final String password;
//   final DateTime tanggalDibuat;
//   final String nama;
//   final String nomorPonsel;
//   final int saldo;
//   final String foto;
//   final String jenisUser;
//   final List<Notifikasi> notifikasi;
//   final List<TransaksiPembayaran> transaksiPembayaran;
//   final String token;
//   final int peminjamId;
//   final String jenis;
//   final String nik;
//   final String alamat;
//   final int grade;
//   final String jenisUsaha;
//   final String provinsiUsaha;
//   final String kotaUsaha;
//   final int pendapatan;
//   final List<Pinjaman> pinjaman;
//   final List<Pembayaran> pembayaran;

//   Peminjam({
//     required this.id,
//     required this.email,
//     required this.password,
//     required this.tanggalDibuat,
//     required this.nama,
//     required this.nomorPonsel,
//     required this.saldo,
//     required this.foto,
//     required this.jenisUser,
//     required this.notifikasi,
//     required this.transaksiPembayaran,
//     required this.token,
//     required this.peminjamId,
//     required this.jenis,
//     required this.nik,
//     required this.alamat,
//     required this.grade,
//     required this.jenisUsaha,
//     required this.provinsiUsaha,
//     required this.kotaUsaha,
//     required this.pendapatan,
//     required this.pinjaman,
//     required this.pembayaran,
//   });

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'email': email,
//       'password': password,
//       'tanggal_dibuat': tanggalDibuat.toIso8601String(),
//       'nama': nama,
//       'nomor_ponsel': nomorPonsel,
//       'saldo': saldo,
//       'foto': foto,
//       'jenis_user': jenisUser,
//       'notifikasi': notifikasi.map((x) => x.toMap()).toList(),
//       'transaksi_pembayaran':
//           transaksiPembayaran.map((x) => x.toMap()).toList(),
//       'token': token,
//       'peminjam_id': peminjamId,
//       'jenis': jenis,
//       'nik': nik,
//       'alamat': alamat,
//       'grade': grade,
//       'jenis_usaha': jenisUsaha,
//       'provinsi_usaha': provinsiUsaha,
//       'kota_usaha': kotaUsaha,
//       'pendapatan': pendapatan,
//       'pinjaman': pinjaman.map((pinjaman) => pinjaman.toMap()).toList(),
//       'pembayaran': pembayaran.map((pembayaran) => pembayaran.toMap()).toList(),
//     };
//   }

//   factory Peminjam.fromMap(Map<String, dynamic> map) {
//     return Peminjam(
//       id: map['id'] ?? 0,
//       email: map['email'] ?? '',
//       password: map['password'] ?? '',
//       tanggalDibuat: DateTime.parse(map['tanggal_dibuat'] ?? ''),
//       nama: map['nama'] ?? '',
//       nomorPonsel: map['nomor_ponsel'] ?? '',
//       saldo: map['saldo'] ?? 0,
//       foto: map['foto'] ?? '',
//       jenisUser: map['jenis_user'] ?? '',
//       notifikasi: List<Notifikasi>.from(
//           (map['notifikasi'] ?? []).map((x) => Notifikasi.fromMap(x))),
//       transaksiPembayaran: List<TransaksiPembayaran>.from(
//           (map['transaksi_pembayaran'] ?? [])
//               .map((x) => TransaksiPembayaran.fromMap(x))),
//       token: map['token'] ?? '',
//       peminjamId: map['peminjam_id'] ?? 0,
//       jenis: map['jenis'] ?? '',
//       nik: map['nik'] ?? '',
//       alamat: map['alamat'] ?? '',
//       grade: map['grade'] ?? 0,
//       jenisUsaha: map['jenis_usaha'] ?? '',
//       provinsiUsaha: map['provinsi_usaha'] ?? '',
//       kotaUsaha: map['kota_usaha'] ?? '',
//       pendapatan: map['pendapatan'] ?? 0,
//       pinjaman: List<Pinjaman>.from(
//           map['pinjaman']?.map((pinjaman) => Pinjaman.fromMap(pinjaman)) ?? []),
//       pembayaran: List<Pembayaran>.from(map['pembayaran']
//               ?.map((pembayaran) => Pembayaran.fromMap(pembayaran)) ??
//           []),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Peminjam.fromJson(String source) =>
//       Peminjam.fromMap(json.decode(source));
// }

class Pinjaman {
  final int id;
  final int peminjamId;
  final String kode;
  final DateTime tanggalPinjaman;
  final int jumlahPinjaman;
  final int tenor;
  final int bunga;
  final String jenisAngsuran;
  final int jumlahAngsuran;
  final String tujuanPinjaman;
  final int jumlahDidanai;
  final int jumlahPembayaran;
  final String tanggalSelesai;
  final String status;

  Pinjaman({
    required this.id,
    required this.peminjamId,
    required this.kode,
    required this.tanggalPinjaman,
    required this.jumlahPinjaman,
    required this.tenor,
    required this.bunga,
    required this.jenisAngsuran,
    required this.jumlahAngsuran,
    required this.tujuanPinjaman,
    required this.jumlahDidanai,
    required this.jumlahPembayaran,
    required this.tanggalSelesai,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'peminjam_id': peminjamId,
      'kode': kode,
      'tanggal_pinjaman': tanggalPinjaman.toIso8601String(),
      'jumlah_pinjaman': jumlahPinjaman,
      'tenor': tenor,
      'bunga': bunga,
      'jenis_angsuran': jenisAngsuran,
      'jumlah_angsuran': jumlahAngsuran,
      'tujuan_pinjaman': tujuanPinjaman,
      'jumlah_didanai': jumlahDidanai,
      'jumlah_pembayaran': jumlahPembayaran,
      'tanggal_selesai': tanggalSelesai,
      'status': status,
    };
  }

  factory Pinjaman.fromMap(Map<String, dynamic> map) {
    return Pinjaman(
      id: map['id'] ?? 0,
      peminjamId: map['peminjam_id'] ?? 0,
      kode: map['kode'] ?? '',
      tanggalPinjaman: DateTime.parse(map['tanggal_pinjaman']),
      jumlahPinjaman: map['jumlah_pinjaman'] ?? 0,
      tenor: map['tenor'] ?? 0,
      bunga: map['bunga'] ?? 0,
      jenisAngsuran: map['jenis_angsuran'] ?? '',
      jumlahAngsuran: map['jumlah_angsuran'] ?? 0,
      tujuanPinjaman: map['tujuan_pinjaman'] ?? '',
      jumlahDidanai: map['jumlah_didanai'] ?? 0,
      jumlahPembayaran: map['jumlah_pembayaran'] ?? 0,
      tanggalSelesai: map['tanggal_selesai'] ?? '',
      status: map['status'] ?? '',
    );
  }
}

class Pembayaran {
  final int id;
  final int pinjamanId;
  final int peminjamId;
  final DateTime tanggalPembayaran;
  final int jumlahPembayaran;

  Pembayaran({
    required this.id,
    required this.pinjamanId,
    required this.peminjamId,
    required this.tanggalPembayaran,
    required this.jumlahPembayaran,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'pinjaman_id': pinjamanId,
      'peminjam_id': peminjamId,
      'tanggal_pembayaran': tanggalPembayaran.toIso8601String(),
      'jumlah_pembayaran': jumlahPembayaran,
    };
  }

  factory Pembayaran.fromMap(Map<String, dynamic> map) {
    return Pembayaran(
      id: map['id'] ?? 0,
      pinjamanId: map['pinjaman_id'] ?? 0,
      peminjamId: map['peminjam_id'] ?? 0,
      tanggalPembayaran: DateTime.parse(map['tanggal_pembayaran']),
      jumlahPembayaran: map['jumlah_pembayaran'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Pembayaran.fromJson(String source) => Pembayaran.fromMap(json.decode(source));
}

class Pendana extends User {
  final int pendanaId;
  final List<Investasi> investasi;

  Pendana({
    required int id,
    required String email,
    required String password,
    required DateTime tanggalDibuat,
    required String nama,
    required String nomorPonsel,
    required int saldo,
    required String foto,
    required String jenisUser,
    required List<Notifikasi> notifikasi,
    required List<TransaksiPembayaran> transaksiPembayaran,
    required String token,
    required this.pendanaId,
    required this.investasi,
  }) : super(
          id: id,
          email: email,
          password: password,
          tanggalDibuat: tanggalDibuat,
          nama: nama,
          nomorPonsel: nomorPonsel,
          saldo: saldo,
          foto: foto,
          jenisUser: jenisUser,
          notifikasi: notifikasi,
          transaksiPembayaran: transaksiPembayaran,
          token: token,
        );

  factory Pendana.fromMap(Map<String, dynamic> map) {
    return Pendana(
      id: map['id'] ?? 0,
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      tanggalDibuat: DateTime.parse(map['tanggal_dibuat'] ?? ''),
      nama: map['nama'] ?? '',
      nomorPonsel: map['nomor_ponsel'] ?? '',
      saldo: map['saldo'] ?? 0,
      foto: map['foto'] ?? '',
      jenisUser: map['jenis_user'] ?? '',
      notifikasi: List<Notifikasi>.from(
          (map['notifikasi'] ?? []).map((x) => Notifikasi.fromMap(x))),
      transaksiPembayaran: List<TransaksiPembayaran>.from(
          (map['transaksi_pembayaran'] ?? [])
              .map((x) => TransaksiPembayaran.fromMap(x))),
      token: map['token'] ?? '',
      pendanaId: map['pendana_id'] ?? 0,
      investasi: List<Investasi>.from(
          (map['investasi'] ?? []).map((x) => Investasi.fromMap(x))),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    final map = super.toMap();
    map['pendana_id'] = pendanaId;
    map['investasi'] = investasi.map((x) => x.toMap()).toList();
    return map;
  }

    String toJson() => json.encode(toMap());

    factory Pendana.fromJson(String source) =>
        Pendana.fromMap(json.decode(source));
}

class Peminjam extends User {
  final int peminjamId;
  final String jenis;
  final String nik;
  final String alamat;
  final int grade;
  final String jenisUsaha;
  final String provinsiUsaha;
  final String kotaUsaha;
  final int pendapatan;
  final List<Pinjaman> pinjaman;
  final List<Pembayaran> pembayaran;

  Peminjam({
    required int id,
    required String email,
    required String password,
    required DateTime tanggalDibuat,
    required String nama,
    required String nomorPonsel,
    required int saldo,
    required String foto,
    required String jenisUser,
    required List<Notifikasi> notifikasi,
    required List<TransaksiPembayaran> transaksiPembayaran,
    required String token,
    required this.peminjamId,
    required this.jenis,
    required this.nik,
    required this.alamat,
    required this.grade,
    required this.jenisUsaha,
    required this.provinsiUsaha,
    required this.kotaUsaha,
    required this.pendapatan,
    required this.pinjaman,
    required this.pembayaran,
  }) : super(
          id: id,
          email: email,
          password: password,
          tanggalDibuat: tanggalDibuat,
          nama: nama,
          nomorPonsel: nomorPonsel,
          saldo: saldo,
          foto: foto,
          jenisUser: jenisUser,
          notifikasi: notifikasi,
          transaksiPembayaran: transaksiPembayaran,
          token: token,
        );

  factory Peminjam.fromMap(Map<String, dynamic> map) {
    return Peminjam(
      id: map['id'] ?? 0,
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      tanggalDibuat: DateTime.parse(map['tanggal_dibuat'] ?? ''),
      nama: map['nama'] ?? '',
      nomorPonsel: map['nomor_ponsel'] ?? '',
      saldo: map['saldo'] ?? 0,
      foto: map['foto'] ?? '',
      jenisUser: map['jenis_user'] ?? '',
      notifikasi: List<Notifikasi>.from(
          (map['notifikasi'] ?? []).map((x) => Notifikasi.fromMap(x))),
      transaksiPembayaran: List<TransaksiPembayaran>.from(
          (map['transaksi_pembayaran'] ?? [])
              .map((x) => TransaksiPembayaran.fromMap(x))),
      token: map['token'] ?? '',
      peminjamId: map['peminjam_id'] ?? 0,
      jenis: map['jenis'] ?? '',
      nik: map['nik'] ?? '',
      alamat: map['alamat'] ?? '',
      grade: map['grade'] ?? 0,
      jenisUsaha: map['jenis_usaha'] ?? '',
      provinsiUsaha: map['provinsi_usaha'] ?? '',
      kotaUsaha: map['kota_usaha'] ?? '',
      pendapatan: map['pendapatan'] ?? 0,
      pinjaman: List<Pinjaman>.from(
          map['pinjaman']?.map((pinjaman) => Pinjaman.fromMap(pinjaman)) ?? []),
      pembayaran: List<Pembayaran>.from(map['pembayaran']
              ?.map((pembayaran) => Pembayaran.fromMap(pembayaran)) ??
          []),
    );
  }

  @override
  Map<String, dynamic> toMap() {
    final map = super.toMap();
    map['peminjam_id'] = peminjamId;
    map['jenis'] = jenis;
    map['nik'] = nik;
    map['alamat'] = alamat;
    map['grade'] = grade;
    map['jenis_usaha'] = jenisUsaha;
    map['provinsi_usaha'] = provinsiUsaha;
    map['kota_usaha'] = kotaUsaha;
    map['pendapatan'] = pendapatan;
    map['pinjaman'] = pinjaman.map((pinjaman) => pinjaman.toMap()).toList();
    map['pembayaran'] =
        pembayaran.map((pembayaran) => pembayaran.toMap()).toList();
    return map;
  }

  String toJson() => json.encode(toMap());

  factory Peminjam.fromJson(String source) =>
      Peminjam.fromMap(json.decode(source));
}