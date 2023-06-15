import 'dart:convert';

class User {
  final int id;
  final String email;
  final String password;
  final DateTime tanggalDibuat;
  final String nama;
  final String nomorPonsel;
  final int saldo;
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
      notifikasi: List<Notifikasi>.from((map['notifikasi'] ?? []).map((x) => Notifikasi.fromMap(x))),
      transaksiPembayaran: List<TransaksiPembayaran>.from((map['transaksi_pembayaran'] ?? []).map((x) => TransaksiPembayaran.fromMap(x))),
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
      'transaksi_pembayaran': transaksiPembayaran.map((x) => x.toMap()).toList(),
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
}
