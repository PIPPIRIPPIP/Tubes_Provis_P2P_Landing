import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class SuksesTarik extends StatelessWidget {
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
            // suksestarikf5p (63:640)
            width: double.infinity,
            height: 736 * fem,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Stack(
              children: [
                Positioned(
                  // autogroupfs9gBpr (NsxSGhNjhyPPrC9vJhFs9g)
                  left: 0 * fem,
                  top: 501 * fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        62 * fem, 7 * fem, 74 * fem, 37 * fem),
                    width: 414 * fem,
                    height: 235 * fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupshsutDU (NsxRt8C1ocfQ4Jz18EshsU)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 117 * fem, 106 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // rectangle4624n (63:662)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 11 * fem, 1 * fem),
                                width: 40 * fem,
                                height: 39 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7 * fem),
                                  color: Color(0xffd9d9d9),
                                ),
                              ),
                              Container(
                                // gopay8tW (63:663)
                                constraints: BoxConstraints(
                                  maxWidth: 110 * fem,
                                ),
                                child: Text(
                                  'BCA\n113049000290',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group1ebx (63:641)
                          margin: EdgeInsets.fromLTRB(
                              12 * fem, 0 * fem, 0 * fem, 0 * fem),
                          width: 266 * fem,
                          height: 37 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff3584ff),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Selesai',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.5 * ffem / fem,
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
                  // autogroupurou7Ee (NsxS1NUwVYBngEDtSaURoU)
                  left: 0 * fem,
                  top: 0 * fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        24 * fem, 26 * fem, 24 * fem, 37 * fem),
                    width: 414 * fem,
                    height: 464 * fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogrouppcbp158 (NsxRPiqg38scjXeFKhPcBp)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 71 * fem, 37.33 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  // group66Kbc (63:645)
                                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem,
                                      56.15 * fem, 15.15 * fem),
                                  width: 14.85 * fem,
                                  height: 14.85 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-66.png',
                                    width: 14.85 * fem,
                                    height: 14.85 * fem,
                                  ),
                                ),
                              ),
                              Container(
                                // moneylogodesignstemplatevector (63:644)
                                width: 224 * fem,
                                height: 76 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/logo.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupqldcLFp (NsxRW8petUFBRKRsQbQLdc)
                          margin: EdgeInsets.fromLTRB(
                              107.33 * fem, 0 * fem, 105.33 * fem, 17 * fem),
                          width: double.infinity,
                          height: 189.67 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // group67rzr (63:648)
                                left: 11.6717834473 * fem,
                                top: 11.671875 * fem,
                                child: Container(
                                  width: 130 * fem,
                                  height: 178 * fem,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // autogroupvr6an7p (NsxReoEtQCEB8FjoRBVr6A)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 18 * fem),
                                        padding: EdgeInsets.fromLTRB(5 * fem,
                                            7 * fem, 5 * fem, 37 * fem),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xff66b61f),
                                          borderRadius:
                                              BorderRadius.circular(65 * fem),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // intersectrtN (63:652)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  9.03 * fem),
                                              width: 14.51 * fem,
                                              height: 15.97 * fem,
                                              child: Image.asset(
                                                'assets/page-1/images/intersect.png',
                                                width: 14.51 * fem,
                                                height: 15.97 * fem,
                                              ),
                                            ),
                                            Container(
                                              // image6yxz (63:650)
                                              margin: EdgeInsets.fromLTRB(
                                                  28 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem),
                                              width: 61 * fem,
                                              height: 61 * fem,
                                              child: Image.asset(
                                                'assets/page-1/images/image-6.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // berhasilu5x (63:651)
                                        margin: EdgeInsets.fromLTRB(
                                            1 * fem, 0 * fem, 0 * fem, 0 * fem),
                                        child: Text(
                                          'Berhasil !!',
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 20 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xff66b61f),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                // subtractDMY (63:656)
                                left: 0 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 153.34 * fem,
                                    height: 153.34 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/subtract.png',
                                      width: 153.34 * fem,
                                      height: 153.34 * fem,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupgzwnJtn (NsxRnsqkvhuPgJRwxxgZWN)
                          margin: EdgeInsets.fromLTRB(
                              88.5 * fem, 0 * fem, 74 * fem, 0 * fem),
                          width: double.infinity,
                          height: 81 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // januari20231300SEJ (63:655)
                                left: 0 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 189 * fem,
                                    height: 27 * fem,
                                    child: Text(
                                      '01 Januari 2023, 13.00',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 18 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rpK3C (63:659)
                                left: 0.5 * fem,
                                top: 4 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 38 * fem,
                                    height: 60 * fem,
                                    child: RichText(
                                      text: TextSpan(
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 40 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Rp.',
                                            style: SafeGoogleFont(
                                              'Poppins',
                                              fontSize: 18 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.5 * ffem / fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' ',
                                            style: SafeGoogleFont(
                                              'Poppins',
                                              fontSize: 40 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.5 * ffem / fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // REe (63:664)
                                left: 35.5 * fem,
                                top: 21 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 168 * fem,
                                    height: 60 * fem,
                                    child: Text(
                                      '500.000',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 40 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff000000),
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
                ),
                Positioned(
                  // line21L6i (63:660)
                  left: 0 * fem,
                  top: 464 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 414 * fem,
                      height: 1 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffb7b3b3),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // transferke3Wv (63:661)
                  left: 31 * fem,
                  top: 477 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 88 * fem,
                      height: 24 * fem,
                      child: Text(
                        'Transfer ke',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
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
