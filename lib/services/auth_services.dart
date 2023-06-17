import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../constants.dart';
import '../models/models.dart';
import '../utils/error_handling.dart';
import '../utils/utils.dart';

class AuthService {
  // PENDANA
  static Future<Pendana?> signUpPendana(
      {required BuildContext context,
      required String email,
      required String password,
      required String nama,
      required String nomorPonsel,
      required String jenisUser}) async {
    try {
      SignUpPendanaAuth pendana =
          SignUpPendanaAuth(email, password, nama, nomorPonsel, jenisUser, 0);

      http.Response res = await http.post(
        Uri.parse("${Constants.URI}/pendana/signup"),
        body: pendana.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
      );

      bool hasError =
          ErrorHandling.httpErrorHandling(response: res, context: context);

      /// Has HTTP Error
      if (hasError) return null;

      /// Execute successfully
      return Pendana.fromJson(res.body);
    } catch (e) {
      Utils.showSnackBar(context, e.toString());
      return null;
    }
  }

  //PEMINJAM
  static Future<Peminjam?> signUpPeminjam({
    required BuildContext context,
    required String email,
    required String password,
    required String nama,
    required String nomorPonsel,
    required String jenisUser,
    required String jenis,
    required String nik,
    required String alamat,
    required String jenisUsaha,
    required String provinsiUsaha,
    required String kotaUsaha,
    required int pendapatan,
  }) async {
    try {
      SignUpPeminjamAuth peminjam = SignUpPeminjamAuth(
        email: email,
        password: password,
        nama: nama,
        nomorPonsel: nomorPonsel,
        jenisUser: "peminjam",
        userId: 0,
        jenis: jenis,
        nik: nik,
        alamat: alamat,
        jenisUsaha: jenisUsaha,
        provinsiUsaha: provinsiUsaha,
        kotaUsaha: kotaUsaha,
        pendapatan: pendapatan,
      );

      http.Response res = await http.post(
        Uri.parse("${Constants.URI}/peminjam/signup"),
        body: peminjam.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
      );

      bool hasError =
          ErrorHandling.httpErrorHandling(response: res, context: context);

      /// Has HTTP Error
      if (hasError) return null;

      /// Execute successfully
      return Peminjam.fromJson(res.body);
    } catch (e) {
      Utils.showSnackBar(context, e.toString());
      return null;
    }
  }

  /// A function for Sign-Up user account,
  /// Success : return User model,
  /// Fail : return null
  static Future<User?> signUpUser(
      {required BuildContext context,
      required String email,
      required String password,
      required String nama,
      required String nomorPonsel,
      required String jenisUser}) async {
    try {
      SignUpUserAuth user =
          SignUpUserAuth(email, password, nama, nomorPonsel, jenisUser);

      http.Response res = await http.post(
        Uri.parse("${Constants.URI}/user/signup"),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
      );

      bool hasError =
          ErrorHandling.httpErrorHandling(response: res, context: context);

      /// Has HTTP Error
      if (hasError) return null;

      /// Execute successfully
      return User.fromJson(res.body);
    } catch (e) {
      Utils.showSnackBar(context, e.toString());
      return null;
    }
  }

  /// A function for Sign-Up user account,
  /// Success : return User model,
  /// Fail : return null
  static Future<User?> signInUser({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      SignInUserAuth user = SignInUserAuth(email, password);

      http.Response res = await http.post(
        Uri.parse("${Constants.URI}/user/signin"),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
      );

      bool hasError =
          ErrorHandling.httpErrorHandling(response: res, context: context);
      if (hasError) return null;

      /// Execute successfully
      /// Parse respons body sebagai JSON
      User userData = User.fromJson(res.body);

      /// check jenis_user
      if (userData.jenisUser == "peminjam") {
        return Peminjam.fromJson(res.body);
      }
      else if(userData.jenisUser == "pendana"){
        return Pendana.fromJson(res.body);
      }
      else{
        // for other possible
        return userData;
      }

    } catch (e) {
      Utils.showSnackBar(context, e.toString());
      return null;
    }
  }

  /// A function for getting User account's datas via token,
  /// Success : return User model,
  /// Fail : return null
  static Future<User?> getUser({
    required BuildContext context,
    required String token,
  }) async {
    try {
      http.Response res = await http.get(
        Uri.parse("${Constants.URI}/user/me"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

      if (res.statusCode != 200) return null;

      /// Parse respons body sebagai JSON
      User userData = User.fromJson(res.body);

      /// check jenis_user
      if (userData.jenisUser == "peminjam") {
        return Peminjam.fromJson(res.body);
      }
      else if(userData.jenisUser == "pendana"){
        return Pendana.fromJson(res.body);
      }
      else{
        // for other possible
        return userData;
      }

    } catch (e) {
      Utils.showSnackBar(context, e.toString());
      return null;
    }
  }
}
