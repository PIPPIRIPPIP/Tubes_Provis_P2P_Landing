import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 838;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // frame3c6i (63:665)
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupxepxkyc (3wA9fBdtk7d8LjQNSAxepX)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 42*fem),
              width: double.infinity,
              height: 736*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // isisaldogMU (63:229)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                    width: 414*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // group27Nzz (63:243)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                          padding: EdgeInsets.fromLTRB(17*fem, 13*fem, 291*fem, 12*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xff3584ff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                // isisaldoGqU (63:245)
                                'Isi Saldo',
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
                        Container(
                          // jumlahisisaldorpoaW (63:258)
                          margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 0*fem, 0*fem),
                          child: Text(
                            'Jumlah Isi Saldo (Rp)',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupp4fhuNe (3wACa6nSEjHXbzS2ddp4FH)
                          padding: EdgeInsets.fromLTRB(12*fem, 11*fem, 12*fem, 78*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // autogroup6cs9QqC (3wABfD8u3Ld3qqBMR86cs9)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                                height: 50*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // group56jca (69:337)
                                      width: 119*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xffbcbcbc)),
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(10*fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x3f000000),
                                            offset: Offset(0*fem, 4*fem),
                                            blurRadius: 2*fem,
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(
                                          '20.000',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 24*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff5f5f5f),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16*fem,
                                    ),
                                    Container(
                                      // group57Mtr (69:338)
                                      width: 119*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff3584ff)),
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(10*fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x3f000000),
                                            offset: Offset(0*fem, 4*fem),
                                            blurRadius: 2*fem,
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(
                                          '50.000',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 24*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff3584ff),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16*fem,
                                    ),
                                    Container(
                                      // group58QML (69:343)
                                      width: 119*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xffbcbcbc)),
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(10*fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x3f000000),
                                            offset: Offset(0*fem, 4*fem),
                                            blurRadius: 2*fem,
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(
                                          '100.000',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 24*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff5f5f5f),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroup64uf5Ca (3wABv7siqUkF3jPFfX64UF)
                                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 14*fem),
                                height: 50*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupo9kbzKY (3wAC6N5ejvRD2WetDSo9kb)
                                      width: 119*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xffbcbcbc)),
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(10*fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x3f000000),
                                            offset: Offset(0*fem, 4*fem),
                                            blurRadius: 2*fem,
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(
                                          '200.000',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 24*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff5f5f5f),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16*fem,
                                    ),
                                    Container(
                                      // autogroupai31q5G (3wACASoBeQZf6jyNT7Ai31)
                                      width: 119*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xffbcbcbc)),
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(10*fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x3f000000),
                                            offset: Offset(0*fem, 4*fem),
                                            blurRadius: 2*fem,
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(
                                          '300.000',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 24*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff5f5f5f),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16*fem,
                                    ),
                                    Container(
                                      // autogrouptfd9GgN (3wACF2VtFeQCjSxpE2tfD9)
                                      width: 119*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xffbcbcbc)),
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(10*fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x3f000000),
                                            offset: Offset(0*fem, 4*fem),
                                            blurRadius: 2*fem,
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(
                                          '500.000',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 24*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff5f5f5f),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // masukkanjumlahrpY86 (63:259)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                child: Text(
                                  'Masukkan Jumlah (Rp)',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // autogroupsnnteB8 (3wACPXFjCT9qFZP6PXsNNT)
                                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 14*fem),
                                padding: EdgeInsets.fromLTRB(11*fem, 7*fem, 11*fem, 7*fem),
                                width: 389*fem,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xffbcbcbc)),
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(10*fem),
                                ),
                                child: Text(
                                  'Rp. 50.000',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 24*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // metodepembayarant5U (69:259)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                child: Text(
                                  'Metode Pembayaran',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                // group49bVg (69:270)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                padding: EdgeInsets.fromLTRB(10*fem, 8*fem, 20*fem, 14*fem),
                                width: 389*fem,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xffbcbcbc)),
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(10*fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroup2y3y5ve (3wAD6FarxqzePSd8pc2Y3y)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 9*fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // virtualaccountvapdL (69:261)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 224*fem, 0*fem),
                                            child: Text(
                                              'Virtual Account (VA)',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // group48Ka6 (69:269)
                                      margin: EdgeInsets.fromLTRB(11*fem, 0*fem, 0*fem, 0*fem),
                                      height: 51*fem,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(7*fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // group51q2e (69:282)
                                            width: 40*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(7*fem),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // rectangle46N2a (69:264)
                                                  width: double.infinity,
                                                  height: 39*fem,
                                                  decoration: BoxDecoration (
                                                    borderRadius: BorderRadius.circular(7*fem),
                                                    color: Color(0xffd9d9d9),
                                                  ),
                                                ),
                                                Text(
                                                  // mandiri6DU (69:281)
                                                  'Mandiri',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 8*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 37*fem,
                                          ),
                                          Container(
                                            // group52DJ6 (69:284)
                                            width: 40*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(7*fem),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // rectangle47MQJ (69:265)
                                                  width: double.infinity,
                                                  height: 39*fem,
                                                  decoration: BoxDecoration (
                                                    borderRadius: BorderRadius.circular(7*fem),
                                                    color: Color(0xffd9d9d9),
                                                  ),
                                                ),
                                                Text(
                                                  // brihyx (69:283)
                                                  'BRI',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 8*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 37*fem,
                                          ),
                                          Container(
                                            // group53LX8 (69:286)
                                            width: 40*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(7*fem),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // rectangle48UdL (69:266)
                                                  width: double.infinity,
                                                  height: 39*fem,
                                                  decoration: BoxDecoration (
                                                    borderRadius: BorderRadius.circular(7*fem),
                                                    color: Color(0xffd9d9d9),
                                                  ),
                                                ),
                                                Container(
                                                  // bcaDqp (69:285)
                                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                  child: Text(
                                                    'BCA',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 8*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 37*fem,
                                          ),
                                          Container(
                                            // group54XrW (69:288)
                                            width: 40*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(7*fem),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // rectangle49H4z (69:267)
                                                  width: double.infinity,
                                                  height: 39*fem,
                                                  decoration: BoxDecoration (
                                                    borderRadius: BorderRadius.circular(7*fem),
                                                    color: Color(0xffd9d9d9),
                                                  ),
                                                ),
                                                Container(
                                                  // bniRgz (69:287)
                                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                  child: Text(
                                                    'BNI',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 8*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 37*fem,
                                          ),
                                          Container(
                                            // group558rJ (69:290)
                                            width: 40*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(7*fem),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // rectangle50sYz (69:268)
                                                  width: double.infinity,
                                                  height: 39*fem,
                                                  decoration: BoxDecoration (
                                                    borderRadius: BorderRadius.circular(7*fem),
                                                    color: Color(0xffd9d9d9),
                                                  ),
                                                ),
                                                Container(
                                                  // permata1v6 (69:289)
                                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                  child: Text(
                                                    'Permata',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 8*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
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
                                  ],
                                ),
                              ),
                              Container(
                                // group50XNe (69:291)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                                padding: EdgeInsets.fromLTRB(10*fem, 8*fem, 20*fem, 14*fem),
                                width: 389*fem,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xffbcbcbc)),
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(10*fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogrouppqvv1oc (3wADdKXRp1UGhSDLAZPQVV)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 9*fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // ewalletMca (69:293)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 298*fem, 0*fem),
                                            child: Text(
                                              'E-Wallet',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // group48g94 (69:295)
                                      margin: EdgeInsets.fromLTRB(11*fem, 0*fem, 0*fem, 0*fem),
                                      height: 51*fem,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(7*fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // group51C7Q (69:308)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35*fem, 0*fem),
                                            width: 40*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(7*fem),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // rectangle46KSv (69:309)
                                                  width: double.infinity,
                                                  height: 39*fem,
                                                  decoration: BoxDecoration (
                                                    borderRadius: BorderRadius.circular(7*fem),
                                                    color: Color(0xffd9d9d9),
                                                  ),
                                                ),
                                                Container(
                                                  // gopayGNA (69:310)
                                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                  child: Text(
                                                    'Gopay',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 8*ffem,
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
                                            // group52b9Y (69:305)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34*fem, 0*fem),
                                            width: 45*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(7*fem),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // rectangle47iEA (69:306)
                                                  margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 3*fem, 0*fem),
                                                  width: double.infinity,
                                                  height: 39*fem,
                                                  decoration: BoxDecoration (
                                                    borderRadius: BorderRadius.circular(7*fem),
                                                    color: Color(0xffd9d9d9),
                                                  ),
                                                ),
                                                Text(
                                                  // shopeepay2Vk (69:307)
                                                  'ShopeePay',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 8*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // group53my8 (69:302)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0*fem),
                                            width: 40*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(7*fem),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // rectangle48u3k (69:303)
                                                  width: double.infinity,
                                                  height: 39*fem,
                                                  decoration: BoxDecoration (
                                                    borderRadius: BorderRadius.circular(7*fem),
                                                    color: Color(0xffd9d9d9),
                                                  ),
                                                ),
                                                Container(
                                                  // linkajapwQ (69:304)
                                                  margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
                                                  child: Text(
                                                    'LinkAja ',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 8*ffem,
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
                                            // group54kaA (69:299)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0*fem),
                                            width: 40*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(7*fem),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // rectangle49GoQ (69:300)
                                                  width: double.infinity,
                                                  height: 39*fem,
                                                  decoration: BoxDecoration (
                                                    borderRadius: BorderRadius.circular(7*fem),
                                                    color: Color(0xffd9d9d9),
                                                  ),
                                                ),
                                                Container(
                                                  // danaRgJ (69:301)
                                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                  child: Text(
                                                    'DANA',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 8*ffem,
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
                                            // group55YW2 (69:296)
                                            width: 40*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(7*fem),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // rectangle50gcE (69:297)
                                                  width: double.infinity,
                                                  height: 39*fem,
                                                  decoration: BoxDecoration (
                                                    borderRadius: BorderRadius.circular(7*fem),
                                                    color: Color(0xffd9d9d9),
                                                  ),
                                                ),
                                                Text(
                                                  // ovoqEE (69:298)
                                                  'OVO',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 8*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff000000),
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
                              Container(
                                // group51Nzr (69:311)
                                padding: EdgeInsets.fromLTRB(10*fem, 8*fem, 10*fem, 14*fem),
                                width: 389*fem,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xffbcbcbc)),
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(10*fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // autogroupcjjh5uG (3wAE7UPBj7R1EyicCUCJjH)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 9*fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // minimarketcuC (69:313)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 277*fem, 0*fem),
                                            child: Text(
                                              'Mini Market ',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // group48Y2A (69:315)
                                      margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 0*fem),
                                      height: 51*fem,
                                      decoration: BoxDecoration (
                                        borderRadius: BorderRadius.circular(7*fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // group51FhG (69:328)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35*fem, 0*fem),
                                            width: 43*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(7*fem),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // rectangle46azS (69:329)
                                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 2*fem, 0*fem),
                                                  width: double.infinity,
                                                  height: 39*fem,
                                                  decoration: BoxDecoration (
                                                    borderRadius: BorderRadius.circular(7*fem),
                                                    color: Color(0xffd9d9d9),
                                                  ),
                                                ),
                                                Text(
                                                  // gopayvHc (69:330)
                                                  'Indomaret',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 8*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // group52GMU (69:325)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0*fem),
                                            width: 40*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(7*fem),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // rectangle47nKp (69:326)
                                                  width: double.infinity,
                                                  height: 39*fem,
                                                  decoration: BoxDecoration (
                                                    borderRadius: BorderRadius.circular(7*fem),
                                                    color: Color(0xffd9d9d9),
                                                  ),
                                                ),
                                                Container(
                                                  // alfamartvwp (69:327)
                                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                  child: Text(
                                                    'Alfamart',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 8*ffem,
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
                                            // group53FjC (69:322)
                                            width: 40*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(7*fem),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // rectangle48c3x (69:323)
                                                  width: double.infinity,
                                                  height: 39*fem,
                                                  decoration: BoxDecoration (
                                                    borderRadius: BorderRadius.circular(7*fem),
                                                    color: Color(0xffd9d9d9),
                                                  ),
                                                ),
                                                Container(
                                                  // alfamidimBk (69:324)
                                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                  child: Text(
                                                    'Alfamidi',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 8*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // suksestopupHA6 (69:379)
                    width: 414*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          // autogroupd54bpQv (3wAAvjMgKJruFH5xbdD54b)
                          left: 0*fem,
                          top: 501*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(62*fem, 8*fem, 74*fem, 37*fem),
                            width: 414*fem,
                            height: 235*fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogrouptnssK6n (3wAARFCors5FD8TTo1TnSs)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 173*fem, 114*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // rectangle463oU (69:422)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                                        width: 40*fem,
                                        height: 39*fem,
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(7*fem),
                                          color: Color(0xffd9d9d9),
                                        ),
                                      ),
                                      Container(
                                        // gopayySE (69:423)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                        child: Text(
                                          'Gopay',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 16*ffem,
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
                                  // group1hNE (69:400)
                                  margin: EdgeInsets.fromLTRB(12*fem, 0*fem, 0*fem, 0*fem),
                                  width: 266*fem,
                                  height: 37*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0xff3584ff),
                                    borderRadius: BorderRadius.circular(20*fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Selesai',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w700,
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
                          // autogroupevs5krJ (3wAAZKogPNkTmB9cLneVs5)
                          left: 0*fem,
                          top: 0*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(24*fem, 26*fem, 24*fem, 38*fem),
                            width: 414*fem,
                            height: 464*fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupvw63ewg (3wA9uLtxz8DBCv6qNfvW63)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 71*fem, 37.33*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // group66yyx (69:409)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 56.15*fem, 15.15*fem),
                                        width: 14.85*fem,
                                        height: 14.85*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-66-hee.png',
                                          width: 14.85*fem,
                                          height: 14.85*fem,
                                        ),
                                      ),
                                      Container(
                                        // moneylogodesignstemplatevector (69:403)
                                        width: 224*fem,
                                        height: 76*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/moneylogodesignstemplatevectorfinancelogodesignsvector1-removebg-preview-1-t5L.png',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroup42q5Cbp (3wAA1vYLQNp75Xn7Jf42q5)
                                  margin: EdgeInsets.fromLTRB(107.33*fem, 0*fem, 105.33*fem, 17*fem),
                                  width: double.infinity,
                                  height: 189.67*fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // group67Xe6 (69:411)
                                        left: 11.6717834473*fem,
                                        top: 11.671875*fem,
                                        child: Container(
                                          width: 130*fem,
                                          height: 178*fem,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // autogroup19eoTXk (3wAA9fpRo42bFvgxAG19eo)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
                                                padding: EdgeInsets.fromLTRB(5*fem, 7*fem, 5*fem, 37*fem),
                                                width: double.infinity,
                                                decoration: BoxDecoration (
                                                  color: Color(0xff66b61f),
                                                  borderRadius: BorderRadius.circular(65*fem),
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // intersectMNE (63:521)
                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9.03*fem),
                                                      width: 14.51*fem,
                                                      height: 15.97*fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/intersect-15G.png',
                                                        width: 14.51*fem,
                                                        height: 15.97*fem,
                                                      ),
                                                    ),
                                                    Container(
                                                      // image641k (63:509)
                                                      margin: EdgeInsets.fromLTRB(28*fem, 0*fem, 0*fem, 0*fem),
                                                      width: 61*fem,
                                                      height: 61*fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/image-6-uDG.png',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // berhasilyuQ (69:410)
                                                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                child: Text(
                                                  'Berhasil !!',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 20*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff66b61f),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // subtractWPY (63:524)
                                        left: 0*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 153.34*fem,
                                            height: 153.34*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/subtract.png',
                                              width: 153.34*fem,
                                              height: 153.34*fem,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroup6f7mDok (3wAAJLEfJn1axrztAr6f7M)
                                  margin: EdgeInsets.fromLTRB(88.5*fem, 0*fem, 74*fem, 0*fem),
                                  width: double.infinity,
                                  height: 80*fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // januari20231300M9G (69:412)
                                        left: 0*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 189*fem,
                                            height: 27*fem,
                                            child: Text(
                                              '01 Januari 2023, 13.00',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 18*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // rpdsU (63:528)
                                        left: 0.5*fem,
                                        top: 4*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 38*fem,
                                            height: 60*fem,
                                            child: RichText(
                                              text: TextSpan(
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 40*ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff000000),
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: 'Rp.',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 18*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: ' ',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 40*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.5*ffem/fem,
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
                                        // WZt (69:413)
                                        left: 35.5*fem,
                                        top: 20*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 168*fem,
                                            height: 60*fem,
                                            child: Text(
                                              '500.000',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 40*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.5*ffem/fem,
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
                          // line21Chc (69:414)
                          left: 0*fem,
                          top: 464*fem,
                          child: Align(
                            child: SizedBox(
                              width: 414*fem,
                              height: 1*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  color: Color(0xffb7b3b3),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // isisaldodariJke (69:415)
                          left: 31*fem,
                          top: 477*fem,
                          child: Align(
                            child: SizedBox(
                              width: 102*fem,
                              height: 24*fem,
                              child: Text(
                                'Isi Saldo Dari',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5*ffem/fem,
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
            Container(
              // autogrouplqao19G (3wAFrb9NECHjYBHgw2LqAo)
              width: double.infinity,
              height: 736*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // tariksaldokMk (19:3)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                    width: 414*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          // transferkebankGL6 (19:56)
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
                          // group29ZKC (19:54)
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
                                  // autogroupnh7mDee (3wAKKjsCYQ3KRD97Q4Nh7m)
                                  margin: EdgeInsets.fromLTRB(17*fem, 0*fem, 117*fem, 8*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // danatersedia9oC (19:12)
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
                                        // rp100000000Gcv (19:24)
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
                                  // rectangle38RPL (19:49)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                  width: double.infinity,
                                  height: 1*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0xffffffff),
                                  ),
                                ),
                                Container(
                                  // nominalpenarikanKUi (19:46)
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
                                  // autogroupwdroSJS (3wAKSKWZxeeFHppPL3WDro)
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
                          // autogroupvbmhjHY (3wAJr5zcL3ngS9JnuQvBmh)
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
                                  // autogroupgfwx1Vx (3wAJ57HZ6Fa43CrcPbGfWX)
                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 162*fem, 20*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // autogrouptyn7weW (3wAJD74ELJdazqbw1ptyn7)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                                        width: 40*fem,
                                        height: 40*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/auto-group-tyn7.png',
                                          width: 40*fem,
                                          height: 40*fem,
                                        ),
                                      ),
                                      Container(
                                        // bcabankcentralasiarmU (30:8)
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
                                  // autogroup9jppAnA (3wAJKrMzKUTt4HArnu9JpP)
                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 121*fem, 20*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // ellipse6JdU (30:7)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                                        width: 40*fem,
                                        height: 40*fem,
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(20*fem),
                                          color: Color(0xff343434),
                                        ),
                                      ),
                                      Container(
                                        // bnibanknasionalindonesia2ZU (30:9)
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
                                  // autogrouppdrfwAe (3wAJSbfkJeJB7ijnZyPdrf)
                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 136*fem, 20*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // ellipse551x (30:6)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                                        width: 40*fem,
                                        height: 40*fem,
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(20*fem),
                                          color: Color(0xff343434),
                                        ),
                                      ),
                                      Container(
                                        // bribankrakyatindonesiaz8v (30:10)
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
                                  // autogroupnmxsVLa (3wAJYGAybr8bTo1yLyNmxs)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 240.5*fem, 20*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // ellipse4dSn (30:5)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.5*fem, 0*fem),
                                        width: 40*fem,
                                        height: 40*fem,
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(20*fem),
                                          color: Color(0xff343434),
                                        ),
                                      ),
                                      Container(
                                        // bankmandiriZbL (30:11)
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
                                  // autogroupwjhuHnE (3wAJeqpM26jXLQhFGxWJhu)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 232*fem, 123*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // ellipse7RNe (69:416)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                                        width: 40*fem,
                                        height: 40*fem,
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(20*fem),
                                          color: Color(0xff343434),
                                        ),
                                      ),
                                      Container(
                                        // bankpermataMGJ (69:417)
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
                                  // group47U62 (63:627)
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
                          // icommercecreditcardYLn (41:229)
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
                          // autogroupuodr3YS (3wAHrceNXRHf3H4fuyUoDR)
                          left: 0*fem,
                          top: 0*fem,
                          child: Container(
                            width: 414*fem,
                            height: 46*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // group27mDY (58:126)
                                  left: 17*fem,
                                  top: 12*fem,
                                  child: Container(
                                    width: 125*fem,
                                    height: 21*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          // tariksaldo5V8 (58:128)
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
                                  // group3229U (66:302)
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
                                          // tariksaldo6v2 (66:304)
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
                  Container(
                    // suksestarikSiz (63:640)
                    width: 414*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          // autogroupi3i7Bga (3wAH8JXYNJksdYrvwZi3i7)
                          left: 0*fem,
                          top: 501*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(62*fem, 7*fem, 74*fem, 37*fem),
                            width: 414*fem,
                            height: 235*fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupv8xxtL6 (3wAGeyyjHnxy28ov96V8xX)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 117*fem, 106*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // rectangle462BQ (63:662)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 1*fem),
                                        width: 40*fem,
                                        height: 39*fem,
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(7*fem),
                                          color: Color(0xffd9d9d9),
                                        ),
                                      ),
                                      Container(
                                        // gopayMUa (63:663)
                                        constraints: BoxConstraints (
                                          maxWidth: 110*fem,
                                        ),
                                        child: Text(
                                          'BCA\n113049000290',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 16*ffem,
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
                                  // group1Up6 (63:641)
                                  margin: EdgeInsets.fromLTRB(12*fem, 0*fem, 0*fem, 0*fem),
                                  width: 266*fem,
                                  height: 37*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0xff3584ff),
                                    borderRadius: BorderRadius.circular(20*fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Selesai',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w700,
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
                          // autogroupcekf99Y (3wAGpPsiMeV74ndHTacEkf)
                          left: 0*fem,
                          top: 0*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(24*fem, 26*fem, 24*fem, 37*fem),
                            width: 414*fem,
                            height: 464*fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroup1udmSeS (3wAG7kNmsiFyXKL4x41UDm)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 71*fem, 37.33*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // group66xsg (63:645)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 56.15*fem, 15.15*fem),
                                        width: 14.85*fem,
                                        height: 14.85*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-66.png',
                                          width: 14.85*fem,
                                          height: 14.85*fem,
                                        ),
                                      ),
                                      Container(
                                        // moneylogodesignstemplatevector (63:644)
                                        width: 224*fem,
                                        height: 76*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/moneylogodesignstemplatevectorfinancelogodesignsvector1-removebg-preview-1-f2W.png',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupqbtsyXt (3wAGFQpfyvrn7JJ5t7QBts)
                                  margin: EdgeInsets.fromLTRB(107.33*fem, 0*fem, 105.33*fem, 17*fem),
                                  width: double.infinity,
                                  height: 189.67*fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // group6778J (63:648)
                                        left: 11.6717834473*fem,
                                        top: 11.671875*fem,
                                        child: Container(
                                          width: 130*fem,
                                          height: 178*fem,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // autogrouphhckRug (3wAGPf5w5MmMrAstGyhhcK)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
                                                padding: EdgeInsets.fromLTRB(5*fem, 7*fem, 5*fem, 37*fem),
                                                width: double.infinity,
                                                decoration: BoxDecoration (
                                                  color: Color(0xff66b61f),
                                                  borderRadius: BorderRadius.circular(65*fem),
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // intersectXSv (63:652)
                                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9.03*fem),
                                                      width: 14.51*fem,
                                                      height: 15.97*fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/intersect.png',
                                                        width: 14.51*fem,
                                                        height: 15.97*fem,
                                                      ),
                                                    ),
                                                    Container(
                                                      // image6qyQ (63:650)
                                                      margin: EdgeInsets.fromLTRB(28*fem, 0*fem, 0*fem, 0*fem),
                                                      width: 61*fem,
                                                      height: 61*fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/image-6-vMU.png',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // berhasilZuQ (63:651)
                                                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                child: Text(
                                                  'Berhasil !!',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 20*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff66b61f),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // subtractVo4 (63:656)
                                        left: 0*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 153.34*fem,
                                            height: 153.34*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/subtract-bav.png',
                                              width: 153.34*fem,
                                              height: 153.34*fem,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogrouppoqtd8a (3wAGZ4yv9DHVtphFbTpoQT)
                                  margin: EdgeInsets.fromLTRB(88.5*fem, 0*fem, 74*fem, 0*fem),
                                  width: double.infinity,
                                  height: 81*fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // januari20231300MaN (63:655)
                                        left: 0*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 189*fem,
                                            height: 27*fem,
                                            child: Text(
                                              '01 Januari 2023, 13.00',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 18*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // rpf5G (63:659)
                                        left: 0.5*fem,
                                        top: 4*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 38*fem,
                                            height: 60*fem,
                                            child: RichText(
                                              text: TextSpan(
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 40*ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff000000),
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: 'Rp.',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 18*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: ' ',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 40*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.5*ffem/fem,
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
                                        // z14 (63:664)
                                        left: 35.5*fem,
                                        top: 21*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 168*fem,
                                            height: 60*fem,
                                            child: Text(
                                              '500.000',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 40*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.5*ffem/fem,
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
                          // line21tcE (63:660)
                          left: 0*fem,
                          top: 464*fem,
                          child: Align(
                            child: SizedBox(
                              width: 414*fem,
                              height: 1*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  color: Color(0xffb7b3b3),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // transferkeRMG (63:661)
                          left: 31*fem,
                          top: 477*fem,
                          child: Align(
                            child: SizedBox(
                              width: 88*fem,
                              height: 24*fem,
                              child: Text(
                                'Transfer ke',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 16*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5*ffem/fem,
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
          ],
        ),
      ),
          );
  }
}