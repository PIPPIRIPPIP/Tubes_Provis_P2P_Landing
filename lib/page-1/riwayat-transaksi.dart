import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class RiwayatTransaksiPage extends StatelessWidget {
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
            // riwayattransaksipeminjam6xE (63:265)
            width: double.infinity,
            height: 736 * fem,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Stack(
              children: [
                Positioned(
                  // autogrouphwo1pdL (3wA18M25qtcYPzVYrbHWo1)
                  left: 0 * fem,
                  top: 118 * fem,
                  child: Container(
                    width: 414 * fem,
                    height: 260 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // bayarpinjamanviabca05april2023 (63:287)
                          left: 17 * fem,
                          top: 9 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 97 * fem,
                              height: 54 * fem,
                              child: RichText(
                                text: TextSpan(
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Bayar Pinjaman\n',
                                    ),
                                    TextSpan(
                                      text: 'via BCA\n05 April 2023',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
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
                          // rp100000CGW (63:288)
                          left: 321 * fem,
                          top: 27 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 72 * fem,
                              height: 18 * fem,
                              child: Text(
                                '-Rp 100.000',
                                textAlign: TextAlign.right,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xffd32600),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // isisaldoviabca04april2023tv2 (63:289)
                          left: 17 * fem,
                          top: 75 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 77 * fem,
                              height: 54 * fem,
                              child: RichText(
                                text: TextSpan(
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Isi Saldo\n',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'via BCA\n04 April 2023',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
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
                          // rp100000D58 (63:290)
                          left: 320 * fem,
                          top: 93 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 73 * fem,
                              height: 18 * fem,
                              child: Text(
                                '+Rp 100.000',
                                textAlign: TextAlign.right,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff03aa00),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // tarikdanaviabca03april20237RQ (63:291)
                          left: 17 * fem,
                          top: 141 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 76 * fem,
                              height: 54 * fem,
                              child: RichText(
                                text: TextSpan(
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Tarik Dana\n',
                                    ),
                                    TextSpan(
                                      text: 'via BCA\n03 April 2023',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
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
                          // rp5000000GxW (63:292)
                          left: 307 * fem,
                          top: 159 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 86 * fem,
                              height: 18 * fem,
                              child: Text(
                                '-Rp 5.000.000',
                                textAlign: TextAlign.right,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xffd32600),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // pendanaanp2007231234503april20 (63:293)
                          left: 17 * fem,
                          top: 206 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 83 * fem,
                              height: 54 * fem,
                              child: RichText(
                                text: TextSpan(
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Pendanaan\n',
                                    ),
                                    TextSpan(
                                      text: 'P20072312345\n',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '03 April 2023',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
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
                          // rp5000000S1k (63:294)
                          left: 305 * fem,
                          top: 224 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 88 * fem,
                              height: 18 * fem,
                              child: Text(
                                '+Rp 5.000.000',
                                textAlign: TextAlign.right,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff03aa00),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // line13X3C (63:295)
                          left: 0 * fem,
                          top: 3 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 414 * fem,
                              height: 1 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffbcbcbc),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // line14njp (63:296)
                          left: 0 * fem,
                          top: 69 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 414 * fem,
                              height: 1 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffbcbcbc),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // line15JCN (63:297)
                          left: 0 * fem,
                          top: 134 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 414 * fem,
                              height: 1 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffbcbcbc),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // line1628N (63:298)
                          left: 0 * fem,
                          top: 202 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 414 * fem,
                              height: 1 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffbcbcbc),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  // group279yg (63:279)
                  left: 0 * fem,
                  top: 0 * fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        17 * fem, 13 * fem, 220 * fem, 12 * fem),
                    width: 414 * fem,
                    height: 46 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff3584ff),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              '../assets/page-1/images/panah.png',
                              width: 20 * fem,
                              height: 20 * fem,
                            ),
                          ),
                        ),
                        Text(
                          // riwayattransaksi2na (63:281)
                          'Riwayat Transaksi',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  // autogroupheko9sC (3w9zuSDvrmFjRzyUmFheko)
                  left: 17 * fem,
                  top: 61 * fem,
                  child: Container(
                    width: 382.36 * fem,
                    height: 42 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // riwayattransaksiUPg (63:285)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 3 * fem, 126 * fem, 0 * fem),
                          child: Text(
                            'Riwayat Transaksi',
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
                          // buttonsyrE (63:303)
                          padding: EdgeInsets.fromLTRB(
                              29 * fem, 13 * fem, 29 * fem, 13 * fem),
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xfff2f2f7),
                            borderRadius: BorderRadius.circular(30 * fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // labelJ7p (I63:303;137:4014)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 16 * fem, 0 * fem),
                                child: Text(
                                  'Filter',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1 * ffem / fem,
                                    letterSpacing: 0.32 * fem,
                                    color: Color(0xff252525),
                                  ),
                                ),
                              ),
                              Container(
                                // chevronleftoKU (I63:303;137:4015)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                width: 13.36 * fem,
                                height: 7.69 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/chevronleft.png',
                                  width: 13.36 * fem,
                                  height: 7.69 * fem,
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
                  // autogrouptynkhve (3wA1jQqzK5cwBoTQWfTYNK)
                  left: 17 * fem,
                  top: 387 * fem,
                  child: Container(
                    width: 376 * fem,
                    height: 54 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // isisaldoviabca02april20232CE (63:300)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 212 * fem, 0 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 76 * fem,
                          ),
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                              children: [
                                TextSpan(
                                  text: 'Isi Saldo\n',
                                ),
                                TextSpan(
                                  text: 'via BCA\n',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text: '02 April 2023',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          // rp5000000izA (63:301)
                          '+Rp 5.000.000',
                          textAlign: TextAlign.right,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff03aa00),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  // line18GVt (63:302)
                  left: 0 * fem,
                  top: 383 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 414 * fem,
                      height: 1 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffbcbcbc),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // line17C8e (63:299)
                  left: 0 * fem,
                  top: 449 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 414 * fem,
                      height: 1 * fem,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffbcbcbc),
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
