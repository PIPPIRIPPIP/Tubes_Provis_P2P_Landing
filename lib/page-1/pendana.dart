import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/user_model.dart';
import 'package:myapp/page-1/isi-saldo.dart';
import 'package:myapp/page-1/navbar-pendana.dart';
import 'package:myapp/page-1/profile-pendana.dart';
import 'package:myapp/page-1/riwayat-transaksi.dart';
import 'package:myapp/page-1/tarik-saldo.dart';
import 'package:myapp/utils.dart';

class Pendana extends StatelessWidget {
  final User user;

  Pendana({required this.user});

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
        // pendanauAW (30:153)
        padding: EdgeInsets.fromLTRB(0 * fem, 12 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupdruwmiW (Nsxj9suqkbtYyesT9JDrUW)
              margin:
                  EdgeInsets.fromLTRB(15 * fem, 0 * fem, 10 * fem, 10 * fem),
              width: double.infinity,
              height: 45 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // moneylogodesignstemplatevector (30:154)
                    width: 100 * fem,
                    height: 100 * fem,
                    child: Image.asset(
                      'assets/page-1/images/logo.png',
                    ),
                  ),
                  Container(
                    // autogroupxnbxQFg (NsxjJ8B6r2o8iXTFYAXNBx)
                    padding: EdgeInsets.fromLTRB(
                        200 * fem, 2 * fem, 0 * fem, 3 * fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // notif1dPL (30:172)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 15 * fem, 0 * fem),
                          width: 25 * fem,
                          height: 32 * fem,
                          child: Image.asset(
                            'assets/page-1/images/notif-1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfilPendana()));
                          },
                          child: Container(
                            // profile1M4S (30:155)
                            width: 40 * fem,
                            height: 40 * fem,
                            child: Image.asset(
                              'assets/page-1/images/profile-1.png',
                              fit: BoxFit.cover,
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
              // group32Uuk (66:365)
              padding:
                  EdgeInsets.fromLTRB(35 * fem, 13 * fem, 60 * fem, 17 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff3584ff),
                // borderRadius: BorderRadius.circular(10 * fem),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0 * fem, 4 * fem),
                    blurRadius: 2 * fem,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // autogroupagwiy5p (NsxnzwAqhVSfuGLBQSAgWi)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 22 * fem),
                    width: 119 * fem,
                    height: 39 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // danatersediaVZx (66:367)
                          left: 0 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 87 * fem,
                              height: 18 * fem,
                              child: Text(
                                'Dana Tersedia',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rp100000000yk2 (66:368)
                          left: 0 * fem,
                          top: 16 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 119 * fem,
                              height: 23 * fem,
                              child: Text(
                                'Rp. 100.000.000',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupmqpcHEv (Nsxo5MD9jp3rM9RyLGmqPc)
                    margin: EdgeInsets.fromLTRB(
                        23 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: 299.5 * fem,
                    height: 64 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // riwayatCcn (66:370)
                          left: 251.5 * fem,
                          top: 46 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 48 * fem,
                              height: 18 * fem,
                              child: Text(
                                'Riwayat\n',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // tariksaldo5wU (66:372)
                          left: 121.5 * fem,
                          top: 46 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 66 * fem,
                              height: 18 * fem,
                              child: Text(
                                'Tarik Saldo',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // icontariksaldom3c (66:373)
                          left: 0 * fem,
                          top: 0 * fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                8.5 * fem, 0 * fem, 0 * fem, 0 * fem),
                            width: 296 * fem,
                            height: 64 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5 * fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => IsiSaldo()));
                                  },
                                  child: Container(
                                    // autogroupyy8wQeJ (3w9ojqfKWwwBL6RJ5mYY8w)
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // autogroupeuypMJe (3w9oqfpwP4zxrzb8hreUYP)
                                          margin: EdgeInsets.fromLTRB(1 * fem,
                                              0 * fem, 0 * fem, 6 * fem),
                                          width: 40 * fem,
                                          height: 40 * fem,
                                          child: Image.asset(
                                            'assets/page-1/images/auto-group-euyp.png',
                                            width: 40 * fem,
                                            height: 40 * fem,
                                          ),
                                        ),
                                        Text(
                                          // isisaldo4ir (66:358)
                                          'Isi Saldo',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogroupnjdr1e6 (3w9p5VmEVF8HMXWHxBNjDR)
                                  padding: EdgeInsets.fromLTRB(
                                      76.5 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      TarikSaldo()));
                                        },
                                        child: Container(
                                          // autogroupwpmmk5t (3w9owAfn7Mc22EyfdmWpMM)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 81 * fem, 0 * fem),
                                          width: 40 * fem,
                                          height: 40 * fem,
                                          child: Image.asset(
                                            'assets/page-1/images/auto-group-wpmm.png',
                                            width: 40 * fem,
                                            height: 40 * fem,
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      RiwayatTransaksiPage()));
                                        },
                                        child: Container(
                                          // autogroupen3hrPp (3w9ozv4Xt1HjipWrBFen3H)
                                          width: 40 * fem,
                                          height: 40 * fem,
                                          child: Image.asset(
                                            'assets/page-1/images/auto-group-en3h.png',
                                            width: 40 * fem,
                                            height: 40 * fem,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup3v6z1Vg (NsxjhcVxsSHe2x2Fsc3v6z)
              padding:
                  EdgeInsets.fromLTRB(15 * fem, 25 * fem, 17 * fem, 9 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // autogroupuv1gXiv (NsxjRsTCEi1ctvN6PmUV1g)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 13 * fem, 14 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // peluanginvestasifq8 (30:160)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 156 * fem, 0 * fem),
                          child: Text(
                            'Peluang Investasi',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff020202),
                            ),
                          ),
                        ),
                        TextButton(
                          // lihatsemuaBYa (38:8)
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Text(
                            'Lihat semua',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff727272),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group28WKx (38:9)
                    margin: EdgeInsets.fromLTRB(
                        1 * fem, 0 * fem, 0 * fem, 120 * fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            1 * fem, 6 * fem, 0 * fem, 9 * fem),
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
                              // autogroupsfhgvea (Nsxk8w778wKAQTPSX1sFHg)
                              margin: EdgeInsets.fromLTRB(
                                  16 * fem, 0 * fem, 16 * fem, 0 * fem),
                              width: double.infinity,
                              height: 26 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroup8jie3UJ (NsxkKG9EKqboyebtzV8jie)
                                    padding: EdgeInsets.fromLTRB(
                                        0 * fem, 4 * fem, 163 * fem, 4 * fem),
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // noAop (38:13)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 6 * fem, 0 * fem),
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
                                          // p20072312345HtS (38:15)
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
                                    // image7EYn (38:19)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                    width: 26 * fem,
                                    height: 26 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/image-7-hvn.png',
                                    ),
                                  ),
                                  Text(
                                    // bulanABY (38:14)
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
                              // line7VzW (40:8)
                              margin: EdgeInsets.fromLTRB(
                                  1 * fem, 0 * fem, 0 * fem, 6 * fem),
                              width: 379 * fem,
                              height: 1 * fem,
                              decoration: BoxDecoration(
                                color: Color(0xffbcbcbc),
                              ),
                            ),
                            Container(
                              // autogroupvs4aqHg (NsxkSB7NsvfUDv4UceVs4A)
                              margin: EdgeInsets.fromLTRB(
                                  10 * fem, 0 * fem, 27 * fem, 11 * fem),
                              width: double.infinity,
                              height: 54 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // profile2Mmp (40:4)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                    width: 46 * fem,
                                    height: 46 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/profile-2.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    // autogroupqxbqsVG (Nsxkc1ALN5G2EdbyYrQxbQ)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 109 * fem, 0 * fem),
                                    width: 131 * fem,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // autogroupaw78oNv (NsxkhLLnXSdiD46rdgAW78)
                                          width: double.infinity,
                                          height: 37 * fem,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // ayeshaalifirdausMQS (40:5)
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
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height:
                                                            1.5 * ffem / fem,
                                                        color:
                                                            Color(0xff020202),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // modalusahamakanan3o4 (40:6)
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
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height:
                                                            1.5 * ffem / fem,
                                                        color:
                                                            Color(0xff343434),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          // bandungjawabaratx9L (40:7)
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
                                  Text(
                                    // agb8 (40:10)
                                    'A+',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 32 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xff3584ff),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // line42Q6 (38:16)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 1 * fem, 8 * fem),
                              width: 379 * fem,
                              height: 1 * fem,
                              decoration: BoxDecoration(
                                color: Color(0xffbcbcbc),
                              ),
                            ),
                            Container(
                              // autogroupby3pkqt (NsxkxzZMsiJ3kfpCByBY3p)
                              margin: EdgeInsets.fromLTRB(
                                  16 * fem, 0 * fem, 9 * fem, 16 * fem),
                              width: double.infinity,
                              height: 57 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogrouppqoccNJ (Nsxm7pdyxMWQeS1n3ePqoc)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 49 * fem, 0 * fem),
                                    width: 67 * fem,
                                    height: double.infinity,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // Y14 (38:20)
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
                                          // hasilimbale46 (38:23)
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
                                    // rpYfG (38:22)
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
                                    // GrA (38:21)
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
                                    // group33bNe (40:9)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 23 * fem, 0 * fem, 12 * fem),
                                    width: 86 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xff3584ff),
                                      borderRadius:
                                          BorderRadius.circular(5 * fem),
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
                              // autogroupvx7y3VY (NsxmGQE2BcsikxNt8gvx7Y)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 1 * fem, 3 * fem),
                              width: 379 * fem,
                              height: 5 * fem,
                            ),
                            Container(
                              // autogroupetmtmwL (NsxmMpEfdSs6Knpb94Etmt)
                              margin: EdgeInsets.fromLTRB(
                                  16 * fem, 0 * fem, 22 * fem, 0 * fem),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // terdanaiiLn (38:11)
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
                                    // puc (38:12)
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
                    // panduanLNA (63:462)
                    margin:
                        EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 9 * fem),
                    child: Text(
                      'Panduan',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff020202),
                      ),
                    ),
                  ),
                  Container(
                    // autogroup22gwrbQ (NsxjXcncpNTiqQb76K22GW)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 2 * fem, 0 * fem),
                    width: double.infinity,
                    height: 90 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group63Arz (63:463)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 20 * fem, 0 * fem),
                          width: 180 * fem,
                          height: double.infinity,
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
                          child: Center(
                            child: Text(
                              'Pendanaan',
                              textAlign: TextAlign.center,
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
                        Container(
                          // group64cDC (63:466)
                          width: 180 * fem,
                          height: double.infinity,
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
                          child: Center(
                            child: Text(
                              'Tarik Saldo',
                              textAlign: TextAlign.center,
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
