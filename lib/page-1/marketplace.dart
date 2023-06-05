import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/user_model.dart';
import 'package:myapp/page-1/navbar-pendana.dart';
import 'package:myapp/utils.dart';

class MarketPlace extends StatelessWidget {
  final User user;

  MarketPlace({required this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Scene(),
      ),
      bottomNavigationBar: Navbar(user),
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
        // marketplaceHPt (28:167)
        padding: EdgeInsets.fromLTRB(1 * fem, 14 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // marketplaceNAS (28:172)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 8 * fem, 17 * fem),
              child: Text(
                'Marketplace',
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
              // autogroupgxfcFzv (NsxxzEMvM2HTUdkq5kGXFc)
              margin: EdgeInsets.fromLTRB(
                  15 * fem, 0 * fem, 17.64 * fem, 17.85 * fem),
              width: double.infinity,
              height: 42.15 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // seachaGW (45:54)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 75 * fem, 0 * fem),
                    padding: EdgeInsets.fromLTRB(
                        20 * fem, 13 * fem, 73 * fem, 13 * fem),
                    height: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff6c6c70)),
                      borderRadius: BorderRadius.circular(20 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // magnifyingglassTr6 (I45:54;135:4110)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 20 * fem, 0 * fem),
                          width: 16 * fem,
                          height: 16.15 * fem,
                          child: Image.asset(
                            'assets/page-1/images/magnifyingglass.png',
                            width: 16 * fem,
                            height: 16.15 * fem,
                          ),
                        ),
                        Container(
                          // searchNiA (I45:54;135:4111)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 0.15 * fem),
                          child: Text(
                            'Search',
                            style: SafeGoogleFont(
                              'SF Pro Display',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1 * ffem / fem,
                              letterSpacing: 0.32 * fem,
                              color: Color(0xff6c6c70),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // buttonsV26 (45:188)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 0.15 * fem),
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
                          // labelBvW (I45:188;137:4014)
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
                          // chevronleft6na (I45:188;137:4015)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 0 * fem),
                          width: 13.36 * fem,
                          height: 7.69 * fem,
                          child: Image.asset(
                            'assets/page-1/images/chevronleft-LNS.png',
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
            Container(
              // group28QYN (40:11)
              margin:
                  EdgeInsets.fromLTRB(15 * fem, 0 * fem, 17 * fem, 18 * fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
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
                        // autogroup6at61o4 (NsxyXxx3TrgYXvudp46at6)
                        margin: EdgeInsets.fromLTRB(
                            16 * fem, 0 * fem, 16 * fem, 0 * fem),
                        width: double.infinity,
                        height: 26 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupvutgWzi (NsxyiNpMwDashY4vD4vUTg)
                              padding: EdgeInsets.fromLTRB(
                                  0 * fem, 4 * fem, 163 * fem, 4 * fem),
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // noT9G (40:16)
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
                                    // p20072312345ZTC (40:18)
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
                              // image7hJW (40:23)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 5 * fem, 0 * fem),
                              width: 26 * fem,
                              height: 26 * fem,
                              child: Image.asset(
                                'assets/page-1/images/image-7-hvn.png',
                              ),
                            ),
                            Text(
                              // bulancRU (40:17)
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
                        // line79wC (40:20)
                        margin: EdgeInsets.fromLTRB(
                            1 * fem, 0 * fem, 0 * fem, 2 * fem),
                        width: 379 * fem,
                        height: 1 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffbcbcbc),
                        ),
                      ),
                      Container(
                        // autogroup7bstggE (NsxyrTRETjG6Fam4kr7Bst)
                        margin: EdgeInsets.fromLTRB(
                            9 * fem, 0 * fem, 27 * fem, 8 * fem),
                        width: double.infinity,
                        height: 61 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // profile2cJz (40:13)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 1 * fem, 8 * fem, 0 * fem),
                              width: 50 * fem,
                              height: 50 * fem,
                              child: Image.asset(
                                'assets/page-1/images/profile-2.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              // autogroupz6eaKz6 (Nsxz1cpdgCwBWzjxJhZ6EA)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 72 * fem, 0 * fem),
                              width: 169 * fem,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // ayeshaalifirdausG8e (40:31)
                                    left: 0 * fem,
                                    top: 0 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 169 * fem,
                                        height: 27 * fem,
                                        child: Text(
                                          'Ayesha Ali Firdaus',
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 18 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xff020202),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // kulinerMQz (40:32)
                                    left: 1 * fem,
                                    top: 26 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 41 * fem,
                                        height: 18 * fem,
                                        child: Text(
                                          'Kuliner',
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
                                    // bandungjawabaratSSS (40:33)
                                    left: 1 * fem,
                                    top: 43 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 129 * fem,
                                        height: 18 * fem,
                                        child: Text(
                                          'Bandung, Jawa Barat',
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
                                ],
                              ),
                            ),
                            Positioned(
                              // a5hY (51:145)
                              left: 325 * fem,
                              top: 42 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 45 * fem,
                                  height: 48 * fem,
                                  child: Text(
                                    'A+',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 32 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xff3584ff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // line43x2 (40:19)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 1 * fem, 8 * fem),
                        width: 379 * fem,
                        height: 1 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffbcbcbc),
                        ),
                      ),
                      Container(
                        // autogroupzzasmt2 (NsxzAnE2tgcGnQiqrYzzaS)
                        margin: EdgeInsets.fromLTRB(
                            16 * fem, 0 * fem, 9 * fem, 16 * fem),
                        width: double.infinity,
                        height: 57 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupiwogUnS (NsxzJCBM9XN2b9rP1yiWog)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 49 * fem, 0 * fem),
                              width: 67 * fem,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // bs4 (40:24)
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
                                    // hasilimbaluMx (40:27)
                                    left: 0 * fem,
                                    top: 39 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 67 * fem,
                                        height: 18 * fem,
                                        child: Text(
                                          'hasil imbal',
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
                              // rpbka (40:26)
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
                              // i4W (40:25)
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
                              // group33dSN (40:28)
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
                        // autogroup7eunu8z (NsxzRrdFFjxqB8pPx37EUn)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 1 * fem, 3 * fem),
                        width: 379 * fem,
                        height: 5 * fem,
                      ),
                      Container(
                        // autogroupwyxaRt2 (NsxzWbzLRu2jzfhVa3wyxA)
                        margin: EdgeInsets.fromLTRB(
                            16 * fem, 0 * fem, 22 * fem, 0 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // bulanlagixsx (40:14)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 247 * fem, 2 * fem),
                              child: Text(
                                '1 Bulan lagi',
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
                              // H9Y (40:15)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 2 * fem, 0 * fem, 0 * fem),
                              child: Text(
                                '50%',
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
              ),
            ),
            Container(
              // group291LS (51:98)
              margin:
                  EdgeInsets.fromLTRB(14 * fem, 0 * fem, 18 * fem, 18 * fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
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
                        // autogroup4gtqq4a (Nsy1M5bZay63JwrNrj4GTQ)
                        margin: EdgeInsets.fromLTRB(
                            16 * fem, 0 * fem, 16 * fem, 0 * fem),
                        width: double.infinity,
                        height: 26 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupxm9gMHp (Nsy1WzUiMaJGv5LhiUXm9G)
                              padding: EdgeInsets.fromLTRB(
                                  0 * fem, 4 * fem, 163 * fem, 4 * fem),
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // noUtE (51:103)
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
                                    // p20072312345o9p (51:105)
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
                              // image7jJN (51:110)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 5 * fem, 0 * fem),
                              width: 26 * fem,
                              height: 26 * fem,
                              child: Image.asset(
                                'assets/page-1/images/image-7-hvn.png',
                              ),
                            ),
                            Text(
                              // bulanTEN (51:104)
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
                        // line7bLa (51:107)
                        margin: EdgeInsets.fromLTRB(
                            1 * fem, 0 * fem, 0 * fem, 4 * fem),
                        width: 379 * fem,
                        height: 1 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffbcbcbc),
                        ),
                      ),
                      Container(
                        // autogroupdh2vig6 (Nsy1dexH4HWtP6xoa1Dh2v)
                        margin: EdgeInsets.fromLTRB(
                            10 * fem, 0 * fem, 27 * fem, 10 * fem),
                        width: double.infinity,
                        height: 57 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // profile23Ca (51:100)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 3 * fem, 8 * fem, 0 * fem),
                              width: 50 * fem,
                              height: 50 * fem,
                              child: Image.asset(
                                'assets/page-1/images/profile-2.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              // autogroupe13cNEr (Nsy1n4svideqJoSFoxe13c)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 111 * fem, 0 * fem),
                              width: 129 * fem,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // mfadhillahhY2 (51:118)
                                    left: 0 * fem,
                                    top: 0 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 106 * fem,
                                        height: 27 * fem,
                                        child: Text(
                                          'M Fadhillah',
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 18 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xff020202),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // hiburanCUn (51:119)
                                    left: 0 * fem,
                                    top: 22 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 48 * fem,
                                        height: 18 * fem,
                                        child: Text(
                                          'Hiburan',
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
                                    // bandungjawabaratWEa (51:120)
                                    left: 0 * fem,
                                    top: 39 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 129 * fem,
                                        height: 18 * fem,
                                        child: Text(
                                          'Bandung, Jawa Barat',
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
                                ],
                              ),
                            ),
                            Positioned(
                              // a5hY (51:145)
                              left: 325 * fem,
                              top: 42 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 45 * fem,
                                  height: 48 * fem,
                                  child: Text(
                                    'A+',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 32 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xff3584ff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // line48mk (51:106)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 1 * fem, 8 * fem),
                        width: 379 * fem,
                        height: 1 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffbcbcbc),
                        ),
                      ),
                      Container(
                        // autogroupxwfgrSr (Nsy1w9T8eeiEyoUKSGXWFG)
                        margin: EdgeInsets.fromLTRB(
                            16 * fem, 0 * fem, 9 * fem, 16 * fem),
                        width: double.infinity,
                        height: 57 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroup1rt2aNr (Nsy24E5fmf1GQtpYuX1Rt2)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 49 * fem, 0 * fem),
                              width: 67 * fem,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // WGW (51:111)
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
                                    // hasilimbalcKY (51:114)
                                    left: 0 * fem,
                                    top: 39 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 67 * fem,
                                        height: 18 * fem,
                                        child: Text(
                                          'hasil imbal',
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
                              // rpJy4 (51:113)
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
                              // SJa (51:112)
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
                              // group33AkN (51:115)
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
                        // autogroupdk9c33U (Nsy2CDrM1i4oNXZsXkdk9c)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 1 * fem, 3 * fem),
                        width: 379 * fem,
                        height: 5 * fem,
                      ),
                      Container(
                        // autogroup1js2Atn (Nsy2GJZsvCDFSktMmR1JS2)
                        margin: EdgeInsets.fromLTRB(
                            16 * fem, 0 * fem, 22 * fem, 0 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // bulanlagiWBx (51:101)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 247 * fem, 2 * fem),
                              child: Text(
                                '1 Bulan lagi',
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
                              // RZp (51:102)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 2 * fem, 0 * fem, 0 * fem),
                              child: Text(
                                '50%',
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
              ),
            ),
            TextButton(
              // group30A1c (51:122)
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: Container(
                width: 414 * fem,
                height: 247 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle33U2J (51:123)
                      left: 16 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 381 * fem,
                          height: 223 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10 * fem),
                              border: Border.all(color: Color(0xffbcbcbc)),
                              color: Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0 * fem, 4 * fem),
                                  blurRadius: 2 * fem,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // profile2wRg (51:124)
                      left: 27 * fem,
                      top: 42 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 50 * fem,
                          height: 50 * fem,
                          child: Image.asset(
                            'assets/page-1/images/profile-2.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // bulanlagiCkv (51:125)
                      left: 33 * fem,
                      top: 194 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 55 * fem,
                          height: 18 * fem,
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
                      ),
                    ),
                    Positioned(
                      // JZ4 (51:126)
                      left: 349 * fem,
                      top: 196 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 26 * fem,
                          height: 18 * fem,
                          child: Text(
                            '50%',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff020202),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // no1iN (51:127)
                      left: 33 * fem,
                      top: 10 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 19 * fem,
                          height: 18 * fem,
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
                      ),
                    ),
                    Positioned(
                      // bulan7mQ (51:128)
                      left: 335 * fem,
                      top: 10 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 46 * fem,
                          height: 18 * fem,
                          child: Text(
                            '5 Bulan',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff020202),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // p20072312345S2z (51:129)
                      left: 58 * fem,
                      top: 10 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 83 * fem,
                          height: 18 * fem,
                          child: Text(
                            'P20072312345',
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
                      // line4wVY (51:130)
                      left: 17 * fem,
                      top: 104 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 379 * fem,
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
                      // line7Sx6 (51:131)
                      left: 18 * fem,
                      top: 32 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 379 * fem,
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
                      // line5yBL (51:132)
                      left: 17 * fem,
                      top: 186 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 379 * fem,
                          height: 5 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffbcbcbc),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // line6JDc (51:133)
                      left: 17 * fem,
                      top: 186 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 190 * fem,
                          height: 5 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff04d300),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // image7R3L (51:134)
                      left: 304 * fem,
                      top: 6 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 26 * fem,
                          height: 26 * fem,
                          child: Image.asset(
                            'assets/page-1/images/image-7-hvn.png',
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // wGa (51:135)
                      left: 34 * fem,
                      top: 113 * fem,
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
                      // FHG (51:136)
                      left: 180 * fem,
                      top: 134 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 87 * fem,
                          height: 24 * fem,
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
                      ),
                    ),
                    Positioned(
                      // rpxhU (51:137)
                      left: 149 * fem,
                      top: 133 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 22 * fem,
                          height: 24 * fem,
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
                      ),
                    ),
                    Positioned(
                      // hasilimbal3iv (51:138)
                      left: 33 * fem,
                      top: 152 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 67 * fem,
                          height: 18 * fem,
                          child: Text(
                            'hasil imbal',
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
                    Positioned(
                      // group33Yva (51:139)
                      left: 302 * fem,
                      top: 136 * fem,
                      child: Container(
                        width: 86 * fem,
                        height: 22 * fem,
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
                    ),
                    Positioned(
                      // dickifathurohmanQht (51:142)
                      left: 85 * fem,
                      top: 37 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 175 * fem,
                          height: 27 * fem,
                          child: Text(
                            'Dicki Fathurohman',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff020202),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // fashionu8r (51:143)
                      left: 85 * fem,
                      top: 60 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 47 * fem,
                          height: 18 * fem,
                          child: Text(
                            'Fashion',
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
                      // bandungjawabaratoEE (51:144)
                      left: 85 * fem,
                      top: 77 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 129 * fem,
                          height: 18 * fem,
                          child: Text(
                            'Bandung, Jawa Barat',
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
                      // a5hY (51:145)
                      left: 325 * fem,
                      top: 42 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 45 * fem,
                          height: 48 * fem,
                          child: Text(
                            'A+',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 32 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff3584ff),
                            ),
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
    );
  }
}
