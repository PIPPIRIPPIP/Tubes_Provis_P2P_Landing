import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:provider/provider.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import '../models/user.dart';
import '../providers/user_provider.dart';

class RiwayatTransaksiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    
    var user = Provider.of<UserProvider>(context, listen: false).user;
    if (user == null) {
      return const Center(child: CircularProgressIndicator());
    }
    
    List<TransaksiPembayaran> transaksiList = user.transaksiPembayaran;
    
    return Scaffold(
      body: Container(
        child: Container(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  // group27iCv (63:342)
                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
                  padding: EdgeInsets.fromLTRB(17 * fem, 13 * fem, 0 * fem, 12 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff3584ff),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            '../assets/page-1/images/panah.png',
                            width: 20 * fem,
                            height: 20 * fem,
                          ),
                        ),
                      ),
                      Text(
                        'Riwayat Transaksi',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: DaftarTransaksi(transaksiList: transaksiList),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DaftarTransaksi extends StatelessWidget {
  final List<TransaksiPembayaran> transaksiList;

  const DaftarTransaksi({required this.transaksiList});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Center(
            child: ListView.builder(
              itemCount: transaksiList.length,
              itemBuilder: (context, index) {
                TransaksiPembayaran transaksi = transaksiList[index];
                return Card(
                  child: ListTile(
                    subtitle: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              transaksi.jenis,
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff000000),
                              ),
                            ),
                            Text(
                              'Via ${transaksi.metodePembayaran}',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000),
                              ),
                            ),
                            Text(transaksi.timestamp.toString()),
                          ],
                        ),
                        Text(
                          '${transaksi.jumlah >= 0 ? "+" : ""}${transaksi.jumlah}',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: transaksi.jumlah >= 0 ? Colors.green : Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
