import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // loginiNA (1:55)
        padding: EdgeInsets.fromLTRB(51 * fem, 153 * fem, 51 * fem, 186 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // moneylogodesignstemplatevector (7:191)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 26 * fem),
              width: 300 * fem,
              height: 100 * fem,
              child: Image.asset(
                'assets/page-1/images/logo.png',
              ),
            ),
            Container(
              // group262XG (1:58)
              padding:
                  EdgeInsets.fromLTRB(23 * fem, 36 * fem, 23 * fem, 29 * fem),
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
                    // group2hNW (1:69)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 28 * fem),
                    padding: EdgeInsets.fromLTRB(
                        22 * fem, 12 * fem, 22 * fem, 14 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffbcbcbc)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(3 * fem),
                    ),
                    child: Text(
                      'Email',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff727272),
                      ),
                    ),
                  ),
                  Container(
                    // group4wne (1:60)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 28 * fem),
                    padding: EdgeInsets.fromLTRB(
                        22 * fem, 12 * fem, 22 * fem, 14 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffbcbcbc)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(3 * fem),
                    ),
                    child: Text(
                      'Kata Sandi',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff727272),
                      ),
                    ),
                  ),
                  Container(
                    // group111p (1:78)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 21 * fem),
                    child: TextButton(
                      onPressed: () {},
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
                            'Masuk',
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
                  ),
                  Container(
                    // group25FRx (1:65)
                    margin: EdgeInsets.fromLTRB(
                        53 * fem, 0 * fem, 53 * fem, 0 * fem),
                    width: double.infinity,
                    height: 18 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // belumpunyaakundaftarPHG (1:66)
                          left: -17 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 160 * fem,
                              height: 18 * fem,
                              child: Text(
                                'Belum punya akun?',
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
                          ),
                        ),
                        Positioned(
                          // daftarUZc (1:67)
                          left: 121.75 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 38 * fem,
                              height: 18 * fem,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text(
                                  'Daftar',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff3584ff),
                                  ),
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
          ],
        ),
      ),
    );
  }
}
