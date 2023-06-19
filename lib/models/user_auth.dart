import 'dart:convert';

// PENDANA
class SignUpPendanaAuth {
  final String email;
  final String password;
  final String nama;
  final String nomorPonsel;
  final String jenisUser;
  final int userId;

  SignUpPendanaAuth(this.email, this.password, this.nama, this.nomorPonsel,
      this.jenisUser, this.userId);

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'email': email});
    result.addAll({'password': password});
    result.addAll({'nama': nama});
    result.addAll({'nomor_ponsel': nomorPonsel});
    result.addAll({'jenis_user': jenisUser});
    result.addAll({'user_id': userId});

    return result;
  }

  factory SignUpPendanaAuth.fromMap(Map<String, dynamic> map) {
    return SignUpPendanaAuth(
      map['email'] ?? '',
      map['password'] ?? '',
      map['nama'] ?? '',
      map['nomor_ponsel'] ?? '',
      map['jenis_user'] ?? '',
      map['user_id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SignUpPendanaAuth.fromJson(String source) =>
      SignUpPendanaAuth.fromMap(json.decode(source));
}

class UpdatePendanaAuth {
  final String email;
  final String nama;
  final String nomorPonsel;
  final String pathFoto;

  UpdatePendanaAuth(this.email, this.nama, this.nomorPonsel, this.pathFoto);

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'email': email});
    result.addAll({'nama': nama});
    result.addAll({'nomor_ponsel': nomorPonsel});
    result.addAll({'foto': pathFoto});
    return result;
  }

  factory UpdatePendanaAuth.fromMap(Map<String, dynamic> map) {
    return UpdatePendanaAuth(
      map['email'] ?? '',
      map['nama'] ?? '',
      map['nomor_ponsel'] ?? '',
      map['foto'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UpdatePendanaAuth.fromJson(String source) =>
      UpdatePendanaAuth.fromMap(json.decode(source));
}

// PEMINJAM
class SignUpPeminjamAuth {
  final String email;
  final String password;
  final String nama;
  final String nomorPonsel;
  final String jenisUser;
  final int userId;
  final String jenis;
  final String nik;
  final String alamat;
  final String jenisUsaha;
  final String provinsiUsaha;
  final String kotaUsaha;
  final int pendapatan;

  SignUpPeminjamAuth({
    required this.email,
    required this.password,
    required this.nama,
    required this.nomorPonsel,
    required this.jenisUser,
    required this.userId,
    required this.jenis,
    required this.nik,
    required this.alamat,
    required this.jenisUsaha,
    required this.provinsiUsaha,
    required this.kotaUsaha,
    required this.pendapatan,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'nama': nama,
      'nomor_ponsel': nomorPonsel,
      'jenis_user': jenisUser,
      'user_id': userId,
      'jenis': jenis,
      'nik': nik,
      'alamat': alamat,
      'jenis_usaha': jenisUsaha,
      'provinsi_usaha': provinsiUsaha,
      'kota_usaha': kotaUsaha,
      'pendapatan': pendapatan,
    };
  }

  factory SignUpPeminjamAuth.fromMap(Map<String, dynamic> map) {
    return SignUpPeminjamAuth(
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      nama: map['nama'] ?? '',
      nomorPonsel: map['nomor_ponsel'] ?? '',
      jenisUser: map['jenis_user'] ?? '',
      userId: map['user_id'] ?? 0,
      jenis: map['jenis'] ?? '',
      nik: map['nik'] ?? '',
      alamat: map['alamat'] ?? '',
      jenisUsaha: map['jenis_usaha'] ?? '',
      provinsiUsaha: map['provinsi_usaha'] ?? '',
      kotaUsaha: map['kota_usaha'] ?? '',
      pendapatan: map['pendapatan'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory SignUpPeminjamAuth.fromJson(String source) =>
      SignUpPeminjamAuth.fromMap(json.decode(source));
}

class UpdatePeminjamAuth {
  final String email;
  final String nama;
  final String nomorPonsel;
  final String pathFoto;
  final String nik;
  final String alamat;
  final String jenisUsaha;
  final String provinsi;
  final String kota;
  final int pendapatan;

  UpdatePeminjamAuth(
      this.email,
      this.nama,
      this.nomorPonsel,
      this.pathFoto,
      this.nik,
      this.jenisUsaha,
      this.provinsi,
      this.kota,
      this.pendapatan,
      this.alamat);

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'email': email});
    result.addAll({'nama': nama});
    result.addAll({'nomor_ponsel': nomorPonsel});
    result.addAll({'foto': pathFoto});
    result.addAll({'nik': nik});
    result.addAll({'alamat': alamat});
    result.addAll({'jenis_usaha': jenisUsaha});
    result.addAll({'provinsi_usaha': provinsi});
    result.addAll({'kota_usaha': kota});
    result.addAll({'pendapatan': pendapatan});
    return result;
  }

  factory UpdatePeminjamAuth.fromMap(Map<String, dynamic> map) {
    return UpdatePeminjamAuth(
      map['email'] ?? '',
      map['nama'] ?? '',
      map['nomor_ponsel'] ?? '',
      map['foto'] ?? '',
      map['nik'] ?? '',
      map['alamat'] ?? '',
      map['jenis_usaha'] ?? '',
      map['provinsi_usaha'] ?? '',
      map['kota_usaha'] ?? '',
      map['pendapatan'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UpdatePeminjamAuth.fromJson(String source) =>
      UpdatePeminjamAuth.fromMap(json.decode(source));
}

class AjukanPeminjamanAuth {
  final String tujuan;
  final int jumlah;

  AjukanPeminjamanAuth(this.tujuan, this.jumlah);

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'jumlah_pinjaman': jumlah});
    result.addAll({'tujuan_pinjaman': tujuan});
    return result;
  }

  factory AjukanPeminjamanAuth.fromMap(Map<String, dynamic> map) {
    return AjukanPeminjamanAuth(
      map['tujuan_pinjaman'] ?? '',
      map['jumlah_pinjaman'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AjukanPeminjamanAuth.fromJson(String source) =>
      AjukanPeminjamanAuth.fromMap(json.decode(source));
}

class SignUpUserAuth {
  final String email;
  final String password;
  final String nama;
  final String nomorPonsel;
  final String jenisUser;

  SignUpUserAuth(
      this.email, this.password, this.nama, this.nomorPonsel, this.jenisUser);

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'email': email});
    result.addAll({'password': password});
    result.addAll({'nama': nama});
    result.addAll({'nomor_ponsel': nomorPonsel});
    result.addAll({'jenis_user': jenisUser});

    return result;
  }

  factory SignUpUserAuth.fromMap(Map<String, dynamic> map) {
    return SignUpUserAuth(
      map['email'] ?? '',
      map['password'] ?? '',
      map['nama'] ?? '',
      map['nomor_ponsel'] ?? '',
      map['jenis_user'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SignUpUserAuth.fromJson(String source) =>
      SignUpUserAuth.fromMap(json.decode(source));
}

class SignInUserAuth {
  final String email;
  final String password;

  SignInUserAuth(this.email, this.password);

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'email': email});
    result.addAll({'password': password});

    return result;
  }

  factory SignInUserAuth.fromMap(Map<String, dynamic> map) {
    return SignInUserAuth(
      map['email'] ?? '',
      map['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SignInUserAuth.fromJson(String source) =>
      SignInUserAuth.fromMap(json.decode(source));
}

// transaksi Pembayaran
class AddTransaksiPembayaran {
  final String jenis;
  final String metodePembayaran;
  final int jumlah;

  AddTransaksiPembayaran({
    required this.jenis,
    required this.metodePembayaran,
    required this.jumlah,
  });

  factory AddTransaksiPembayaran.fromMap(Map<String, dynamic> map) {
    return AddTransaksiPembayaran(
      jenis: map['jenis'] ?? '',
      metodePembayaran: map['metode_pembayaran'] ?? '',
      jumlah: map['jumlah'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'jenis': jenis,
      'metode_pembayaran': metodePembayaran,
      'jumlah': jumlah,
    };
  }

  String toJson() => json.encode(toMap());

  factory AddTransaksiPembayaran.fromJson(String source) =>
      AddTransaksiPembayaran.fromMap(json.decode(source));
}

// Investasi
class AddInvestasi {
  final int pinjamanId;
  final int jumlahInvestasi;

  AddInvestasi({
    required this.pinjamanId,
    required this.jumlahInvestasi,
  });

  factory AddInvestasi.fromMap(Map<String, dynamic> map) {
    return AddInvestasi(
      pinjamanId: map['pinjaman_id'] ?? 0,
      jumlahInvestasi: map['jumlah_investasi'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'pinjaman_id': pinjamanId,
      'jumlah_investasi': jumlahInvestasi,
    };
  }

  String toJson() => json.encode(toMap());

  factory AddInvestasi.fromJson(String source) =>
      AddInvestasi.fromMap(json.decode(source));
}
