import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/models.dart';
import 'package:myapp/page-1/navbar-pendana.dart';
import 'package:myapp/utils.dart';

class Portofolio extends StatelessWidget {
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
        // portofolio1yG (28:32)
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupp8rtjPU (NsxrpEykgk5TNCwZH9P8Rt)
              padding:
                  EdgeInsets.fromLTRB(15 * fem, 14 * fem, 17 * fem, 14 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // portofolioqBc (58:147)
                    margin: EdgeInsets.fromLTRB(
                        2 * fem, 0 * fem, 0 * fem, 24 * fem),
                    child: Text(
                      'Portofolio',
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
                    // autogroupp7vnKca (NsxpZPa7sqa2FcuVyLp7vn)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 2 * fem, 22 * fem),
                    padding: EdgeInsets.fromLTRB(
                        122.5 * fem, 10 * fem, 118.5 * fem, 17 * fem),
                    width: 380 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff3584ff),
                      borderRadius: BorderRadius.circular(24 * fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupnq66CRU (NsxphtKxpeKemjKn8qnq66)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 8 * fem),
                          width: double.infinity,
                          height: 58 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // totalasetiuc (46:152)
                                left: 19.5 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 99 * fem,
                                    height: 30 * fem,
                                    child: Text(
                                      'Total Aset',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rp15000000DLa (46:153)
                                left: 0 * fem,
                                top: 28 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 139 * fem,
                                    height: 30 * fem,
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 20 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xffffffff),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Rp.',
                                          ),
                                          TextSpan(
                                            text: ' 15.000000',
                                            style: SafeGoogleFont(
                                              'Poppins',
                                              fontSize: 20 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.5 * ffem / fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupbzdtWU6 (NsxpmtDJSfrRFYhSSxbzDt)
                          margin: EdgeInsets.fromLTRB(
                              2.5 * fem, 0 * fem, 2.5 * fem, 0 * fem),
                          width: double.infinity,
                          height: 43 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // totalkeuntunganDtJ (46:155)
                                left: 0 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 134 * fem,
                                    height: 23 * fem,
                                    child: Text(
                                      'Total Keuntungan',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rp15000006hC (54:70)
                                left: 17 * fem,
                                top: 20 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 100 * fem,
                                    height: 23 * fem,
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 15 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xffffffff),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Rp. ',
                                          ),
                                          TextSpan(
                                            text: '1.500.000',
                                            style: SafeGoogleFont(
                                              'Poppins',
                                              fontSize: 15 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.5 * ffem / fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ],
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
                  Container(
                    // autogroupfulre6S (Nsxpuo9nQGJGcmVw9efuLr)
                    margin: EdgeInsets.fromLTRB(
                        125.5 * fem, 0 * fem, 107 * fem, 5 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // daftarinvestasiB6N (69:117)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 17.5 * fem, 0 * fem),
                          child: Text(
                            'Daftar Investasi',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff3584ff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group28UbG (28:58)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 1 * fem, 14 * fem),
                    padding: EdgeInsets.fromLTRB(
                        1 * fem, 4 * fem, 1 * fem, 12 * fem),
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
                          // autogroupnsxtvCN (NsxsEPxAypVRRw5AzwNsXt)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 15 * fem, 5 * fem),
                          width: double.infinity,
                          height: 26 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroup7z6ie8N (NsxsNZPEnnnKaPi9UG7z6i)
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 4 * fem, 163 * fem, 4 * fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // noAcW (28:62)
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
                                      // p20072312345gar (28:64)
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
                                // image7Dqg (28:68)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                width: 26 * fem,
                                height: 26 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/image-7-hvn.png',
                                ),
                              ),
                              Text(
                                // bulanXrN (28:63)
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
                          // line45N6 (28:65)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 10 * fem),
                          width: double.infinity,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffbcbcbc),
                          ),
                        ),
                        Container(
                          // autogroupmthtbrE (NsxsXJdfayNzsjxuQPmtht)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 35 * fem, 16 * fem),
                          width: double.infinity,
                          height: 59 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupk11pvNi (NsxsftDhpEkJzGL1VSK11p)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 55 * fem, 1 * fem),
                                width: 136 * fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // totalinvestasiFA6 (69:118)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 4 * fem),
                                      width: double.infinity,
                                      child: Text(
                                        'Total Investasi',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 18 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // keuntunganm8S (69:119)
                                      width: double.infinity,
                                      child: Text(
                                        'Keuntungan',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 18 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogrouppww4JPG (Nsxskt5NqmfGb33at5pww4)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 2 * fem, 4 * fem, 2 * fem),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // rp2aA (28:71)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 7 * fem),
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
                                    Text(
                                      // rpwSE (69:107)
                                      'Rp',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff727272),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroupnvhgHFC (Nsxsqo6raqxYbPpLMBnVhg)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                width: 109 * fem,
                                height: 58 * fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // Csx (28:70)
                                      left: 0 * fem,
                                      top: 0 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 109 * fem,
                                          height: 30 * fem,
                                          child: Text(
                                            '10.000.000',
                                            style: SafeGoogleFont(
                                              'Poppins',
                                              fontSize: 20 * ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5 * ffem / fem,
                                              color: Color(0xff020202),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // uXU (69:116)
                                      left: 0 * fem,
                                      top: 28 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 96 * fem,
                                          height: 30 * fem,
                                          child: Text(
                                            '1.000.000',
                                            style: SafeGoogleFont(
                                              'Poppins',
                                              fontSize: 20 * ffem,
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
                        Container(
                          // autogroupwbqqREv (Nsxt1xUbCq1pym98yZwBqQ)
                          width: double.infinity,
                          height: 5 * fem,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group29aNi (69:151)
                    margin: EdgeInsets.fromLTRB(
                        1 * fem, 0 * fem, 0 * fem, 30 * fem),
                    padding: EdgeInsets.fromLTRB(
                        1 * fem, 4 * fem, 1 * fem, 12 * fem),
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
                          // autogroup2slr1iv (NsxtXwcdN2VaaPSbKT2sLr)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 16 * fem, 5 * fem),
                          width: double.infinity,
                          height: 26 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupmyug8oY (Nsxtg73hAznUir5Znmmyug)
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 4 * fem, 163 * fem, 4 * fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // noFtA (69:153)
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
                                      // p20072312346ypA (69:155)
                                      'P20072312346',
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
                                // image7Kt2 (69:157)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                width: 26 * fem,
                                height: 26 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/image-7-hvn.png',
                                ),
                              ),
                              Text(
                                // bulanevJ (69:154)
                                '7 Bulan',
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
                          // line4zjG (69:156)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 10 * fem),
                          width: double.infinity,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffbcbcbc),
                          ),
                        ),
                        Container(
                          // autogroup97fcLYE (Nsxto21qj5r8y7Y9Qw97FC)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 43 * fem, 16 * fem),
                          width: double.infinity,
                          height: 59 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupbs2afaW (NsxtvBUa8YkqzcqCojBS2a)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 55 * fem, 1 * fem),
                                width: 136 * fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // totalinvestasizMt (69:163)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 4 * fem),
                                      width: double.infinity,
                                      child: Text(
                                        'Total Investasi',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 18 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // keuntunganuUr (69:162)
                                      width: double.infinity,
                                      child: Text(
                                        'Keuntungan',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 18 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogrouppbf4qtJ (Nsxu1LzdizuAnDSS3TpBF4)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 2 * fem, 4 * fem, 2 * fem),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // rpyzW (69:160)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 7 * fem),
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
                                    Text(
                                      // rpWUe (69:161)
                                      'Rp',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff727272),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogrouprvylf6e (Nsxu5gCkUrtfdgbQ3krvyL)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                width: 101 * fem,
                                height: 58 * fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // PYS (69:158)
                                      left: 0 * fem,
                                      top: 0 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 101 * fem,
                                          height: 30 * fem,
                                          child: Text(
                                            '5.000.000',
                                            style: SafeGoogleFont(
                                              'Poppins',
                                              fontSize: 20 * ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5 * ffem / fem,
                                              color: Color(0xff020202),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // h3L (69:159)
                                      left: 0 * fem,
                                      top: 28 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 83 * fem,
                                          height: 30 * fem,
                                          child: Text(
                                            '500.000',
                                            style: SafeGoogleFont(
                                              'Poppins',
                                              fontSize: 20 * ffem,
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
                        Container(
                          // autogroupfedlNfG (NsxuFLbKQ6FrTaFF8sfEDL)
                          width: double.infinity,
                          height: 5 * fem,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupd2aa88e (Nsxq3YRsnwWkoAQn1Fd2Aa)
                    margin: EdgeInsets.fromLTRB(
                        118 * fem, 0 * fem, 101 * fem, 5 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // riwayatinvestasid5Q (69:134)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 16 * fem, 0 * fem),
                          child: Text(
                            'Riwayat Investasi',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff3584ff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group30vaJ (69:167)
                    margin:
                        EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
                    padding: EdgeInsets.fromLTRB(
                        1 * fem, 4 * fem, 0 * fem, 12 * fem),
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
                          // autogroupkjsqZdG (NsxumQZYqkMHecVXQJKJsQ)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 17 * fem, 5 * fem),
                          width: double.infinity,
                          height: 26 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupurx2H3U (Nsxutjgfp8VMrwgEeBURx2)
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 4 * fem, 163 * fem, 4 * fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // no1EN (69:169)
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
                                      // p20072312346iea (69:171)
                                      'P20072312346',
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
                                // image7fZp (69:173)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                width: 26 * fem,
                                height: 26 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/image-7-hvn.png',
                                ),
                              ),
                              Text(
                                // bulanzrz (69:170)
                                '7 Bulan',
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
                          // line4kLN (69:172)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 1 * fem, 10 * fem),
                          width: 379 * fem,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffbcbcbc),
                          ),
                        ),
                        Container(
                          // autogroupcfga5dY (NsxvBPsaZuXtXWjVH1CFgA)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 36 * fem, 16 * fem),
                          width: double.infinity,
                          height: 59 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroup9nvtPPL (NsxvK99fxakNhueL8c9NVt)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 55 * fem, 1 * fem),
                                width: 136 * fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // totalinvestasiusU (69:179)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 4 * fem),
                                      width: double.infinity,
                                      child: Text(
                                        'Total Investasi',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 18 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // keuntungan2SJ (69:178)
                                      width: double.infinity,
                                      child: Text(
                                        'Keuntungan',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 18 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroup6vgwxKx (NsxvQ4B9hf3eiGR5bi6vGW)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 2 * fem, 4 * fem, 2 * fem),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // rpVKt (69:176)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 7 * fem),
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
                                    Text(
                                      // rpCzz (69:177)
                                      'Rp',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff727272),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroupi59qwxa (NsxvUUDTjyeqA9WsXYi59Q)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                width: 109 * fem,
                                height: 58 * fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // UxW (69:174)
                                      left: 0 * fem,
                                      top: 0 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 109 * fem,
                                          height: 30 * fem,
                                          child: Text(
                                            '10.000.000',
                                            style: SafeGoogleFont(
                                              'Poppins',
                                              fontSize: 20 * ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5 * ffem / fem,
                                              color: Color(0xff020202),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // ake (69:175)
                                      left: 0 * fem,
                                      top: 28 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 96 * fem,
                                          height: 30 * fem,
                                          child: Text(
                                            '1.000.000',
                                            style: SafeGoogleFont(
                                              'Poppins',
                                              fontSize: 20 * ffem,
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
                        Container(
                          // autogroupdage6DC (NsxveJGRE8FPAs4NTkdAge)
                          width: 380 * fem,
                          height: 5 * fem,
                          child: Image.asset(
                            'assets/page-1/images/auto-group-wgmd.png',
                            width: 380 * fem,
                            height: 5 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupxzawE4W (Nsxq9hvGnu3GhiMvKWxZAW)
              width: double.infinity,
              height: 138 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // group31yXt (69:182)
                    left: 16 * fem,
                    top: 0 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          1 * fem, 4 * fem, 0 * fem, 12 * fem),
                      width: 381 * fem,
                      height: 138 * fem,
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
                            // autogroup4o4rj9g (NsxqQnKV9xPq6STUR14o4r)
                            margin: EdgeInsets.fromLTRB(
                                16 * fem, 0 * fem, 17 * fem, 5 * fem),
                            width: double.infinity,
                            height: 26 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupxjgweGe (NsxqZrth5yTEmSVY3JxJGW)
                                  padding: EdgeInsets.fromLTRB(
                                      0 * fem, 4 * fem, 163 * fem, 4 * fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // noNTY (69:184)
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
                                        // p20072312346gj8 (69:186)
                                        'P20072312346',
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
                                  // image7dPU (69:188)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                  width: 26 * fem,
                                  height: 26 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/image-7-hvn.png',
                                  ),
                                ),
                                Text(
                                  // bulanA8W (69:185)
                                  '7 Bulan',
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
                            // line473k (69:187)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 1 * fem, 10 * fem),
                            width: 379 * fem,
                            height: 1 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xffbcbcbc),
                            ),
                          ),
                          Container(
                            // autogroupm1wcEeA (NsxqhXLbCC43MRTYyNM1wc)
                            margin: EdgeInsets.fromLTRB(
                                16 * fem, 0 * fem, 36 * fem, 16 * fem),
                            width: double.infinity,
                            height: 59 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupyldcxaA (NsxqqX7GSF7aK4CsbbyLDC)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 55 * fem, 1 * fem),
                                  width: 136 * fem,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // totalinvestasi6Aa (69:194)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 0 * fem, 4 * fem),
                                        width: double.infinity,
                                        child: Text(
                                          'Total Investasi',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 18 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // keuntunganCUW (69:193)
                                        width: double.infinity,
                                        child: Text(
                                          'Keuntungan',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 18 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupauajjDY (NsxqvmTXK9sah4kvktAUaJ)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 2 * fem, 4 * fem, 2 * fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // rpTfL (69:191)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 0 * fem, 7 * fem),
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
                                      Text(
                                        // rpP3C (69:192)
                                        'Rp',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xff727272),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroup1e3gw4i (Nsxr1WpcVJwVWbe2Nu1E3g)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                  width: 109 * fem,
                                  height: 58 * fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // G6z (69:189)
                                        left: 0 * fem,
                                        top: 0 * fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 109 * fem,
                                            height: 30 * fem,
                                            child: Text(
                                              '10.000.000',
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 20 * ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5 * ffem / fem,
                                                color: Color(0xff020202),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // NA2 (69:190)
                                        left: 0 * fem,
                                        top: 28 * fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 96 * fem,
                                            height: 30 * fem,
                                            child: Text(
                                              '1.000.000',
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 20 * ffem,
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
                          Container(
                            // autogroupq7dg4Ye (NsxrBvgvxfqpgCoJmuq7dG)
                            width: 380 * fem,
                            height: 5 * fem,
                            child: Image.asset(
                              'assets/page-1/images/auto-group-wgmd.png',
                              width: 380 * fem,
                              height: 5 * fem,
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
    );
  }
}
