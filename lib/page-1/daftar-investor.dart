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
        // daftarinvestorGwY (1:28)
        padding: EdgeInsets.fromLTRB(51 * fem, 26 * fem, 51 * fem, 90 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // moneylogodesignstemplatevector (7:192)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 21 * fem),
              width: 224 * fem,
              height: 76 * fem,
              child: Image.asset(
                'assets/page-1/images/moneylogodesignstemplatevectorfinancelogodesignsvector1-removebg-preview-1.png',
              ),
            ),
            Container(
              // group26mfL (1:57)
              padding:
                  EdgeInsets.fromLTRB(23 * fem, 25 * fem, 23 * fem, 30 * fem),
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
                    // daftarsebagaiinvestorvge (1:30)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 12 * fem),
                    child: Text(
                      'Daftar Sebagai Investor',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff343434),
                      ),
                    ),
                  ),
                  Container(
                    // haraplengkapiformdibawahiniLVU (1:31)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 1 * fem, 28 * fem),
                    child: Text(
                      'Harap lengkapi form dibawah ini',
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
                  Container(
                    // group2BFC (1:34)
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
                    // group3Naa (1:35)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 25 * fem),
                    padding: EdgeInsets.fromLTRB(
                        22 * fem, 12 * fem, 22 * fem, 14 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffbcbcbc)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(3 * fem),
                    ),
                    child: Text(
                      'Nomor Ponsel',
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
                    // group4cUv (1:38)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 25 * fem),
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
                    // autogroupyg3hreA (3w9cVVjczyYiQez1nGYg3h)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 5 * fem, 29 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // group24N6i (1:42)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 9 * fem, 16 * fem),
                          padding: EdgeInsets.fromLTRB(
                              1.25 * fem, 1.88 * fem, 1.88 * fem, 1.25 * fem),
                          decoration: BoxDecoration(
                            color: Color(0xff3584ff),
                          ),
                          child: Center(
                            // image6JuU (1:44)
                            child: SizedBox(
                              width: 21.88 * fem,
                              height: 21.88 * fem,
                              child: Image.asset(
                                'assets/page-1/images/image-6-JwY.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // dengankliklanjutkanandatelahme (1:41)
                          constraints: BoxConstraints(
                            maxWidth: 227 * fem,
                          ),
                          child: Text(
                            'Dengan klik Lanjutkan, Anda telah membaca dan menyetujui Syarat & Ketentuan serta Kebikajakn Provasi yang berlaku.',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 10 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff343434),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group1HmQ (1:45)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 26 * fem),
                    width: double.infinity,
                    height: 37 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff3584ff),
                      borderRadius: BorderRadius.circular(3 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Lanjutkan',
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
                  Container(
                    // group25v3g (1:50)
                    margin: EdgeInsets.fromLTRB(
                        56 * fem, 0 * fem, 55 * fem, 0 * fem),
                    width: double.infinity,
                    height: 18 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // sudahpunyaakunloginEq4 (1:48)
                          left: -17 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 155 * fem,
                              height: 18 * fem,
                              child: Text(
                                'Sudah punya akun?',
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
                          // login78A (1:49)
                          left: 122.75 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 32 * fem,
                              height: 18 * fem,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text(
                                  'Login',
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
