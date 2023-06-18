import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../constants.dart';
import '../models/user.dart';
import '../models/user_auth.dart';
import '../utils/error_handling.dart';
import '../utils/utils.dart';

class UserService {
  static Future<TransaksiPembayaran?> sendTransaction(
    {required BuildContext context,
      required int userId,
      required String jenis,
      required String metodePembayaran,
      required int jumlah,}) async {
    try{
      AddTransaksiPembayaran transaksi =
        AddTransaksiPembayaran(
        jenis: jenis, 
        metodePembayaran: metodePembayaran,
        jumlah: jumlah);

      http.Response res = await http.post(
        Uri.parse("${Constants.URI}/user/addTransaksiPembayaran/${userId}/"),
        body: transaksi.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
      );

      bool hasError =
          ErrorHandling.httpErrorHandling(response: res, context: context);

      /// Has HTTP Error
      if (hasError) return null;

      /// Execute successfully
      return TransaksiPembayaran.fromJson(res.body);
    } catch (e) {
      Utils.showSnackBar(context, e.toString());
      return null;
    }
    
  }
}