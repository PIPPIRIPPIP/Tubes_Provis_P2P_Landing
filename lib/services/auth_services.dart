import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../constants.dart';
import '../models/models.dart';
import '../utils/error_handling.dart';
import '../utils/utils.dart';

class AuthService {

  /// A function for Sign-Up user account,
  /// Success : return User model,
  /// Fail : return null
  static Future<User?> signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String nama,
    required String nomorPonsel,
    required String jenisUser
  }) async {
    try {
      SignUpUserAuth user = SignUpUserAuth(email, password, nama, nomorPonsel, jenisUser);
      
      http.Response res = await http.post(
        Uri.parse("${Constants.URI}/user/signup"),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
      );

      bool hasError = ErrorHandling.httpErrorHandling(response: res, context: context);
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

      bool hasError = ErrorHandling.httpErrorHandling(response: res, context: context);
      if (hasError) return null;

      /// Execute successfully
      return User.fromJson(res.body);
      
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

      return User.fromJson(res.body);

    } catch (e) {
      Utils.showSnackBar(context, e.toString());
      return null;
    }
  }
}
