import 'dart:convert';

class SignUpUserAuth {
  final String email;
  final String password;
  final String nama;
  final String nomorPonsel;
  final String jenisUser;

  SignUpUserAuth(this.email, this.password, this.nama, this.nomorPonsel, this.jenisUser);

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

  factory SignUpUserAuth.fromJson(String source) => SignUpUserAuth.fromMap(json.decode(source));
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

  factory SignInUserAuth.fromJson(String source) => SignInUserAuth.fromMap(json.decode(source));
}