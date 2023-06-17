import 'package:flutter/material.dart';

import 'package:myapp/models/models.dart';

class UserProvider extends ChangeNotifier {

  //* If [_user] is null, if not Signed-In
  User? _user;
  Peminjam? _peminjam;
  Pendana? _pendana;

  User? get user => _user;
  Peminjam? get peminjam => _peminjam;
  Pendana? get pendana => _pendana;

  void setUserFromJson(String userJson) {
    _user = User.fromJson(userJson);

    if (_user?.jenisUser == "peminjam") {
      _peminjam = Peminjam.fromJson(userJson);
      _pendana = null;
    } else if (_user?.jenisUser == "pendana") {
      _pendana = Pendana.fromJson(userJson);
      _peminjam = null;
    } else {
      _peminjam = null;
      _pendana = null;
    }

    notifyListeners();
  }

  void setUserFromModel(User user) {
    _user = user;

    if (_user?.jenisUser == "peminjam") {
      print("=> masuk sebagai peminjam");
      _peminjam = user as Peminjam;
      _pendana = null;
    } else if (_user?.jenisUser == "pendana") {
      print("=> masuk sebagai pendana");
      _pendana = user as Pendana;
      _peminjam = null;
    } else {
      print("=> ! jenis user tidak diketahui");
      _peminjam = null;
      _pendana = null;
    }

    notifyListeners();
  }

  void setUserNull() {
    _user = null;
    _peminjam = null;
    _pendana = null;
    notifyListeners();
  }
}
