import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class TarikSaldo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // tariksaldo2Wa (19:3)
            width: double.infinity,
            height: 736*fem,
            decoration: BoxDecoration (
              color: Color(0xffffffff),
            ),
            child: Stack(
              children: [
                Positioned(
                  // transferkebankxf8 (19:56)
                  left: 17*fem,
                  top: 234*fem,
                  child: Align(
                    child: SizedBox(
                      width: 99*fem,
                      height: 18*fem,
                      child: Text(
                        'Transfer ke Bank',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 12*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5*ffem/fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // group29qU2 (19:54)
                  left: 0*fem,
                  top: 65*fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0*fem, 12*fem, 0*fem, 20*fem),
                    width: 414*fem,
                    height: 150*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff3584ff),
                      borderRadius: BorderRadius.circular(10*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogrouphtqxfxr (NsxUDixjngEjzRuA44HTqx)
                          margin: EdgeInsets.fromLTRB(17*fem, 0*fem, 117*fem, 8*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // danatersediaQQe (19:12)
                                margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 4*fem, 0*fem),
                                child: Text(
                                  'Dana Tersedia  : ',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              RichText(
                                // rp100000000usC (19:24)
                                text: TextSpan(
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 15*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Rp',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 15*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '. ',
                                    ),
                                    TextSpan(
                                      text: '100.000.000',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 20*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // rectangle38Ske (19:49)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                          width: double.infinity,
                          height: 1*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                        ),
                        Container(
                          // nominalpenarikanNeJ (19:46)
                          margin: EdgeInsets.fromLTRB(7*fem, 0*fem, 0*fem, 7*fem),
                          child: Text(
                            'Nominal Penarikan',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupf1caHWN (NsxUJdzDXkY1znfuXAF1ca)
                          width: double.infinity,
                          height: 36*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Center(
                            child: Text(
                              'Rp. 100.000',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 20*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5*ffem/fem,
                                color: Color(0xff343434),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  // autogroupjkyeye6 (NsxTkeuWZYHtAFgd2DjkYE)
                  left: 0*fem,
                  top: 252*fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(16*fem, 19*fem, 19*fem, 28*fem),
                    width: 414*fem,
                    height: 484*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // autogroupokwjFrW (NsxT769maaq1a4MyfpokWJ)
                          margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 162*fem, 20*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroup9hweBkA (NsxTDFeAaYMXUcK7z69HWE)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                                width: 40*fem,
                                height: 40*fem,
                                child: Image.asset(
                                  'assets/page-1/images/auto-group-9hwe.png',
                                  width: 40*fem,
                                  height: 40*fem,
                                ),
                              ),
                              Container(
                                // bcabankcentralasiaHYJ (30:8)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                child: Text(
                                  'BCA (Bank Central Asia)',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupteaazBp (NsxTJfep2NLu3SkpzTTEAa)
                          margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 121*fem, 20*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // ellipse6KUz (30:7)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                                width: 40*fem,
                                height: 40*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(20*fem),
                                  color: Color(0xff343434),
                                ),
                              ),
                              Container(
                                // bnibanknasionalindonesiaSpW (30:9)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                child: Text(
                                  'BNI (Bank Nasional Indonesia)',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupzaa29yp (NsxTQVpRtVQgaLvfcYZAa2)
                          margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 136*fem, 20*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // ellipse5tRc (30:6)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                                width: 40*fem,
                                height: 40*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(20*fem),
                                  color: Color(0xff343434),
                                ),
                              ),
                              Container(
                                // bribankrakyatindonesiaCx6 (30:10)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                child: Text(
                                  'BRI (Bank Rakyat Indonesia)',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogrouprwnzifY (NsxTVzfGcn1jjbKCYTRWNz)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 240.5*fem, 20*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // ellipse4FfU (30:5)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.5*fem, 0*fem),
                                width: 40*fem,
                                height: 40*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(20*fem),
                                  color: Color(0xff343434),
                                ),
                              ),
                              Container(
                                // bankmandiriaxe (30:11)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Bank Mandiri',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupjt3l6vz (NsxTbQfv4c17JRkuYpjT3L)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 232*fem, 123*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // ellipse7qNn (69:416)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                                width: 40*fem,
                                height: 40*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(20*fem),
                                  color: Color(0xff343434),
                                ),
                              ),
                              Container(
                                // bankpermataAfx (69:417)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Bank Permata',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group47HVg (63:627)
                          margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 0*fem),
                          width: 376*fem,
                          height: 34*fem,
                          decoration: BoxDecoration (
                            color: Color(0xff3584ff),
                            borderRadius: BorderRadius.circular(3*fem),
                          ),
                          child: Center(
                            child: Text(
                              'Tarik Saldo',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5*ffem/fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  // icommercecreditcardw4S (41:229)
                  left: 119*fem,
                  top: 231*fem,
                  child: Align(
                    child: SizedBox(
                      width: 24*fem,
                      height: 24*fem,
                      child: Image.asset(
                        'assets/page-1/images/i-commerce-creditcard.png',
                        width: 24*fem,
                        height: 24*fem,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // autogroupdtxcRVQ (NsxSw1cEF4PQn6yzxzDTXC)
                  left: 0*fem,
                  top: 0*fem,
                  child: Container(
                    width: 414*fem,
                    height: 46*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // group279wC (58:126)
                          left: 17*fem,
                          top: 12*fem,
                          child: Container(
                            width: 125*fem,
                            height: 21*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  // tariksaldoUyU (58:128)
                                  'Tarik Saldo',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // group322k6 (66:302)
                          left: 0*fem,
                          top: 0*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(17*fem, 13*fem, 272*fem, 12*fem),
                            width: 414*fem,
                            height: 46*fem,
                            decoration: BoxDecoration (
                              color: Color(0xff3584ff),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  // tariksaldoicv (66:304)
                                  'Tarik Saldo',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5*ffem/fem,
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
                ),
              ],
            ),
          ),
              ),
      ),
    );
  }
}