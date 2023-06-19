import 'dart:convert';

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

  static Future<List<TransaksiPembayaran>> getTransactions(
    {required BuildContext context, 
    required int userId}) async {
    try {
      http.Response res = await http.get(
        Uri.parse("${Constants.URI}/user/getTransaksiPembayaran/$userId/"),
      );

      bool hasError = ErrorHandling.httpErrorHandling(response: res, context: context);

      if (hasError) {
        return []; // Mengembalikan daftar transaksi kosong jika terjadi kesalahan
      }

      List<dynamic> jsonData = json.decode(res.body);
      List<TransaksiPembayaran> transaksiList = jsonData
          .map((data) => TransaksiPembayaran.fromJson(data))
          .toList();

      return transaksiList;
    } catch (e) {
      print(e.toString());
      return []; // Mengembalikan daftar transaksi kosong jika terjadi kesalahan
    }
  }

  static Future<List<Marketplace>> getMarketplace({required BuildContext context}) async {
    try {
      http.Response res = await http.get(
        Uri.parse("${Constants.URI}/pendana/get/marketplace"),
      );

      bool hasError = ErrorHandling.httpErrorHandling(response: res, context: context);

      if (hasError) {
        return []; // Mengembalikan daftar transaksi kosong jika terjadi kesalahan
      }

      if (res.statusCode == 200) {
        List<dynamic> jsonData = json.decode(res.body);
        List<Marketplace> marketplaceList = jsonData
            .map((data) => Marketplace.fromJson(data))
            .toList();

        return marketplaceList;
      } else {
        throw Exception("Failed to fetch marketplace data");
      }
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  static Future<Investasi?> addInvestasi(
    {required BuildContext context,
      required int pendanaId,
      required int pinjamanId,
      required int jumlahInvestasi,}) async {
    try{
      AddInvestasi transaksi =
        AddInvestasi(
        pinjamanId: pinjamanId,
        jumlahInvestasi: jumlahInvestasi);

      http.Response res = await http.post(
        Uri.parse("${Constants.URI}/pendana/addInvestasi/${pendanaId}/"),
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
      return Investasi.fromJson(res.body);
    } catch (e) {
      Utils.showSnackBar(context, e.toString());
      return null;
    }
    
  }

}