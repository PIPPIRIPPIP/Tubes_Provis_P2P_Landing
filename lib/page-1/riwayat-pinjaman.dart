import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/navbar-peminjam.dart';
import 'package:myapp/utils.dart';

import '../models/user_model.dart';

class RiwayatPeminjaman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Scene(),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // riwayatpinjamanbYi (30:46)
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupmmxdw6n (3w9q1UDJNbndq43iAmMMXd)
              padding:
                  EdgeInsets.fromLTRB(15 * fem, 22 * fem, 17 * fem, 56 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // riwayatdantagihanpinjamanTL2 (66:293)
                    margin: EdgeInsets.fromLTRB(
                        2 * fem, 0 * fem, 0 * fem, 23 * fem),
                    child: Text(
                      'Riwayat dan Tagihan Pinjaman',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff3584ff),
                      ),
                    ),
                  ),
                  Container(
                    // group31xGn (63:487)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 1 * fem, 21 * fem),
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
                          // autogroupsuwmCwp (3w9sfowoCunaG4emp1Suwm)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 18 * fem, 5 * fem),
                          width: double.infinity,
                          height: 26 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupdcr5jRx (3w9srioHP2Nzz9V1kHdCR5)
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 4 * fem, 126 * fem, 4 * fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // noGAz (63:490)
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
                                      // p20072312345Njp (63:493)
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
                                // image7ujk (63:497)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                width: 26 * fem,
                                height: 26 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/image-7-t14.png',
                                ),
                              ),
                              Text(
                                // haritersisadve (63:492)
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
                          // line4yjc (63:494)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 16 * fem),
                          width: double.infinity,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffbcbcbc),
                          ),
                        ),
                        Container(
                          // autogroupsxtmiSJ (3w9syU73NCDJ3b3wXMsXTM)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 111 * fem, 0 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // jumlahdibayarkanFSE (63:500)
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
                                // totalLyU (63:491)
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
                          // autogroup6ga3V5g (3w9t5Tw3oEWSmK7RzY6GA3)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 29 * fem, 22 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rpD1g (63:502)
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
                                // Y3x (63:501)
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
                                // rpraS (63:499)
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
                                // mxJ (63:498)
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
                          // autogroupgz63JSS (3w9tCiDyVA2qPEMKJsgz63)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 3 * fem),
                          width: double.infinity,
                          height: 5 * fem,
                        ),
                        Container(
                          // autogroup4yntEaz (3w9tGnwWPeBHTTfoYY4YNT)
                          margin: EdgeInsets.fromLTRB(
                              14 * fem, 0 * fem, 21 * fem, 0 * fem),
                          width: double.infinity,
                          height: 22 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupe6pyADk (3w9tMHp1iRQ9VkiRPvE6Py)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 230 * fem, 0 * fem),
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
                                // L1k (63:489)
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
                    // group29Udk (30:72)
                    margin: EdgeInsets.fromLTRB(
                        1 * fem, 0 * fem, 0 * fem, 19 * fem),
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
                          // autogroupxwywXM8 (3w9qQTYzhFb3azwkxwXWYw)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 14 * fem, 5 * fem),
                          width: double.infinity,
                          height: 26 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogrouprbf5eRk (3w9qcHYczQwyqdB64CrBf5)
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 4 * fem, 163 * fem, 4 * fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // noaKQ (30:76)
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
                                      // p2007231234562r (30:78)
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
                                // image7cmt (30:82)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                width: 26 * fem,
                                height: 26 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/image-7-RU2.png',
                                ),
                              ),
                              Text(
                                // tahun9G2 (30:77)
                                '1 Tahun',
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
                          // line4gWr (30:79)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 13 * fem),
                          width: double.infinity,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffbcbcbc),
                          ),
                        ),
                        Container(
                          // autogroupuvvfpsx (3w9qkHKJEU1WoFvQgSUVvf)
                          margin: EdgeInsets.fromLTRB(
                              15 * fem, 0 * fem, 24 * fem, 17.5 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // MN6 (30:83)
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
                                // bungaUSi (30:86)
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
                                // rpoE6 (30:85)
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
                                // Ky8 (30:84)
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
                          // line5rTG (30:80)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 3 * fem),
                          width: double.infinity,
                          height: 5 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffbcbcbc),
                          ),
                        ),
                        Container(
                          // autogroup6pcfbfk (3w9qtH5yUX53ktfjJg6pCF)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 17 * fem, 0 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // lunaswDp (30:74)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 54.5 * fem, 2 * fem),
                                child: Text(
                                  'Lunas',
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
                                // januari202301januari2024f9p (66:306)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 60.5 * fem, 1 * fem),
                                child: Text(
                                  '01 Januari 2023 - 01 Januari 2024',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // N4E (30:75)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 2 * fem, 0 * fem, 0 * fem),
                                child: Text(
                                  '100%',
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
                    // group306F8 (30:133)
                    margin: EdgeInsets.fromLTRB(
                        1 * fem, 0 * fem, 0 * fem, 23 * fem),
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
                          // autogroupznwhkaa (3w9rZvcaYwuzBQd2jfznwh)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 15 * fem, 5 * fem),
                          width: double.infinity,
                          height: 26 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupwupxH4i (3w9rkW9HbE3gXqfxymwUpX)
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 4 * fem, 163 * fem, 4 * fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // noDDG (30:137)
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
                                      // p20072312345YFY (30:139)
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
                                // image7soc (30:143)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                width: 26 * fem,
                                height: 26 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/image-7.png',
                                ),
                              ),
                              Text(
                                // bulanQ2r (30:138)
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
                          // line49FL (30:140)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 13 * fem),
                          width: double.infinity,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffbcbcbc),
                          ),
                        ),
                        Container(
                          // autogroupf13msh8 (3w9rsv6br4oSLaoW9Cf13m)
                          margin: EdgeInsets.fromLTRB(
                              15 * fem, 0 * fem, 24 * fem, 17.5 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // 1HY (30:144)
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
                                // bungaWEJ (30:147)
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
                                // rpcHL (30:146)
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
                                // j74 (30:145)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 6 * fem, 0 * fem, 0 * fem),
                                child: Text(
                                  '15.000.000',
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
                          // line5FLJ (30:141)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 3 * fem),
                          width: double.infinity,
                          height: 5 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffbcbcbc),
                          ),
                        ),
                        Container(
                          // autogroupvkafBze (3w9s1ViJfpnZL9ph9iVKaF)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 17 * fem, 0 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // lunasKqx (30:135)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 63 * fem, 2 * fem),
                                child: Text(
                                  'Lunas',
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
                                // januari202301juni2023eNS (30:150)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 1 * fem, 69 * fem, 0 * fem),
                                child: Text(
                                  '01 Januari 2023 - 01 Juni 2023',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // x8E (30:136)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 2 * fem, 0 * fem, 0 * fem),
                                child: Text(
                                  '100%',
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
                    // tidakadariwayatlagiGuc (30:148)
                    margin:
                        EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      'tidak ada riwayat lagi.',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff000000),
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
