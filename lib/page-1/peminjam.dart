import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import 'package:myapp/models/user_model.dart';
import 'package:myapp/page-1/navbar-peminjam.dart';
import 'profile.dart';

class Peminjam extends StatelessWidget {
  final User user;

  Peminjam({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Scene(user: user),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}

class Scene extends StatelessWidget {
  final User user;

  Scene({required this.user});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // peminjamMq8 (7:269)
        padding: EdgeInsets.fromLTRB(0 * fem, 12 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // autogroupahttrWz (3w9iH5bTKpG5v2X2FWAhtT)
              margin:
                  EdgeInsets.fromLTRB(15 * fem, 0 * fem, 10 * fem, 20 * fem),
              width: double.infinity,
              height: 45 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // moneylogodesignstemplatevector (7:284)
                    width: 100 * fem,
                    height: 100 * fem,
                    child: Image.asset(
                      'assets/page-1/images/logo.png',
                    ),
                  ),
                  Container(
                    // autogroup12qwgF8 (3w9iQfDA9aFCubYDG212Qw)
                    padding: EdgeInsets.fromLTRB(
                        200 * fem, 2 * fem, 0 * fem, 3 * fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // notif1DF4 (12:298)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 15 * fem, 0 * fem),
                          width: 25 * fem,
                          height: 32 * fem,
                          child: Image.asset(
                            'assets/page-1/images/notif-1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        TextButton(
                          // profile1YYE (9:285)
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profil(user: user)));
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 40 * fem,
                            height: 40 * fem,
                            child: Image.asset(
                              'assets/page-1/images/profile-1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group32saW (66:346)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 29 * fem),
              padding:
                  EdgeInsets.fromLTRB(35 * fem, 13 * fem, 65 * fem, 17 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff3584ff),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // autogroupejspYge (3w9oRWrX5zazoGTWz4ejSP)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 22 * fem),
                    width: 119 * fem,
                    height: 39 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // danatersediarhL (66:348)
                          left: 0 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 87 * fem,
                              height: 18 * fem,
                              child: Text(
                                'Dana Tersedia',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rp100000000wCz (66:349)
                          left: 0 * fem,
                          top: 16 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 119 * fem,
                              height: 23 * fem,
                              child: Text(
                                'Rp. 100.000.000',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w600,
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
                    // autogroupxg6jqJN (3w9oWvsAXpaNN6uDzRxg6j)
                    margin: EdgeInsets.fromLTRB(
                        15 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: 299.5 * fem,
                    height: 64 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // riwayatkw8 (66:351)
                          left: 251.5 * fem,
                          top: 46 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 48 * fem,
                              height: 18 * fem,
                              child: Text(
                                'Riwayat\n',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // tariksaldoeFp (66:353)
                          left: 121.5 * fem,
                          top: 46 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 66 * fem,
                              height: 18 * fem,
                              child: Text(
                                'Tarik Saldo',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // icontariksaldoWYv (66:354)
                          left: 0 * fem,
                          top: 0 * fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                8.5 * fem, 0 * fem, 0 * fem, 0 * fem),
                            width: 296 * fem,
                            height: 64 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5 * fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupyy8wQeJ (3w9ojqfKWwwBL6RJ5mYY8w)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // autogroupeuypMJe (3w9oqfpwP4zxrzb8hreUYP)
                                        margin: EdgeInsets.fromLTRB(
                                            1 * fem, 0 * fem, 0 * fem, 6 * fem),
                                        width: 40 * fem,
                                        height: 40 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/auto-group-euyp.png',
                                          width: 40 * fem,
                                          height: 40 * fem,
                                        ),
                                      ),
                                      Text(
                                        // isisaldo4ir (66:358)
                                        'Isi Saldo',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupnjdr1e6 (3w9p5VmEVF8HMXWHxBNjDR)
                                  padding: EdgeInsets.fromLTRB(
                                      76.5 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // autogroupwpmmk5t (3w9owAfn7Mc22EyfdmWpMM)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 81 * fem, 0 * fem),
                                        width: 40 * fem,
                                        height: 40 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/auto-group-wpmm.png',
                                          width: 40 * fem,
                                          height: 40 * fem,
                                        ),
                                      ),
                                      Container(
                                        // autogroupen3hrPp (3w9ozv4Xt1HjipWrBFen3H)
                                        width: 40 * fem,
                                        height: 40 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/auto-group-en3h.png',
                                          width: 40 * fem,
                                          height: 40 * fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // ajuanpinjamanyzE (12:299)
              margin: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 0 * fem, 0 * fem),
              child: Text(
                'Ajuan Pinjaman',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 14 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.5 * ffem / fem,
                  color: Color(0xff020202),
                ),
              ),
            ),
            Container(
              // autogroupbmzwWUN (3w9jA8xiH7PYd6yXA3bMzw)
              padding:
                  EdgeInsets.fromLTRB(15 * fem, 5 * fem, 17 * fem, 9 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // group28dot (24:92)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 21 * fem),
                    padding: EdgeInsets.fromLTRB(
                        1 * fem, 4 * fem, 1 * fem, 10 * fem),
                    width: 381 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffbcbcbc)),
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
                          // autogroupmwtmV5Q (3w9jX8MjnkRa99BjoAMwTM)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 15 * fem, 5 * fem),
                          width: double.infinity,
                          height: 26 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupbqyj1pS (3w9jghv7RXB5NctkxjbqYj)
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 4 * fem, 163 * fem, 4 * fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // nokX8 (12:302)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 6 * fem, 0 * fem),
                                      child: Text(
                                        'NO',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xff020202),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // p20072312345f8J (12:303)
                                      'P20072312345',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff343434),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // image7b1x (15:313)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                width: 26 * fem,
                                height: 26 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/image-7-hvn.png',
                                ),
                              ),
                              Text(
                                // bulanJh4 (15:314)
                                '5 Bulan',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff020202),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // line4eW2 (12:301)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 13 * fem),
                          width: double.infinity,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffbcbcbc),
                          ),
                        ),
                        Container(
                          // autogroupkxdmauU (3w9jp33EPuK9ax5UCckxdM)
                          margin: EdgeInsets.fromLTRB(
                              15 * fem, 0 * fem, 24 * fem, 20 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // X42 (21:2)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 6 * fem, 0 * fem),
                                child: Text(
                                  '10%',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 32 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff020202),
                                  ),
                                ),
                              ),
                              Container(
                                // bungaeeS (21:4)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 14 * fem, 117 * fem, 0 * fem),
                                child: Text(
                                  'bunga',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff727272),
                                  ),
                                ),
                              ),
                              Container(
                                // rpxv2 (21:6)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 4 * fem, 9 * fem, 0 * fem),
                                child: Text(
                                  'Rp',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff727272),
                                  ),
                                ),
                              ),
                              Container(
                                // t2z (21:5)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 6 * fem, 0 * fem, 0 * fem),
                                child: Text(
                                  '10.000.000',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff020202),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupuurbbTC (3w9jwSzYek4uPhD1N3UUrb)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 3 * fem),
                          width: double.infinity,
                          height: 5 * fem,
                        ),
                        Container(
                          // autogroupaqh9jJW (3w9k1HDVhrNJggh1q5Aqh9)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 21 * fem, 0 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // bulanlagiG3Y (12:306)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 247 * fem, 2 * fem),
                                child: Text(
                                  '1 Bulan lagi',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff020202),
                                  ),
                                ),
                              ),
                              Container(
                                // yyY (12:307)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 2 * fem, 0 * fem, 0 * fem),
                                child: Text(
                                  '50%',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff020202),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // tagihanpinjamanucJ (27:9)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 6 * fem),
                    child: Text(
                      'Tagihan Pinjaman',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff020202),
                      ),
                    ),
                  ),
                  Container(
                    // group29doC (27:10)
                    margin: EdgeInsets.fromLTRB(
                        1 * fem, 0 * fem, 0 * fem, 39 * fem),
                    padding:
                        EdgeInsets.fromLTRB(1 * fem, 4 * fem, 1 * fem, 8 * fem),
                    width: 381 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffbcbcbc)),
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
                          // autogroupxt39VKc (3w9kb6aUvA9TaJUUdyxt39)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 18 * fem, 5 * fem),
                          width: double.infinity,
                          height: 26 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroup5yqhoLJ (3w9kkWUTz1fbcxHqxU5yqH)
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 4 * fem, 126 * fem, 4 * fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // noXXC (27:14)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 6 * fem, 0 * fem),
                                      child: Text(
                                        'NO',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xff020202),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // p20072312345eri (27:16)
                                      'P20072312345',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff343434),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // image7bGA (27:20)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                width: 26 * fem,
                                height: 26 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/image-7-Hga.png',
                                ),
                              ),
                              Text(
                                // haritersisa8Wz (27:15)
                                '5 hari tersisa',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff020202),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // line4Uar (27:17)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 16 * fem),
                          width: double.infinity,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffbcbcbc),
                          ),
                        ),
                        Container(
                          // autogroupzuu3YKp (3w9ksb7171xd43e5RiZuU3)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 111 * fem, 0 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // jumlahdibayarkanUUN (31:29)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 100 * fem, 0 * fem),
                                child: Text(
                                  'Jumlah dibayarkan',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff020202),
                                  ),
                                ),
                              ),
                              Text(
                                // totalBdg (27:25)
                                'Total',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff020202),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupcefrvrA (3w9kzkZjWUsL5Yw8pWcEFR)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 29 * fem, 22 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rptwQ (31:31)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 9 * fem, 1 * fem),
                                child: Text(
                                  'Rp',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff727272),
                                  ),
                                ),
                              ),
                              Container(
                                // 1WE (31:30)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 1 * fem, 109 * fem, 0 * fem),
                                child: Text(
                                  '5.500.000',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff020202),
                                  ),
                                ),
                              ),
                              Container(
                                // rpXUa (27:23)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 9 * fem, 1 * fem),
                                child: Text(
                                  'Rp',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff727272),
                                  ),
                                ),
                              ),
                              Container(
                                // FQa (27:22)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                child: Text(
                                  '11.000.000',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff020202),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupawqjNk6 (3w9m9FKaTHcxbfMQz1awQj)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 3 * fem),
                          width: double.infinity,
                          height: 5 * fem,
                        ),
                        Container(
                          // autogroup6tkyJte (3w9mEFBFUpXvCS4zNf6tKy)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 21 * fem, 0 * fem),
                          width: double.infinity,
                          height: 22 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupcqfdDEv (3w9mKF2vWMSsoCnZmJcqFD)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 220 * fem, 0 * fem),
                                width: 86 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xff3584ff),
                                  borderRadius: BorderRadius.circular(5 * fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Bayar',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                // SdU (27:13)
                                '50%',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff020202),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // panduanbFU (12:310)
                    margin:
                        EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      'Panduan',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff020202),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupfmtdX98 (3w9iXQWv8k5Vy37936FMTD)
              width: double.infinity,
              height: 135 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // group63fWE (63:460)
                    left: 15 * fem,
                    top: 0 * fem,
                    child: Container(
                      width: 180 * fem,
                      height: 90 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffbcbcbc)),
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
                      child: Center(
                        child: Text(
                          'Peminjaman',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff020202),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group64HGi (63:461)
                    left: 215 * fem,
                    top: 0 * fem,
                    child: Container(
                      width: 180 * fem,
                      height: 90 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffbcbcbc)),
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
                      child: Center(
                        child: Text(
                          'Pembayaran',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff020202),
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
