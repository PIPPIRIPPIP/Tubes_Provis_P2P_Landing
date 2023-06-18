import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:myapp/utils.dart';

import '../models/user.dart';

class SuksesTopUp extends StatelessWidget {
  final TransaksiPembayaran transaksi;

  SuksesTopUp(this.transaksi);

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
            // suksestopupBpz (69:379)
            width: double.infinity,
            height: 736 * fem,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Stack(
              children: [
                Positioned(
                  // autogroupc8eicBY (NsxQYzjs2gyGe1etGPc8Ei)
                  left: 0 * fem,
                  top: 0 * fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        24 * fem, 26 * fem, 24 * fem, 38 * fem),
                    width: 414 * fem,
                    height: 464 * fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupkjnatuk (NsxPwmFZzajWfNoNmEKJNA)
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
                                  // group66cKx (69:409)
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
                                // moneylogodesignstemplatevector (69:403)
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
                          // autogroupremcE6S (NsxQ3bRBrhoJCGyDPKREmc)
                          margin: EdgeInsets.fromLTRB(
                              107.33 * fem, 0 * fem, 105.33 * fem, 17 * fem),
                          width: double.infinity,
                          height: 189.67 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // group67kaa (69:411)
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
                                        // autogroup3z3cGop (NsxQBbBs6krq9uiY1Z3Z3C)
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
                                              // intersectMCz (63:521)
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
                                              // image6cuc (63:509)
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
                                        // berhasilLqc (69:410)
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
                                // subtract3zv (63:524)
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
                          // autogroup7uaaZCa (NsxQKW8M4MJgX8X2iF7UAA)
                          margin: EdgeInsets.fromLTRB(
                              88.5 * fem, 0 * fem, 74 * fem, 0 * fem),
                          width: double.infinity,
                          height: 80 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // januari202313005wc (69:412)
                                left: 0 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 189 * fem,
                                    height: 27 * fem,
                                    child: Text(
                                      DateFormat('dd MMMM yyyy').format(transaksi.timestamp),
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
                                // rpk2A (63:528)
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
                                // pAS (69:413)
                                left: 35.5 * fem,
                                top: 20 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 168 * fem,
                                    height: 60 * fem,
                                    child: Text(
                                      transaksi.jumlah.toString(),
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
                  // line21Wox (69:414)
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
                  // isisaldodari2nJ (69:415)
                  left: 31 * fem,
                  top: 477 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 102 * fem,
                      height: 24 * fem,
                      child: Text(
                        'Isi Saldo Dari',
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
                Positioned(
                  // autogroupvnpxia2 (NsxQoez6yTFR4g2Jk9vNPx)
                  left: 0 * fem,
                  top: 501 * fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        62 * fem, 8 * fem, 74 * fem, 37 * fem),
                    width: 414 * fem,
                    height: 235 * fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupjcxgCEJ (NsxQQkUbwG4gu955sXJcXG)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 173 * fem, 114 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle46L5c (69:422)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 11 * fem, 0 * fem),
                                width: 40 * fem,
                                height: 39 * fem,
                                child: Image.asset(
                                    'assets/page-1/images/${transaksi.metodePembayaran.toLowerCase()}.png',
                                    width: 14.85 * fem,
                                    height: 14.85 * fem,
                                ),
                                // decoration: BoxDecoration(
                                //   borderRadius: BorderRadius.circular(7 * fem),
                                //   color: Color(0xffd9d9d9),
                                // ),
                              ),
                              Container(
                                // gopay3Vp (69:423)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 1 * fem),
                                child: Text(
                                  transaksi.metodePembayaran,
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
                          // group1YBg (69:400)
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
