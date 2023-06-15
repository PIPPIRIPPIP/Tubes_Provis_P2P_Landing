import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/models.dart';
import 'package:myapp/page-1/isi-saldo.dart';
import 'package:myapp/page-1/navbar-pendana.dart';
import 'package:myapp/page-1/profile-pendana.dart';
import 'package:myapp/page-1/riwayat-transaksi.dart';
import 'package:myapp/page-1/tarik-saldo.dart';
import 'package:myapp/utils.dart';

class PendanaPage extends StatelessWidget {
  const PendanaPage({super.key});
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
                          // investisakuY62 (30:160)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 201 * fem, 0 * fem),
                          child: Text(
                            'Investisaku',
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
                          // lihatsemuaTTt (38:8)
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
                    // group65Nqk (317:78)
                    margin: EdgeInsets.fromLTRB(
                        2 * fem, 0 * fem, 0 * fem, 32 * fem),
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
                          // autogroup9bsnczz (SiJ2Yjz67PWZQQp8dv9BSn)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 15 * fem, 5 * fem),
                          width: double.infinity,
                          height: 26 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupehr8LRC (SiJ2ga6NnXLjBDfoR4ehR8)
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 4 * fem, 163 * fem, 4 * fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // no4rz (317:80)
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
                                      // p20072312345PeN (317:82)
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
                                // image7jCS (317:84)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                width: 26 * fem,
                                height: 26 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/image-7-hvn.png',
                                ),
                              ),
                              Text(
                                // bulan4Ei (317:81)
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
                          // line41Qr (317:83)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 10 * fem),
                          width: double.infinity,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffbcbcbc),
                          ),
                        ),
                        Container(
                          // autogroup1pkeLxv (SiJ2oV4XLcQPRV8P3E1pke)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 35 * fem, 16 * fem),
                          width: double.infinity,
                          height: 59 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroup49y2UZL (SiJ2veXFk5K6SzRSS249Y2)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 57 * fem, 1 * fem),
                                width: 136 * fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // totalinvestasiorW (317:90)
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
                                      // keuntungan8dt (317:89)
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
                                // autogroupoh3kf82 (SiJ31yhhuSgnRQvKWqoh3k)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 2 * fem, 4 * fem, 2 * fem),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // rpHfC (317:87)
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
                                      // rpcSa (317:88)
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
                              Expanded(
                                child: Container(
                                  // autogroupqqveZMp (SiJ36Pk1wmHxsJ27SgQqve)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                  width: 109 * fem,
                                  height: 58 * fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // 5qx (317:85)
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
                                        // zT8 (317:86)
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
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupfttvJCv (SiJ3LPLhcreeYepvY6Fttv)
                          width: double.infinity,
                          height: 5 * fem,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group32TLi (317:141)
                    margin: EdgeInsets.fromLTRB(
                        2 * fem, 0 * fem, 0 * fem, 58 * fem),
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
                          // autogroupf67p7AN (SiJ3zcjzsV2yt9iBGqf67p)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 16 * fem, 5 * fem),
                          width: double.infinity,
                          height: 26 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupbmzeqcA (SiJ4BCGhumAgEam7Wwbmze)
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 4 * fem, 163 * fem, 4 * fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // noZo4 (317:143)
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
                                      // p20072312346taS (317:145)
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
                                // image7EeJ (317:147)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                width: 26 * fem,
                                height: 26 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/image-7-hvn.png',
                                ),
                              ),
                              Text(
                                // bulanAnr (317:144)
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
                          // line4Kfk (317:146)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 10 * fem),
                          width: double.infinity,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffbcbcbc),
                          ),
                        ),
                        Container(
                          // autogroup5hdqsBU (SiJ4JGuF2mThfg7LzC5hdQ)
                          margin: EdgeInsets.fromLTRB(
                              16 * fem, 0 * fem, 43 * fem, 16 * fem),
                          width: double.infinity,
                          height: 59 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroup1e7yaLn (SiJ4RGhasK93WMWkXu1E7Y)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 57 * fem, 1 * fem),
                                width: 136 * fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // totalinvestasihwC (317:153)
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
                                      // keuntungancYN (317:152)
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
                                // autogroupcnzsMF4 (SiJ4VgjtudkDxEcYTjcNzS)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 2 * fem, 4 * fem, 2 * fem),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // rpHeW (317:150)
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
                                      // rpp8e (317:151)
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
                              Expanded(
                                child: Container(
                                  // autogroup6ja6Zrv (SiJ4Zw7pP383DHpgYV6ja6)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                  width: 101 * fem,
                                  height: 58 * fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // 6M4 (317:148)
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
                                        // oFU (317:149)
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
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupnewrJT8 (SiJ4jRqzjMFrrMasnWnEWr)
                          width: double.infinity,
                          height: 5 * fem,
                        ),
                      ],
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
