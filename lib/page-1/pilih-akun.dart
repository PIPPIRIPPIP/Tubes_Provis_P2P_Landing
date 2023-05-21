import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import 'daftar-investor.dart';
import 'daftar-peminjam-perorangan.dart';
import 'daftar-peminjam-perusahaan.dart';

class PilihAkun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // pilihakunTRG (1:5)
        padding: EdgeInsets.fromLTRB(62 * fem, 25 * fem, 61 * fem, 61 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // moneylogodesignstemplatevector (7:190)
              // margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 0 * fem),
              width: 50,
              height: 30,
              child: Image.asset(
                'assets/page-1/images/logo.png',
              ),
            ),
            Container(
              // pilihjenisakunynv (1:9)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 2 * fem, 21 * fem),
              child: Text(
                'Pilih Jenis Akun',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              // mohonpilihjenisakunyangtepatpe (1:26)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 31 * fem),
              constraints: BoxConstraints(
                maxWidth: 273 * fem,
              ),
              child: Text(
                'Mohon pilih jenis akun yang tepat. Pengguna hanya bisa memiliki satu jenis akun.',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 12 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5 * ffem / fem,
                  color: Color(0xff242424),
                ),
              ),
            ),
            Container(
              // daftarinvestorWwG (1:18)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 46 * fem),
              padding:
                  EdgeInsets.fromLTRB(28 * fem, 18 * fem, 29 * fem, 20 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(10 * fem),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0 * fem, 4 * fem),
                    blurRadius: 2 * fem,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // pendaftaraninvestor9US (1:14)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 22 * fem),
                    child: Text(
                      'Pendaftaran Investor',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff343434),
                      ),
                    ),
                  ),
                  Container(
                    // sebagaiinvestorandaakandapatme (1:15)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 18 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 215 * fem,
                    ),
                    child: Text(
                      'Sebagai Investor, Anda akan dapat memberikan pinjaman dan meraih imbal hasil hingga 18% per tahun.',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff343434),
                      ),
                    ),
                  ),
                  TextButton(
                    // group1Xjt (1:17)
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DaftarInvestor()));
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 37 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff3584ff),
                        borderRadius: BorderRadius.circular(3 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Daftar Sebagai Investor',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // daftarpeminjamz7g (1:19)
              padding:
                  EdgeInsets.fromLTRB(28 * fem, 18 * fem, 29 * fem, 20 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(10 * fem),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0 * fem, 4 * fem),
                    blurRadius: 2 * fem,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // pendaftaranpeminjamrQn (1:24)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 22 * fem),
                    child: Text(
                      'Pendaftaran Peminjam',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff343434),
                      ),
                    ),
                  ),
                  Container(
                    // sebagaipeminjamandaakandapatme (1:25)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 18 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 219 * fem,
                    ),
                    child: Text(
                      'Sebagai peminjam, Anda akan dapat mengajukan pinjaman bisnis dengan bunga yang ringan.',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff343434),
                      ),
                    ),
                  ),
                  TextButton(
                    // group13kA (1:21)
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DaftarPerorangan()));
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 37 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff3584ff),
                        borderRadius: BorderRadius.circular(3 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Daftar Sebagai Peminjam',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
