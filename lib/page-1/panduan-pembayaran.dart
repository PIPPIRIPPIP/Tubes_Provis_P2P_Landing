import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class PanduanPembayaran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(25 * fem, 22 * fem, 0 * fem, 17 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //HEADER
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 93.5 * fem, 31 * fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          // back button
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 53.65 * fem, 1.15 * fem),
                          width: 14.85 * fem,
                          height: 14.85 * fem,
                          child: Image.asset(
                            'assets/page-1/images/group-66.png',
                            width: 14.85 * fem,
                            height: 14.85 * fem,
                          ),
                        ),
                      ),
                      Text(
                        // TITLE
                        'Panduan Peminjaman',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff3584ff),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // idefinisiNuL (477:157)
                  margin:
                      EdgeInsets.fromLTRB(18 * fem, 0 * fem, 0 * fem, 9 * fem),
                  child: Text(
                    '1. Masuk ke Halaman Tagihan & Pinjaman',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.5 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  // autogroupxvkeUxN (W5JtfWGjAAsjWtsYqJXvke)
                  margin:
                      EdgeInsets.fromLTRB(15 * fem, 0 * fem, 0 * fem, 34 * fem),
                  padding:
                      EdgeInsets.fromLTRB(3 * fem, 0 * fem, 3 * fem, 0 * fem),
                  width: 7507 * fem,
                  child: Align(
                    // akunadalahidentitasunikyangdig (477:156)
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 327 * fem,
                        ),
                        child: Text(
                          'Masuk ke halaman tagihan & pinjaman untuk melihat daftar tagihan pinjaman yang harus dibayarkan, kemudian klik pada pinjaman yang ingin dibayar tagihannya',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 11 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  // idefinisiNuL (477:157)
                  margin:
                      EdgeInsets.fromLTRB(18 * fem, 0 * fem, 0 * fem, 9 * fem),
                  child: Text(
                    '2. Masukan Nominal Uang',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.5 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  // autogroupxvkeUxN (W5JtfWGjAAsjWtsYqJXvke)
                  margin:
                      EdgeInsets.fromLTRB(15 * fem, 0 * fem, 0 * fem, 34 * fem),
                  padding:
                      EdgeInsets.fromLTRB(3 * fem, 0 * fem, 3 * fem, 0 * fem),
                  width: 7507 * fem,
                  child: Align(
                    // akunadalahidentitasunikyangdig (477:156)
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 327 * fem,
                        ),
                        child: Text(
                          'Masukan jumlah nominal uang yang ingin disetorkan atau dibayarkan untuk membayar tagihan pinjaman. Pastikan saldo mencukupi, jika tidak mencukupi maka silahkan lakukan isi saldo terlebih dahulu.',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 11 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  // idefinisiNuL (477:157)
                  margin:
                      EdgeInsets.fromLTRB(18 * fem, 0 * fem, 0 * fem, 9 * fem),
                  child: Text(
                    '3. Bayar Tagihan',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.5 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  // autogroupxvkeUxN (W5JtfWGjAAsjWtsYqJXvke)
                  margin:
                      EdgeInsets.fromLTRB(15 * fem, 0 * fem, 0 * fem, 34 * fem),
                  padding:
                      EdgeInsets.fromLTRB(3 * fem, 0 * fem, 3 * fem, 0 * fem),
                  width: 7507 * fem,
                  child: Align(
                    // akunadalahidentitasunikyangdig (477:156)
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 327 * fem,
                        ),
                        child: Text(
                          'Jika saldo mencukupi dan nominal uang yang diinputkan sudah sesuai, maka klik button bayar untuk melanjutkan pembayaran. Saldo user akan berkurang sesuai dengan nominal uang yang ingin dibayarkan.',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 11 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
