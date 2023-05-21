import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import 'package:myapp/page-1/daftar-investor.dart';

class Scene extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // halamanawalNNS (30:206)
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogrouphujqiBQ (3wBDEVsX7eKqLVBzP9HUjq)
              padding:
                  EdgeInsets.fromLTRB(30 * fem, 25 * fem, 11 * fem, 20 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // moneylogodesignstemplatevector (30:223)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 19 * fem, 0 * fem),
                    width: 300 * fem,
                    height: 100 * fem,
                    child: Image.asset(
                      'assets/page-1/images/logo.png',
                    ),
                  ),
                  Container(
                    // bersamamembangunumkmyanglebihs (30:241)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 22 * fem),
                    child: Text(
                      '“ Bersama membangun UMKM yang lebih sejahtera”',
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
                    // group37beW (51:77)
                    margin: EdgeInsets.fromLTRB(
                        77 * fem, 0 * fem, 96 * fem, 11 * fem),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                        // MaterialPageRoute(builder: (context) => PilihAkun()));
                        MaterialPageRoute(builder: (context) => DaftarInvestor()));
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 40 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xff3584ff),
                          borderRadius: BorderRadius.circular(5 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Daftar Sekarang',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1 * ffem / fem,
                              letterSpacing: 0.32 * fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // masukdLJ (46:151)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 19 * fem, 0 * fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Text(
                        'Masuk',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1 * ffem / fem,
                          letterSpacing: 0.32 * fem,
                          color: Color(0xff3584ff),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupzufrXRg (3wB8hxkJfFA9BBfcY6ZUFR)
              padding:
                  EdgeInsets.fromLTRB(17 * fem, 0 * fem, 16 * fem, 151 * fem),
              width: double.infinity,
              height: 699 * fem,
              decoration: BoxDecoration(
                color: Color(0xff3584ff),
                borderRadius: BorderRadius.circular(20 * fem),
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
                    // iarrowschevrondowncCE (45:65)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 10 * fem, 1 * fem, 10 * fem),
                    width: 20 * fem,
                    height: 20 * fem,
                    child: Image.asset(
                      'assets/page-1/images/i-arrows-chevrondown.png',
                      width: 13.36 * fem,
                      height: 6.67 * fem,
                    ),
                  ),
                  Container(
                    // peluanginvestasi78z (30:240)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 20 * fem),
                    child: Text(
                      'Peluang Investasi',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // group32crS (41:165)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 29 * fem),
                    padding:
                        EdgeInsets.fromLTRB(1 * fem, 6 * fem, 0 * fem, 9 * fem),
                    width: double.infinity,
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
                          // autogroup8mtjGvz (3wB9BnHHSWe9M5Pasq8mtj)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 16 * fem, 0 * fem),
                          width: double.infinity,
                          height: 26 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroup3sv5neS (3wB9QSaraG9uXq5BCY3SV5)
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 4 * fem, 163 * fem, 4 * fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // noinz (41:170)
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
                                      // p20072312345SDC (41:172)
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
                                // image7Zoc (41:177)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                width: 26 * fem,
                                height: 26 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/image-7-nPG.png',
                                ),
                              ),
                              Text(
                                // bulanVSN (41:171)
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
                          // line7qWE (41:174)
                          margin: EdgeInsets.fromLTRB(
                              1 * fem, 0 * fem, 0 * fem, 3 * fem),
                          width: 379 * fem,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffbcbcbc),
                          ),
                        ),
                        Container(
                          // autogroupxy2kZBL (3wB9aGdp4QkTYYcg8jxY2K)
                          margin: EdgeInsets.fromLTRB(
                              10 * fem, 0 * fem, 27 * fem, 12 * fem),
                          width: double.infinity,
                          height: 54 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // profile25Qa (41:167)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                width: 46 * fem,
                                height: 46 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/profile-2-buY.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // autogroupsdzzc9c (3wB9k6gmYZM1ZGAB4wsdZZ)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 109 * fem, 0 * fem),
                                width: 131 * fem,
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // autogroupjnx9srE (3wB9qgMoZJZkJvVXvQJNX9)
                                      width: double.infinity,
                                      height: 37 * fem,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // ayeshaalifirdausdKc (41:185)
                                            left: 0 * fem,
                                            top: 0 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 131 * fem,
                                                height: 21 * fem,
                                                child: Text(
                                                  'Ayesha Ali Firdaus',
                                                  style: SafeGoogleFont(
                                                    'Poppins',
                                                    fontSize: 14 * ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.5 * ffem / fem,
                                                    color: Color(0xff020202),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // modalusahamakananirr (41:186)
                                            left: 0 * fem,
                                            top: 20 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 129 * fem,
                                                height: 17 * fem,
                                                child: Text(
                                                  'Modal usaha makanan',
                                                  style: SafeGoogleFont(
                                                    'Poppins',
                                                    fontSize: 11 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5 * ffem / fem,
                                                    color: Color(0xff343434),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      // bandungjawabarat26r (41:187)
                                      'Bandung, Jawa Barat',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 11 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff343434),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // aQNJ (41:188)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 2 * fem, 0 * fem, 0 * fem),
                                child: Text(
                                  'A+',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 31 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff3584ff),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // line4KVG (41:173)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 1 * fem, 3 * fem),
                          width: 379 * fem,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffbcbcbc),
                          ),
                        ),
                        Container(
                          // autogroupmsg73AN (3wBA4RVZyWhC667xAemSG7)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 9 * fem, 16 * fem),
                          width: double.infinity,
                          height: 57 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroup88ejZPc (3wBAEAiLBCg4WPidBK88ej)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 49 * fem, 0 * fem),
                                width: 67 * fem,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // gz2 (41:178)
                                      left: 1 * fem,
                                      top: 0 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 59 * fem,
                                          height: 48 * fem,
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
                                      ),
                                    ),
                                    Positioned(
                                      // imbalhasiloYr (41:181)
                                      left: 0 * fem,
                                      top: 39 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 67 * fem,
                                          height: 18 * fem,
                                          child: Text(
                                            'imbal hasil',
                                            style: SafeGoogleFont(
                                              'Poppins',
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.5 * ffem / fem,
                                              color: Color(0xff727272),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // rpu66 (41:180)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 7 * fem, 9 * fem, 0 * fem),
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
                                // 1up (41:179)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 9 * fem, 35 * fem, 0 * fem),
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
                              Container(
                                // group33KQi (41:182)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 23 * fem, 0 * fem, 12 * fem),
                                width: 86 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xff3584ff),
                                  borderRadius: BorderRadius.circular(5 * fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Danai',
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
                            ],
                          ),
                        ),
                        Container(
                          // autogrouptehmxia (3wBAPATLpm7nayort5TEhm)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 1 * fem, 3 * fem),
                          width: 379 * fem,
                          height: 5 * fem,
                        ),
                        Container(
                          // autogroupfyqthRG (3wBAVAHMFoQwJhsMMFfyQT)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 22 * fem, 0 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // terdanaiEAJ (41:168)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 261 * fem, 2 * fem),
                                child: Text(
                                  'Terdanai',
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
                                // kPY (41:169)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 2 * fem, 0 * fem, 0 * fem),
                                child: Text(
                                  '50%',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 11 * ffem,
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
                    // group33Gsg (41:189)
                    padding:
                        EdgeInsets.fromLTRB(1 * fem, 6 * fem, 0 * fem, 9 * fem),
                    width: double.infinity,
                    height: 223 * fem,
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
                          // autogroupvdbdKqx (3wBBPPHLBX9xKZZRBQvDbd)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 16 * fem, 0 * fem),
                          width: double.infinity,
                          height: 26 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupstxfFDp (3wBBao7z4PSUc84cexStxf)
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 4 * fem, 163 * fem, 4 * fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // noyQi (41:194)
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
                                      // p20072312345Vtr (41:196)
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
                                // image73Qa (41:201)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                width: 26 * fem,
                                height: 26 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/image-7-Rx2.png',
                                ),
                              ),
                              Text(
                                // bulanNhk (41:195)
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
                          // line7vDU (41:198)
                          margin: EdgeInsets.fromLTRB(
                              1 * fem, 0 * fem, 0 * fem, 3 * fem),
                          width: 379 * fem,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffbcbcbc),
                          ),
                        ),
                        Container(
                          // autogroupfcitSxW (3wBBjdCc92eqVtGCWdfCiT)
                          margin: EdgeInsets.fromLTRB(
                              10 * fem, 0 * fem, 27 * fem, 12 * fem),
                          width: double.infinity,
                          height: 54 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // profile2ANi (41:191)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                width: 46 * fem,
                                height: 46 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/profile-2-hhx.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                // autogroupfwdm5ka (3wBBtsSCdxwcMiBuz2fWDM)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 109 * fem, 0 * fem),
                                width: 131 * fem,
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // autogroupbt8bDbt (3wBBysHsfVrZxUuVNgBT8b)
                                      width: double.infinity,
                                      height: 37 * fem,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // ayeshaalifirdausm7c (41:209)
                                            left: 0 * fem,
                                            top: 0 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 131 * fem,
                                                height: 21 * fem,
                                                child: Text(
                                                  'Ayesha Ali Firdaus',
                                                  style: SafeGoogleFont(
                                                    'Poppins',
                                                    fontSize: 14 * ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.5 * ffem / fem,
                                                    color: Color(0xff020202),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // modalusahamakananeSJ (41:210)
                                            left: 0 * fem,
                                            top: 20 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 129 * fem,
                                                height: 17 * fem,
                                                child: Text(
                                                  'Modal usaha makanan',
                                                  style: SafeGoogleFont(
                                                    'Poppins',
                                                    fontSize: 11 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5 * ffem / fem,
                                                    color: Color(0xff343434),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      // bandungjawabaratjyY (41:211)
                                      'Bandung, Jawa Barat',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 11 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff343434),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // aFwt (41:212)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 2 * fem, 0 * fem, 0 * fem),
                                child: Text(
                                  'A+',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 31 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff3584ff),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // line4mvE (41:197)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 1 * fem, 3 * fem),
                          width: 379 * fem,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffbcbcbc),
                          ),
                        ),
                        Container(
                          // autogroupt7u3JQN (3wBCCwkRDYSk7JKDK6t7U3)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 9 * fem, 16 * fem),
                          width: double.infinity,
                          height: 57 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupde2s2LN (3wBCM7BV2WjeFkxBnRdE2s)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 49 * fem, 0 * fem),
                                width: 67 * fem,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // knA (41:202)
                                      left: 1 * fem,
                                      top: 0 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 59 * fem,
                                          height: 48 * fem,
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
                                      ),
                                    ),
                                    Positioned(
                                      // imbalhasils66 (41:205)
                                      left: 0 * fem,
                                      top: 39 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 67 * fem,
                                          height: 18 * fem,
                                          child: Text(
                                            'imbal hasil',
                                            style: SafeGoogleFont(
                                              'Poppins',
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.5 * ffem / fem,
                                              color: Color(0xff727272),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // rpxtE (41:204)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 7 * fem, 9 * fem, 0 * fem),
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
                                // gZL (41:203)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 9 * fem, 35 * fem, 0 * fem),
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
                              Container(
                                // group33bgJ (41:206)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 23 * fem, 0 * fem, 12 * fem),
                                width: 86 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xff3584ff),
                                  borderRadius: BorderRadius.circular(5 * fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Danai',
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
                            ],
                          ),
                        ),
                        Container(
                          // autogroup3y3zTiW (3wBCVX78grsbBTRe2P3Y3Z)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 1 * fem, 3 * fem),
                          width: 379 * fem,
                          height: 5 * fem,
                        ),
                        Container(
                          // autogroup4gvmCRC (3wBCbw67YCF9sFDG7H4GVM)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 22 * fem, 0 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // terdanaiL1c (41:192)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 261 * fem, 2 * fem),
                                child: Text(
                                  'Terdanai',
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
                                // rEr (41:193)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 2 * fem, 0 * fem, 0 * fem),
                                child: Text(
                                  '50%',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 11 * ffem,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
