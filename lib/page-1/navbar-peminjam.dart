import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/form-pengajuan-peminjaman.dart';
import 'package:myapp/page-1/peminjam.dart';
import 'package:myapp/page-1/riwayat-pinjaman.dart';
import 'package:myapp/utils.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      height: 65 * fem,
      child: Container(
        // navbarLKx (63:556)
        padding: EdgeInsets.fromLTRB(25 * fem, 7 * fem, 10 * fem, 8 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff3584ff),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Peminjam()));
              },
              child: Container(
                // group62T9g (63:558)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 100 * fem, 0 * fem),
                padding:
                    EdgeInsets.fromLTRB(0 * fem, 5.41 * fem, 0 * fem, 0 * fem),
                height: 47 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // igaminghouse9YJ (63:559)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 1 * fem, 3.07 * fem),
                      width: 26.87 * fem,
                      height: 23.52 * fem,
                      child: Image.asset(
                        'assets/page-1/images/i-gaming-house-jTL.png',
                        width: 26.87 * fem,
                        height: 23.52 * fem,
                      ),
                    ),
                    Text(
                      // berandaTYz (63:561)
                      'Beranda',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FormPeminjaman()));
              },
              child: Container(
                // autogroup9vwmzop (3wAQW1QYYfuFMXsnSb9VwM)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 2.25 * fem, 75 * fem, 0 * fem),
                width: 36 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // receiveX34 (63:566)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 1 * fem, 2.25 * fem),
                      width: 29.77 * fem,
                      height: 27.5 * fem,
                      child: Image.asset(
                        'assets/page-1/images/dollar.png',
                        width: 29.77 * fem,
                        height: 27.5 * fem,
                      ),
                    ),
                    Container(
                      // pinjamqJe (63:563)
                      width: double.infinity,
                      child: Text(
                        'Pinjam',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RiwayatPeminjaman()));
              },
              child: Container(
                // autogroupvdnfmCJ (3wAQc64kGAp5fft6qJvdnf)
                margin:
                    EdgeInsets.fromLTRB(20 * fem, 7 * fem, 0 * fem, 0 * fem),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconu3c (66:421)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 2.17 * fem, 1.17 * fem),
                      width: 23.83 * fem,
                      height: 23.83 * fem,
                      child: Image.asset(
                        'assets/page-1/images/i-object-tools-scroll.png',
                        width: 23.83 * fem,
                        height: 23.83 * fem,
                      ),
                    ),
                    Text(
                      // tagihanpinjamancyc (63:565)
                      'Tagihan & Pinjaman',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
