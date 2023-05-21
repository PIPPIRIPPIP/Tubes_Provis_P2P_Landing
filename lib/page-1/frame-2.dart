import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1354;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // frame2hup (63:636)
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogrouphwjyFwL (3wAR8KhNGk8t3Y22wphWjy)
              width: 414*fem,
              height: 1755*fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // pendanangN (30:153)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 57*fem),
                    padding: EdgeInsets.fromLTRB(0*fem, 12*fem, 0*fem, 0*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroup4wapHd8 (3wARQUu7KmVK9dQL3P4waP)
                          margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 18*fem, 17*fem),
                          width: double.infinity,
                          height: 45*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // moneylogodesignstemplatevector (30:154)
                                width: 45*fem,
                                height: 45*fem,
                                child: Image.asset(
                                  'assets/page-1/images/moneylogodesignstemplatevectorfinancelogodesignsvector1-removebg-preview-1-STY.png',
                                ),
                              ),
                              Container(
                                // autogroupxsn3vAJ (3wARZZUKFnYipdSPfgxSn3)
                                padding: EdgeInsets.fromLTRB(252*fem, 2*fem, 0*fem, 3*fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // notif13Vp (30:172)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 0*fem),
                                      width: 25*fem,
                                      height: 32*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/notif-1-xEr.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      // profile1yPU (30:155)
                                      width: 40*fem,
                                      height: 40*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/profile-1-vYE.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group32hqG (66:365)
                          padding: EdgeInsets.fromLTRB(47*fem, 13*fem, 80.5*fem, 17*fem),
                          width: double.infinity,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // autogroup8zuqNgW (3wAVFhpVqaGoG4ki9c8Zuq)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
                                width: 119*fem,
                                height: 39*fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // danatersediatuk (66:367)
                                      left: 0*fem,
                                      top: 0*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 87*fem,
                                          height: 18*fem,
                                          child: Text(
                                            'Dana Tersedia',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // rp100000000PLi (66:368)
                                      left: 0*fem,
                                      top: 16*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 119*fem,
                                          height: 23*fem,
                                          child: Text(
                                            'Rp. 100.000.000',
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
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroupmk8kgKp (3wAVLsLZS2R83fMwPLmK8K)
                                margin: EdgeInsets.fromLTRB(23*fem, 0*fem, 0*fem, 0*fem),
                                width: 299.5*fem,
                                height: 64*fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // riwayatPV8 (66:370)
                                      left: 251.5*fem,
                                      top: 46*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 48*fem,
                                          height: 18*fem,
                                          child: Text(
                                            'Riwayat\n',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // tariksaldoUFg (66:372)
                                      left: 121.5*fem,
                                      top: 46*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 66*fem,
                                          height: 18*fem,
                                          child: Text(
                                            'Tarik Saldo',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // icontariksaldomVg (66:373)
                                      left: 0*fem,
                                      top: 0*fem,
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(8.5*fem, 0*fem, 0*fem, 0*fem),
                                        width: 296*fem,
                                        height: 64*fem,
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(5*fem),
                                        ),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // autogroup9audfb4 (3wAVaCHgqSrLyic96Q9Aud)
                                              height: double.infinity,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // autogroupghefcWJ (3wAVgmw4FhTGrLHR2PGhef)
                                                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 6*fem),
                                                    width: 40*fem,
                                                    height: 40*fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/auto-group-ghef.png',
                                                      width: 40*fem,
                                                      height: 40*fem,
                                                    ),
                                                  ),
                                                  Text(
                                                    // isisaldoXNN (66:377)
                                                    'Isi Saldo',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // autogroup9lxxrfY (3wAVwX1VUvM6sQbfRh9LxX)
                                              padding: EdgeInsets.fromLTRB(76.5*fem, 0*fem, 0*fem, 0*fem),
                                              height: double.infinity,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // autogrouphscfBxi (3wAVnMc6GSg1bzcmsqhScF)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 81*fem, 0*fem),
                                                    width: 40*fem,
                                                    height: 40*fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/auto-group-hscf.png',
                                                      width: 40*fem,
                                                      height: 40*fem,
                                                    ),
                                                  ),
                                                  Container(
                                                    // autogroupposohw4 (3wAVrBq3KYyQtz6nLsPoSo)
                                                    width: 40*fem,
                                                    height: 40*fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/auto-group-poso.png',
                                                      width: 40*fem,
                                                      height: 40*fem,
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
                          // autogrouppmnxSNr (3wAS2Ts9v1GDTymGrSPMnX)
                          padding: EdgeInsets.fromLTRB(15*fem, 25*fem, 17*fem, 9*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // autogroupnmjxNGW (3wARh9625YXqpCTagCnmJX)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 14*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // peluanginvestasihZg (30:160)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 156*fem, 0*fem),
                                      child: Text(
                                        'Peluang Investasi',
                                        style: SafeGoogleFont (
                                          'Poppins',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.5*ffem/fem,
                                          color: Color(0xff020202),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // lihatsemua1aN (38:8)
                                      'Lihat semua',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xff727272),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // group28LsY (38:9)
                                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 146*fem),
                                padding: EdgeInsets.fromLTRB(1*fem, 6*fem, 0*fem, 9*fem),
                                width: 381*fem,
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogrouph3ysPav (3wASY2rDeufZ6YLbabh3Ys)
                                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 0*fem),
                                      width: double.infinity,
                                      height: 26*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroupiwstJxn (3wASkrpBMaQgU7uqkPiWST)
                                            padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 163*fem, 4*fem),
                                            height: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // noqxi (38:13)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                                  child: Text(
                                                    'NO',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff020202),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // p20072312345yJE (38:15)
                                                  'P20072312345',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff343434),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // image7hk2 (38:19)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                            width: 26*fem,
                                            height: 26*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/image-7-rBg.png',
                                            ),
                                          ),
                                          Text(
                                            // bulanEV4 (38:14)
                                            '5 Bulan',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff020202),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // line7ySe (40:8)
                                      margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 6*fem),
                                      width: 379*fem,
                                      height: 1*fem,
                                      decoration: BoxDecoration (
                                        color: Color(0xffbcbcbc),
                                      ),
                                    ),
                                    Container(
                                      // autogroupq1pdJjp (3wASvMYMhtYW7Bg2zRQ1PD)
                                      margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 27*fem, 11*fem),
                                      width: double.infinity,
                                      height: 54*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // profile2piA (40:4)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                            width: 46*fem,
                                            height: 46*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/profile-2-AA2.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Container(
                                            // autogroupdtxox3g (3wAT6mQgBFSqGnqKPSDtxo)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 109*fem, 0*fem),
                                            width: 131*fem,
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // autogroupysuxUni (3wATC6b8LcpXFDLCUFySUX)
                                                  width: double.infinity,
                                                  height: 37*fem,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        // ayeshaalifirdausEWz (40:5)
                                                        left: 0*fem,
                                                        top: 0*fem,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 131*fem,
                                                            height: 21*fem,
                                                            child: Text(
                                                              'Ayesha Ali Firdaus',
                                                              style: SafeGoogleFont (
                                                                'Poppins',
                                                                fontSize: 14*ffem,
                                                                fontWeight: FontWeight.w600,
                                                                height: 1.5*ffem/fem,
                                                                color: Color(0xff020202),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        // modalusahamakananL4E (40:6)
                                                        left: 0*fem,
                                                        top: 20*fem,
                                                        child: Align(
                                                          child: SizedBox(
                                                            width: 129*fem,
                                                            height: 17*fem,
                                                            child: Text(
                                                              'Modal usaha makanan',
                                                              style: SafeGoogleFont (
                                                                'Poppins',
                                                                fontSize: 11*ffem,
                                                                fontWeight: FontWeight.w400,
                                                                height: 1.5*ffem/fem,
                                                                color: Color(0xff343434),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Text(
                                                  // bandungjawabarat1RG (40:7)
                                                  'Bandung, Jawa Barat',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 11*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff343434),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            // awZp (40:10)
                                            'A+',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 32*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff3584ff),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // line45vv (38:16)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 8*fem),
                                      width: 379*fem,
                                      height: 1*fem,
                                      decoration: BoxDecoration (
                                        color: Color(0xffbcbcbc),
                                      ),
                                    ),
                                    Container(
                                      // autogroupmjmd25U (3wATQbEJuT6vF988wsmJmd)
                                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 9*fem, 16*fem),
                                      width: double.infinity,
                                      height: 57*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroupjr5zwy8 (3wATZApM8iUEMfVF2vJR5Z)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49*fem, 0*fem),
                                            width: 67*fem,
                                            height: double.infinity,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // HGJ (38:20)
                                                  left: 1*fem,
                                                  top: 0*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 59*fem,
                                                      height: 48*fem,
                                                      child: Text(
                                                        '10%',
                                                        style: SafeGoogleFont (
                                                          'Poppins',
                                                          fontSize: 32*ffem,
                                                          fontWeight: FontWeight.w600,
                                                          height: 1.5*ffem/fem,
                                                          color: Color(0xff020202),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // hasilimbalnir (38:23)
                                                  left: 0*fem,
                                                  top: 39*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 67*fem,
                                                      height: 18*fem,
                                                      child: Text(
                                                        'hasil imbal',
                                                        style: SafeGoogleFont (
                                                          'Poppins',
                                                          fontSize: 12*ffem,
                                                          fontWeight: FontWeight.w500,
                                                          height: 1.5*ffem/fem,
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
                                            // rp6Ue (38:22)
                                            margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 9*fem, 0*fem),
                                            child: Text(
                                              'Rp',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff727272),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // DpA (38:21)
                                            margin: EdgeInsets.fromLTRB(0*fem, 9*fem, 35*fem, 0*fem),
                                            child: Text(
                                              '10.000.000',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff020202),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // group33Ldt (40:9)
                                            margin: EdgeInsets.fromLTRB(0*fem, 23*fem, 0*fem, 12*fem),
                                            width: 86*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              color: Color(0xff3584ff),
                                              borderRadius: BorderRadius.circular(5*fem),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Danai',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 12*ffem,
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
                                    Container(
                                      // autogroupqxpvbpi (3wAThkQPMyqYUBrM7xqXPV)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 3*fem),
                                      width: 379*fem,
                                      height: 5*fem,
                                    ),
                                    Container(
                                      // autogroupb4udw7t (3wATo5aqXMDEScMECnb4uD)
                                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 22*fem, 0*fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // terdanai3wc (38:11)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 261*fem, 2*fem),
                                            child: Text(
                                              'Terdanai',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff020202),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // m6v (38:12)
                                            margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                            child: Text(
                                              '50%',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
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
                              Container(
                                // panduansfk (63:462)
                                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 9*fem),
                                child: Text(
                                  'Panduan',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff020202),
                                  ),
                                ),
                              ),
                              Container(
                                // autogroupggwhbbk (3wARpDiZCYpsFHop9TGgwH)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                                width: double.infinity,
                                height: 90*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // group63vtv (63:463)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                                      width: 180*fem,
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
                                          'Pendanaan',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff020202),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // group64B4A (63:466)
                                      width: 180*fem,
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
                                          'Tarik Saldo',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.5*ffem/fem,
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
                        Container(
                          // navbarEHL (63:414)
                          padding: EdgeInsets.fromLTRB(25*fem, 7*fem, 32*fem, 8*fem),
                          width: double.infinity,
                          height: 62*fem,
                          decoration: BoxDecoration (
                            color: Color(0xff3584ff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group62M74 (63:416)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 106*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(0*fem, 5.41*fem, 0*fem, 0*fem),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // igaminghouseGjp (63:417)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 3.07*fem),
                                      width: 26.87*fem,
                                      height: 23.52*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/i-gaming-house-UDc.png',
                                        width: 26.87*fem,
                                        height: 23.52*fem,
                                      ),
                                    ),
                                    Text(
                                      // berandaPJe (63:419)
                                      'Beranda',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 10*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // group60E4N (63:420)
                                margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 93*fem, 0*fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // componentZMY (63:421)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                                      width: 30*fem,
                                      height: 30*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/component-MDY.png',
                                        width: 30*fem,
                                        height: 30*fem,
                                      ),
                                    ),
                                    Text(
                                      // marketplaceffU (63:422)
                                      'Marketplace',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 10*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // group61omg (63:423)
                                padding: EdgeInsets.fromLTRB(0*fem, 6.11*fem, 0*fem, 0*fem),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // iobjecttoolsbriefcase9ae (63:424)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4.22*fem),
                                      width: 24.98*fem,
                                      height: 21.67*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/i-object-tools-briefcase-srE.png',
                                        width: 24.98*fem,
                                        height: 21.67*fem,
                                      ),
                                    ),
                                    Text(
                                      // portofoliorV4 (63:425)
                                      'Portofolio',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 10*ffem,
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
                      ],
                    ),
                  ),
                  Container(
                    // portofoliontW (28:32)
                    width: double.infinity,
                    height: 849*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupeg8fjYr (3wAZeFB33vNxTjXmNREG8f)
                          padding: EdgeInsets.fromLTRB(15*fem, 14*fem, 17*fem, 14*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // portofoliorNa (58:147)
                                margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 24*fem),
                                child: Text(
                                  'Portofolio',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 20*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff3584ff),
                                  ),
                                ),
                              ),
                              Container(
                                // autogrouptngfZnn (3wAWsA8nESYiyHMmx6tNgF)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 22*fem),
                                padding: EdgeInsets.fromLTRB(122.5*fem, 10*fem, 118.5*fem, 17*fem),
                                width: 380*fem,
                                decoration: BoxDecoration (
                                  color: Color(0xff3584ff),
                                  borderRadius: BorderRadius.circular(24*fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupf5afTNN (3wAX253bbYNmTTWBjKf5af)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                      width: double.infinity,
                                      height: 58*fem,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // totalasetaht (46:152)
                                            left: 19.5*fem,
                                            top: 0*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 99*fem,
                                                height: 30*fem,
                                                child: Text(
                                                  'Total Aset',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 20*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // rp15000000h1p (46:153)
                                            left: 0*fem,
                                            top: 28*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 139*fem,
                                                height: 30*fem,
                                                child: RichText(
                                                  textAlign: TextAlign.center,
                                                  text: TextSpan(
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 20*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xffffffff),
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                        text: 'Rp.',
                                                      ),
                                                      TextSpan(
                                                        text: ' 15.000000',
                                                        style: SafeGoogleFont (
                                                          'Poppins',
                                                          fontSize: 20*ffem,
                                                          fontWeight: FontWeight.w700,
                                                          height: 1.5*ffem/fem,
                                                          color: Color(0xffffffff),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // autogrouppdcb1Av (3wAX6Zv6vKbdVkYoahpdcB)
                                      margin: EdgeInsets.fromLTRB(2.5*fem, 0*fem, 2.5*fem, 0*fem),
                                      width: double.infinity,
                                      height: 43*fem,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // totalkeuntunganwaN (46:155)
                                            left: 0*fem,
                                            top: 0*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 134*fem,
                                                height: 23*fem,
                                                child: Text(
                                                  'Total Keuntungan',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 15*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // rp15000003NW (54:70)
                                            left: 17*fem,
                                            top: 20*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 100*fem,
                                                height: 23*fem,
                                                child: RichText(
                                                  textAlign: TextAlign.center,
                                                  text: TextSpan(
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 15*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xffffffff),
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                        text: 'Rp. ',
                                                      ),
                                                      TextSpan(
                                                        text: '1.500.000',
                                                        style: SafeGoogleFont (
                                                          'Poppins',
                                                          fontSize: 15*ffem,
                                                          fontWeight: FontWeight.w700,
                                                          height: 1.5*ffem/fem,
                                                          color: Color(0xffffffff),
                                                        ),
                                                      ),
                                                    ],
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
                                // autogroupswsmS9k (3wAXEZgnANfATPJ8CwSwsm)
                                margin: EdgeInsets.fromLTRB(125.5*fem, 0*fem, 107*fem, 5*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // daftarinvestasiArS (69:117)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17.5*fem, 0*fem),
                                      child: Text(
                                        'Daftar Investasi',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Poppins',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.5*ffem/fem,
                                          color: Color(0xff3584ff),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // group28gpn (28:58)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 14*fem),
                                padding: EdgeInsets.fromLTRB(1*fem, 4*fem, 1*fem, 12*fem),
                                width: 381*fem,
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupesbzY6J (3wAa1ZtqhPsiMRXHhiESBZ)
                                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 15*fem, 5*fem),
                                      width: double.infinity,
                                      height: 26*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogrouphvsrdtS (3wAaBUmzU15wxZ1cZThvsR)
                                            padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 163*fem, 4*fem),
                                            height: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // nomDx (28:62)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                                  child: Text(
                                                    'NO',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff020202),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // p20072312345gri (28:64)
                                                  'P20072312345',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff343434),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // image7qDp (28:68)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                            width: 26*fem,
                                            height: 26*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/image-7-8rz.png',
                                            ),
                                          ),
                                          Text(
                                            // bulanNDk (28:63)
                                            '5 Bulan',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff020202),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // line4K8z (28:65)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                      width: double.infinity,
                                      height: 1*fem,
                                      decoration: BoxDecoration (
                                        color: Color(0xffbcbcbc),
                                      ),
                                    ),
                                    Container(
                                      // autogroupmqubSzJ (3wAaLE2RGBgdFuGNVbMqUb)
                                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 35*fem, 16*fem),
                                      width: double.infinity,
                                      height: 59*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroup8yp1aKp (3wAaV8wEdHWfk5QnGp8YP1)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 57*fem, 1*fem),
                                            width: 136*fem,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // totalinvestasihfL (69:118)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                                  width: double.infinity,
                                                  child: Text(
                                                    'Total Investasi',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 18*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // keuntunganE9U (69:119)
                                                  width: double.infinity,
                                                  child: Text(
                                                    'Keuntungan',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 18*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // autogroupctssMjt (3wAaaDd6wH3JwG5Bb1CtSs)
                                            margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 4*fem, 2*fem),
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // rptjp (28:71)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                                  child: Text(
                                                    'Rp',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 16*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff727272),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // rpRDx (69:107)
                                                  'Rp',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 16*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff727272),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // autogroupwq7dNQ6 (3wAafddkP72gW6WtbNWq7D)
                                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                            width: 109*fem,
                                            height: 58*fem,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // Hmx (28:70)
                                                  left: 0*fem,
                                                  top: 0*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 109*fem,
                                                      height: 30*fem,
                                                      child: Text(
                                                        '10.000.000',
                                                        style: SafeGoogleFont (
                                                          'Poppins',
                                                          fontSize: 20*ffem,
                                                          fontWeight: FontWeight.w600,
                                                          height: 1.5*ffem/fem,
                                                          color: Color(0xff020202),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // Pa6 (69:116)
                                                  left: 0*fem,
                                                  top: 28*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 96*fem,
                                                      height: 30*fem,
                                                      child: Text(
                                                        '1.000.000',
                                                        style: SafeGoogleFont (
                                                          'Poppins',
                                                          fontSize: 20*ffem,
                                                          fontWeight: FontWeight.w600,
                                                          height: 1.5*ffem/fem,
                                                          color: Color(0xff020202),
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
                                      // autogroupakhhHfU (3wAarNpqzJPk3MTUgZaKHH)
                                      width: double.infinity,
                                      height: 5*fem,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // group29eF8 (69:151)
                                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 30*fem),
                                padding: EdgeInsets.fromLTRB(1*fem, 4*fem, 1*fem, 12*fem),
                                width: 381*fem,
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupxm7vJKg (3wAbT2Vn3CKis6hCiuxM7V)
                                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 5*fem),
                                      width: double.infinity,
                                      height: 26*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogrouphtax1zn (3wAbc2EngkmSwgnSRgHTAX)
                                            padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 163*fem, 4*fem),
                                            height: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // no9r6 (69:153)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                                  child: Text(
                                                    'NO',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff020202),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // p20072312346Tbt (69:155)
                                                  'P20072312346',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff343434),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // image7Q1L (69:157)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                            width: 26*fem,
                                            height: 26*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/image-7-zzA.png',
                                            ),
                                          ),
                                          Text(
                                            // bulan8CE (69:154)
                                            '7 Bulan',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff020202),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // line44bg (69:156)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                      width: double.infinity,
                                      height: 1*fem,
                                      decoration: BoxDecoration (
                                        color: Color(0xffbcbcbc),
                                      ),
                                    ),
                                    Container(
                                      // autogrouphmbdQ9k (3wAbkSASM6uPsPFtfdhmBD)
                                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 43*fem, 16*fem),
                                      width: double.infinity,
                                      height: 59*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogrouplotb85k (3wAbzqv6SVLVWonqNmLotb)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 57*fem, 1*fem),
                                            width: 136*fem,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // totalinvestasi3iW (69:163)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                                  width: double.infinity,
                                                  child: Text(
                                                    'Total Investasi',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 18*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // keuntunganm8i (69:162)
                                                  width: double.infinity,
                                                  child: Text(
                                                    'Keuntungan',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 18*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // autogroupfurqVKc (3wAcAfy3vdw3XXLLJyFuRq)
                                            margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 4*fem, 2*fem),
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // rp24e (69:160)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                                  child: Text(
                                                    'Rp',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 16*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff727272),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // rp99G (69:161)
                                                  'Rp',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 16*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff727272),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // autogroupmrqbViv (3wAcJW5LbmmDJLC167mRQB)
                                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                            width: 101*fem,
                                            height: 58*fem,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // pmC (69:158)
                                                  left: 0*fem,
                                                  top: 0*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 101*fem,
                                                      height: 30*fem,
                                                      child: Text(
                                                        '5.000.000',
                                                        style: SafeGoogleFont (
                                                          'Poppins',
                                                          fontSize: 20*ffem,
                                                          fontWeight: FontWeight.w600,
                                                          height: 1.5*ffem/fem,
                                                          color: Color(0xff020202),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // vpE (69:159)
                                                  left: 0*fem,
                                                  top: 28*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 83*fem,
                                                      height: 30*fem,
                                                      child: Text(
                                                        '500.000',
                                                        style: SafeGoogleFont (
                                                          'Poppins',
                                                          fontSize: 20*ffem,
                                                          fontWeight: FontWeight.w600,
                                                          height: 1.5*ffem/fem,
                                                          color: Color(0xff020202),
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
                                      // autogroupiqmuS1t (3wAceKqe8zBgWbAeociQmu)
                                      width: double.infinity,
                                      height: 5*fem,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroupaucoatn (3wAXM9L9adG6KzyQ8vaUco)
                                margin: EdgeInsets.fromLTRB(118*fem, 0*fem, 101*fem, 5*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // riwayatinvestasiXJE (69:134)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                                      child: Text(
                                        'Riwayat Investasi',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Poppins',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.5*ffem/fem,
                                          color: Color(0xff3584ff),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // group30SAJ (69:167)
                                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(1*fem, 4*fem, 0*fem, 12*fem),
                                width: 381*fem,
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogrouprb7dJTQ (3wAdeoADM84u2Qkgsarb7d)
                                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 17*fem, 5*fem),
                                      width: double.infinity,
                                      height: 26*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroupt41dDaN (3wAdsd8B3np2PzKw3Nt41D)
                                            padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 163*fem, 4*fem),
                                            height: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // noZ8S (69:169)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                                  child: Text(
                                                    'NO',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff020202),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // p20072312346fxA (69:171)
                                                  'P20072312346',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff343434),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // image7DTt (69:173)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                            width: 26*fem,
                                            height: 26*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/image-7-SGW.png',
                                            ),
                                          ),
                                          Text(
                                            // bulan9cS (69:170)
                                            '7 Bulan',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff020202),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // line46Xg (69:172)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 10*fem),
                                      width: 379*fem,
                                      height: 1*fem,
                                      decoration: BoxDecoration (
                                        color: Color(0xffbcbcbc),
                                      ),
                                    ),
                                    Container(
                                      // autogroupkxmvENz (3wAe2nXaGGV7fQJpbEKxMV)
                                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 36*fem, 16*fem),
                                      width: double.infinity,
                                      height: 59*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroupjfwoMTc (3wAeBHHRD5EkBWj6kjJfWo)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 57*fem, 1*fem),
                                            width: 136*fem,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // totalinvestasigEz (69:179)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                                  width: double.infinity,
                                                  child: Text(
                                                    'Total Investasi',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 18*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // keuntungannop (69:178)
                                                  width: double.infinity,
                                                  child: Text(
                                                    'Keuntungan',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 18*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // autogroupcbfmiSa (3wAeHXc1VVNwgUd4zYCbfM)
                                            margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 4*fem, 2*fem),
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // rpFSW (69:176)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                                  child: Text(
                                                    'Rp',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 16*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff727272),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // rpajg (69:177)
                                                  'Rp',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 16*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff727272),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // autogroupgwjdw4S (3wAeNcHsoUuasfHUJjGwjD)
                                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                            width: 109*fem,
                                            height: 58*fem,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // ezS (69:174)
                                                  left: 0*fem,
                                                  top: 0*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 109*fem,
                                                      height: 30*fem,
                                                      child: Text(
                                                        '10.000.000',
                                                        style: SafeGoogleFont (
                                                          'Poppins',
                                                          fontSize: 20*ffem,
                                                          fontWeight: FontWeight.w600,
                                                          height: 1.5*ffem/fem,
                                                          color: Color(0xff020202),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // kna (69:175)
                                                  left: 0*fem,
                                                  top: 28*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 96*fem,
                                                      height: 30*fem,
                                                      child: Text(
                                                        '1.000.000',
                                                        style: SafeGoogleFont (
                                                          'Poppins',
                                                          fontSize: 20*ffem,
                                                          fontWeight: FontWeight.w600,
                                                          height: 1.5*ffem/fem,
                                                          color: Color(0xff020202),
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
                                      // autogroupir8bTBC (3wAeabwtfZVtK7QTF5iR8b)
                                      width: 380*fem,
                                      height: 5*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/auto-group-ir8b.png',
                                        width: 380*fem,
                                        height: 5*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogrouppcohF74 (3wAXTyU6rFi4yrV9qYPCoh)
                          width: double.infinity,
                          height: 138*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // group31bAv (69:182)
                                left: 16*fem,
                                top: 0*fem,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(1*fem, 4*fem, 0*fem, 12*fem),
                                  width: 381*fem,
                                  height: 138*fem,
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
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // autogroupadd13Hp (3wAXn8cWiHptKrZH6AADD1)
                                        margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 17*fem, 5*fem),
                                        width: double.infinity,
                                        height: 26*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // autogroupawhuANS (3wAXwNr7DE7fBgUzZZAWhu)
                                              padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 163*fem, 4*fem),
                                              height: double.infinity,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // noVfc (69:184)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                                    child: Text(
                                                      'NO',
                                                      style: SafeGoogleFont (
                                                        'Poppins',
                                                        fontSize: 12*ffem,
                                                        fontWeight: FontWeight.w600,
                                                        height: 1.5*ffem/fem,
                                                        color: Color(0xff020202),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    // p20072312346cVL (69:186)
                                                    'P20072312346',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff343434),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // image7kbY (69:188)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                              width: 26*fem,
                                              height: 26*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/image-7-nyC.png',
                                              ),
                                            ),
                                            Text(
                                              // bulanH5g (69:185)
                                              '7 Bulan',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff020202),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // line4EFp (69:187)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 10*fem),
                                        width: 379*fem,
                                        height: 1*fem,
                                        decoration: BoxDecoration (
                                          color: Color(0xffbcbcbc),
                                        ),
                                      ),
                                      Container(
                                        // autogroupzqrumWe (3wAYSN1oxvDDfMSXpuZQRu)
                                        margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 36*fem, 16*fem),
                                        width: double.infinity,
                                        height: 59*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // autogroupzhvotLN (3wAYbcFQTrVzXBNFJJZhvo)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 57*fem, 1*fem),
                                              width: 136*fem,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // totalinvestasiR5Q (69:194)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                                    width: double.infinity,
                                                    child: Text(
                                                      'Total Investasi',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'Poppins',
                                                        fontSize: 18*ffem,
                                                        fontWeight: FontWeight.w700,
                                                        height: 1.5*ffem/fem,
                                                        color: Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // keuntunganXPL (69:193)
                                                    width: double.infinity,
                                                    child: Text(
                                                      'Keuntungan',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'Poppins',
                                                        fontSize: 18*ffem,
                                                        fontWeight: FontWeight.w700,
                                                        height: 1.5*ffem/fem,
                                                        color: Color(0xff000000),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // autogroup7fbd48N (3wAYhMaq3Wx6TfbFzr7FBd)
                                              margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 4*fem, 2*fem),
                                              height: double.infinity,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // rpByg (69:191)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                                    child: Text(
                                                      'Rp',
                                                      style: SafeGoogleFont (
                                                        'Poppins',
                                                        fontSize: 16*ffem,
                                                        fontWeight: FontWeight.w600,
                                                        height: 1.5*ffem/fem,
                                                        color: Color(0xff727272),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    // rpuPt (69:192)
                                                    'Rp',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 16*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff727272),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // autogroupwpod41t (3wAYnBn7W8dgscRBYQWPod)
                                              margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                              width: 109*fem,
                                              height: 58*fem,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    // BMQ (69:189)
                                                    left: 0*fem,
                                                    top: 0*fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 109*fem,
                                                        height: 30*fem,
                                                        child: Text(
                                                          '10.000.000',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 20*ffem,
                                                            fontWeight: FontWeight.w600,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff020202),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // HQS (69:190)
                                                    left: 0*fem,
                                                    top: 28*fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 96*fem,
                                                        height: 30*fem,
                                                        child: Text(
                                                          '1.000.000',
                                                          style: SafeGoogleFont (
                                                            'Poppins',
                                                            fontSize: 20*ffem,
                                                            fontWeight: FontWeight.w600,
                                                            height: 1.5*ffem/fem,
                                                            color: Color(0xff020202),
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
                                        // autogroupwgmdPCa (3wAYzGGKefqfuUUzQJWGMd)
                                        width: 380*fem,
                                        height: 5*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/auto-group-wgmd.png',
                                          width: 380*fem,
                                          height: 5*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                // navbarhsU (63:374)
                                left: 0*fem,
                                top: 31*fem,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(25*fem, 7*fem, 32*fem, 8*fem),
                                  width: 414*fem,
                                  height: 62*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0xff3584ff),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // group62bCA (63:376)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 106*fem, 0*fem),
                                        padding: EdgeInsets.fromLTRB(0*fem, 5.41*fem, 0*fem, 0*fem),
                                        height: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // igaminghouseJ6a (63:377)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 3.07*fem),
                                              width: 26.87*fem,
                                              height: 23.52*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/i-gaming-house-zrJ.png',
                                                width: 26.87*fem,
                                                height: 23.52*fem,
                                              ),
                                            ),
                                            Text(
                                              // berandaCxe (63:379)
                                              'Beranda',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 10*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // group60wvE (63:380)
                                        margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 93*fem, 0*fem),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // componentgcv (63:381)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                                              width: 30*fem,
                                              height: 30*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/component-Y22.png',
                                                width: 30*fem,
                                                height: 30*fem,
                                              ),
                                            ),
                                            Text(
                                              // marketplacePXL (63:382)
                                              'Marketplace',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 10*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // group61XdY (63:383)
                                        padding: EdgeInsets.fromLTRB(0*fem, 6.11*fem, 0*fem, 0*fem),
                                        height: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // iobjecttoolsbriefcase4Na (63:384)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4.22*fem),
                                              width: 24.98*fem,
                                              height: 21.67*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/i-object-tools-briefcase.png',
                                                width: 24.98*fem,
                                                height: 21.67*fem,
                                              ),
                                            ),
                                            Text(
                                              // portofoliomXt (63:385)
                                              'Portofolio',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 10*ffem,
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
              // autogroupcxafJXp (3wAuxzeH22wjCP928icXaf)
              padding: EdgeInsets.fromLTRB(56*fem, 0*fem, 0*fem, 0*fem),
              height: 1755*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // autogrouppfy3RcS (3wAh6XkjqXMspRY4eNPfY3)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 56*fem, 0*fem),
                    width: 414*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // marketplacexMU (28:167)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 73*fem),
                          padding: EdgeInsets.fromLTRB(1*fem, 14*fem, 0*fem, 0*fem),
                          width: double.infinity,
                          height: 849*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // marketplace3dp (28:172)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 17*fem),
                                child: Text(
                                  'Marketplace',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 20*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff3584ff),
                                  ),
                                ),
                              ),
                              Container(
                                // autogroupuv1hNRC (3wAhPc6d1bUpT4KStuuV1H)
                                margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 17.64*fem, 17.85*fem),
                                width: double.infinity,
                                height: 42.15*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // seachggn (45:54)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 75*fem, 0*fem),
                                      padding: EdgeInsets.fromLTRB(20*fem, 13*fem, 73*fem, 13*fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: Color(0xff6c6c70)),
                                        borderRadius: BorderRadius.circular(20*fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // magnifyingglassP5Q (I45:54;135:4110)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                                            width: 16*fem,
                                            height: 16.15*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/magnifyingglass.png',
                                              width: 16*fem,
                                              height: 16.15*fem,
                                            ),
                                          ),
                                          Container(
                                            // searchuJe (I45:54;135:4111)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.15*fem),
                                            child: Text(
                                              'Search',
                                              style: SafeGoogleFont (
                                                'SF Pro Display',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1*ffem/fem,
                                                letterSpacing: 0.32*fem,
                                                color: Color(0xff6c6c70),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // buttonsQmC (45:188)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.15*fem),
                                      padding: EdgeInsets.fromLTRB(29*fem, 13*fem, 29*fem, 13*fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        color: Color(0xfff2f2f7),
                                        borderRadius: BorderRadius.circular(30*fem),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // labeliG6 (I45:188;137:4014)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                                            child: Text(
                                              'Filter',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1*ffem/fem,
                                                letterSpacing: 0.32*fem,
                                                color: Color(0xff252525),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // chevronleft2Gn (I45:188;137:4015)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                            width: 13.36*fem,
                                            height: 7.69*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/chevronleft-5jL.png',
                                              width: 13.36*fem,
                                              height: 7.69*fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // group28LYN (40:11)
                                margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 17*fem, 18*fem),
                                padding: EdgeInsets.fromLTRB(1*fem, 6*fem, 0*fem, 9*fem),
                                width: double.infinity,
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupem7dyrE (3wAhuvZSJdRJRLQCvyEm7D)
                                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 0*fem),
                                      width: double.infinity,
                                      height: 26*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroup7qmy7Bk (3wAi7qPFtFPvGNaMwn7qMy)
                                            padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 163*fem, 4*fem),
                                            height: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // noSE2 (40:16)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                                  child: Text(
                                                    'NO',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff020202),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // p20072312345AQv (40:18)
                                                  'P20072312345',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff343434),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // image76pN (40:23)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                            width: 26*fem,
                                            height: 26*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/image-7-v62.png',
                                            ),
                                          ),
                                          Text(
                                            // bulan2T8 (40:17)
                                            '5 Bulan',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff020202),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // line7ApE (40:20)
                                      margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 2*fem),
                                      width: 379*fem,
                                      height: 1*fem,
                                      decoration: BoxDecoration (
                                        color: Color(0xffbcbcbc),
                                      ),
                                    ),
                                    Container(
                                      // autogroupmjy9Vbc (3wAiGadggRzbZiq7sumjy9)
                                      margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 27*fem, 8*fem),
                                      width: double.infinity,
                                      height: 61*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // profile21Zx (40:13)
                                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 8*fem, 0*fem),
                                            width: 50*fem,
                                            height: 50*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/profile-2-hWn.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Container(
                                            // autogroupuqfvLML (3wAiSpqcasfZYW6kRqUqFV)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 72*fem, 0*fem),
                                            width: 169*fem,
                                            height: double.infinity,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // ayeshaalifirdauss6N (40:31)
                                                  left: 0*fem,
                                                  top: 0*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 169*fem,
                                                      height: 27*fem,
                                                      child: Text(
                                                        'Ayesha Ali Firdaus',
                                                        style: SafeGoogleFont (
                                                          'Poppins',
                                                          fontSize: 18*ffem,
                                                          fontWeight: FontWeight.w600,
                                                          height: 1.5*ffem/fem,
                                                          color: Color(0xff020202),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // kulinerkvr (40:32)
                                                  left: 1*fem,
                                                  top: 26*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 41*fem,
                                                      height: 18*fem,
                                                      child: Text(
                                                        'Kuliner',
                                                        style: SafeGoogleFont (
                                                          'Poppins',
                                                          fontSize: 12*ffem,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.5*ffem/fem,
                                                          color: Color(0xff343434),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // bandungjawabaratqxJ (40:33)
                                                  left: 1*fem,
                                                  top: 43*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 129*fem,
                                                      height: 18*fem,
                                                      child: Text(
                                                        'Bandung, Jawa Barat',
                                                        style: SafeGoogleFont (
                                                          'Poppins',
                                                          fontSize: 12*ffem,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.5*ffem/fem,
                                                          color: Color(0xff343434),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // a9CJ (40:34)
                                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                            child: Text(
                                              'A+',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 32*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff3584ff),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // line4s8J (40:19)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 8*fem),
                                      width: 379*fem,
                                      height: 1*fem,
                                      decoration: BoxDecoration (
                                        color: Color(0xffbcbcbc),
                                      ),
                                    ),
                                    Container(
                                      // autogroupdwsrzyc (3wAidpXJ3SsfrzspHfDWsR)
                                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 9*fem, 16*fem),
                                      width: double.infinity,
                                      height: 57*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroupvsfh84E (3wAimKJoakF7G9xBNdVSFH)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49*fem, 0*fem),
                                            width: 67*fem,
                                            height: double.infinity,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // rkv (40:24)
                                                  left: 1*fem,
                                                  top: 0*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 59*fem,
                                                      height: 48*fem,
                                                      child: Text(
                                                        '10%',
                                                        style: SafeGoogleFont (
                                                          'Poppins',
                                                          fontSize: 32*ffem,
                                                          fontWeight: FontWeight.w600,
                                                          height: 1.5*ffem/fem,
                                                          color: Color(0xff020202),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // hasilimbalAWi (40:27)
                                                  left: 0*fem,
                                                  top: 39*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 67*fem,
                                                      height: 18*fem,
                                                      child: Text(
                                                        'hasil imbal',
                                                        style: SafeGoogleFont (
                                                          'Poppins',
                                                          fontSize: 12*ffem,
                                                          fontWeight: FontWeight.w500,
                                                          height: 1.5*ffem/fem,
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
                                            // rpGpe (40:26)
                                            margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 9*fem, 0*fem),
                                            child: Text(
                                              'Rp',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff727272),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // Bgi (40:25)
                                            margin: EdgeInsets.fromLTRB(0*fem, 9*fem, 35*fem, 0*fem),
                                            child: Text(
                                              '10.000.000',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff020202),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // group33WU6 (40:28)
                                            margin: EdgeInsets.fromLTRB(0*fem, 23*fem, 0*fem, 12*fem),
                                            width: 86*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              color: Color(0xff3584ff),
                                              borderRadius: BorderRadius.circular(5*fem),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Danai',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 12*ffem,
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
                                    Container(
                                      // autogroupawhqNmC (3wAiuyj36UE6y6G7PDawhq)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 3*fem),
                                      width: 379*fem,
                                      height: 5*fem,
                                    ),
                                    Container(
                                      // autogroupyvuti4N (3wAiztkWqYXNyT2rrKYVUT)
                                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 22*fem, 0*fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // bulanlagiqen (40:14)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 247*fem, 2*fem),
                                            child: Text(
                                              '1 Bulan lagi',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff020202),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // X1p (40:15)
                                            margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                            child: Text(
                                              '50%',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
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
                              Container(
                                // group29dae (51:98)
                                margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 18*fem, 18*fem),
                                padding: EdgeInsets.fromLTRB(1*fem, 6*fem, 0*fem, 9*fem),
                                width: double.infinity,
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupv6wbszn (3wAjxwySpNZoHJCw9WV6WB)
                                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 0*fem),
                                      width: double.infinity,
                                      height: 26*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroupspepnrr (3wAk9SfxaC5p3KK3U4sPEP)
                                            padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 163*fem, 4*fem),
                                            height: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // noikW (51:103)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                                  child: Text(
                                                    'NO',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff020202),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  // p20072312345qq8 (51:105)
                                                  'P20072312345',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff343434),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // image7b3c (51:110)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                            width: 26*fem,
                                            height: 26*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/image-7-jaW.png',
                                            ),
                                          ),
                                          Text(
                                            // bulanKEW (51:104)
                                            '5 Bulan',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff020202),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // line7rkE (51:107)
                                      margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 4*fem),
                                      width: 379*fem,
                                      height: 1*fem,
                                      decoration: BoxDecoration (
                                        color: Color(0xffbcbcbc),
                                      ),
                                    ),
                                    Container(
                                      // autogrouppw47ypr (3wAkHBx3xsJJDiDtKfpW47)
                                      margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 27*fem, 10*fem),
                                      width: double.infinity,
                                      height: 57*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // profile26ea (51:100)
                                            margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 8*fem, 0*fem),
                                            width: 50*fem,
                                            height: 50*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/profile-2-xUN.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Container(
                                            // autogroupi1fmDUJ (3wAkSGXFttMhtiFwwyi1Fm)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 111*fem, 0*fem),
                                            width: 129*fem,
                                            height: double.infinity,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // mfadhillahLJ2 (51:118)
                                                  left: 0*fem,
                                                  top: 0*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 106*fem,
                                                      height: 27*fem,
                                                      child: Text(
                                                        'M Fadhillah',
                                                        style: SafeGoogleFont (
                                                          'Poppins',
                                                          fontSize: 18*ffem,
                                                          fontWeight: FontWeight.w600,
                                                          height: 1.5*ffem/fem,
                                                          color: Color(0xff020202),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // hiburanpiz (51:119)
                                                  left: 0*fem,
                                                  top: 22*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 48*fem,
                                                      height: 18*fem,
                                                      child: Text(
                                                        'Hiburan',
                                                        style: SafeGoogleFont (
                                                          'Poppins',
                                                          fontSize: 12*ffem,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.5*ffem/fem,
                                                          color: Color(0xff343434),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // bandungjawabarat8Un (51:120)
                                                  left: 0*fem,
                                                  top: 39*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 129*fem,
                                                      height: 18*fem,
                                                      child: Text(
                                                        'Bandung, Jawa Barat',
                                                        style: SafeGoogleFont (
                                                          'Poppins',
                                                          fontSize: 12*ffem,
                                                          fontWeight: FontWeight.w400,
                                                          height: 1.5*ffem/fem,
                                                          color: Color(0xff343434),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // aRin (51:121)
                                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                            child: Text(
                                              'A+',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 32*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff3584ff),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // line49Pt (51:106)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 8*fem),
                                      width: 379*fem,
                                      height: 1*fem,
                                      decoration: BoxDecoration (
                                        color: Color(0xffbcbcbc),
                                      ),
                                    ),
                                    Container(
                                      // autogroupq73u5YS (3wAkbgRExjsqwN5KGTq73u)
                                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 9*fem, 16*fem),
                                      width: double.infinity,
                                      height: 57*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // autogroupadcjzQW (3wAkjqrJmiAk5piHjnaDcj)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49*fem, 0*fem),
                                            width: 67*fem,
                                            height: double.infinity,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // KBt (51:111)
                                                  left: 1*fem,
                                                  top: 0*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 59*fem,
                                                      height: 48*fem,
                                                      child: Text(
                                                        '10%',
                                                        style: SafeGoogleFont (
                                                          'Poppins',
                                                          fontSize: 32*ffem,
                                                          fontWeight: FontWeight.w600,
                                                          height: 1.5*ffem/fem,
                                                          color: Color(0xff020202),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // hasilimbalcwg (51:114)
                                                  left: 0*fem,
                                                  top: 39*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 67*fem,
                                                      height: 18*fem,
                                                      child: Text(
                                                        'hasil imbal',
                                                        style: SafeGoogleFont (
                                                          'Poppins',
                                                          fontSize: 12*ffem,
                                                          fontWeight: FontWeight.w500,
                                                          height: 1.5*ffem/fem,
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
                                            // rpijp (51:113)
                                            margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 9*fem, 0*fem),
                                            child: Text(
                                              'Rp',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff727272),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // r5L (51:112)
                                            margin: EdgeInsets.fromLTRB(0*fem, 9*fem, 35*fem, 0*fem),
                                            child: Text(
                                              '10.000.000',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 16*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff020202),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // group33yve (51:115)
                                            margin: EdgeInsets.fromLTRB(0*fem, 23*fem, 0*fem, 12*fem),
                                            width: 86*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              color: Color(0xff3584ff),
                                              borderRadius: BorderRadius.circular(5*fem),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Danai',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 12*ffem,
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
                                    Container(
                                      // autogroupukfmFtA (3wAktqbKRGcUAQoXSYuKfm)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 3*fem),
                                      width: 379*fem,
                                      height: 5*fem,
                                    ),
                                    Container(
                                      // autogroupdgl7zar (3wAkzFbxs6bqjFFESvDGL7)
                                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 22*fem, 0*fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // bulanlagiKd8 (51:101)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 247*fem, 2*fem),
                                            child: Text(
                                              '1 Bulan lagi',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff020202),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // e9c (51:102)
                                            margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                            child: Text(
                                              '50%',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5*ffem/fem,
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
                              Container(
                                // group30NLW (51:122)
                                width: 414*fem,
                                height: 247*fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // rectangle33GRt (51:123)
                                      left: 16*fem,
                                      top: 0*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 381*fem,
                                          height: 223*fem,
                                          child: Container(
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(10*fem),
                                              border: Border.all(color: Color(0xffbcbcbc)),
                                              color: Color(0xffffffff),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0x3f000000),
                                                  offset: Offset(0*fem, 4*fem),
                                                  blurRadius: 2*fem,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // profile2DEe (51:124)
                                      left: 27*fem,
                                      top: 42*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 50*fem,
                                          height: 50*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/profile-2.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // bulanlagiJG6 (51:125)
                                      left: 33*fem,
                                      top: 194*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 55*fem,
                                          height: 18*fem,
                                          child: Text(
                                            'Terdanai',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff020202),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // PoL (51:126)
                                      left: 349*fem,
                                      top: 196*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 26*fem,
                                          height: 18*fem,
                                          child: Text(
                                            '50%',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff020202),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // no7US (51:127)
                                      left: 33*fem,
                                      top: 10*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 19*fem,
                                          height: 18*fem,
                                          child: Text(
                                            'NO',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff020202),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // bulanbPc (51:128)
                                      left: 335*fem,
                                      top: 10*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 46*fem,
                                          height: 18*fem,
                                          child: Text(
                                            '5 Bulan',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff020202),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // p20072312345Vjt (51:129)
                                      left: 58*fem,
                                      top: 10*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 83*fem,
                                          height: 18*fem,
                                          child: Text(
                                            'P20072312345',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff343434),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // line4QM4 (51:130)
                                      left: 17*fem,
                                      top: 104*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 379*fem,
                                          height: 1*fem,
                                          child: Container(
                                            decoration: BoxDecoration (
                                              color: Color(0xffbcbcbc),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // line7XRg (51:131)
                                      left: 18*fem,
                                      top: 32*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 379*fem,
                                          height: 1*fem,
                                          child: Container(
                                            decoration: BoxDecoration (
                                              color: Color(0xffbcbcbc),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // line5rTx (51:132)
                                      left: 17*fem,
                                      top: 186*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 379*fem,
                                          height: 5*fem,
                                          child: Container(
                                            decoration: BoxDecoration (
                                              color: Color(0xffbcbcbc),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // line6mqp (51:133)
                                      left: 17*fem,
                                      top: 186*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 190*fem,
                                          height: 5*fem,
                                          child: Container(
                                            decoration: BoxDecoration (
                                              color: Color(0xff04d300),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // image7hzN (51:134)
                                      left: 304*fem,
                                      top: 6*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 26*fem,
                                          height: 26*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/image-7-2vS.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // EjQ (51:135)
                                      left: 34*fem,
                                      top: 113*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 59*fem,
                                          height: 48*fem,
                                          child: Text(
                                            '10%',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 32*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff020202),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // xfQ (51:136)
                                      left: 180*fem,
                                      top: 134*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 87*fem,
                                          height: 24*fem,
                                          child: Text(
                                            '10.000.000',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 16*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff020202),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // rpeYE (51:137)
                                      left: 149*fem,
                                      top: 133*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 22*fem,
                                          height: 24*fem,
                                          child: Text(
                                            'Rp',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 16*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff727272),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // hasilimbal9zn (51:138)
                                      left: 33*fem,
                                      top: 152*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 67*fem,
                                          height: 18*fem,
                                          child: Text(
                                            'hasil imbal',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff727272),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // group33sA6 (51:139)
                                      left: 302*fem,
                                      top: 136*fem,
                                      child: Container(
                                        width: 86*fem,
                                        height: 22*fem,
                                        decoration: BoxDecoration (
                                          color: Color(0xff3584ff),
                                          borderRadius: BorderRadius.circular(5*fem),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Danai',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // dickifathurohmanXVY (51:142)
                                      left: 85*fem,
                                      top: 37*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 175*fem,
                                          height: 27*fem,
                                          child: Text(
                                            'Dicki Fathurohman',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 18*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff020202),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // fashioncmt (51:143)
                                      left: 85*fem,
                                      top: 60*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 47*fem,
                                          height: 18*fem,
                                          child: Text(
                                            'Fashion',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff343434),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // bandungjawabaratXdx (51:144)
                                      left: 85*fem,
                                      top: 77*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 129*fem,
                                          height: 18*fem,
                                          child: Text(
                                            'Bandung, Jawa Barat',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff343434),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // aqPk (51:145)
                                      left: 325*fem,
                                      top: 42*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 45*fem,
                                          height: 48*fem,
                                          child: Text(
                                            'A+',
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 32*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff3584ff),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // navbarxDU (63:394)
                                      left: 0*fem,
                                      top: 185*fem,
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(25*fem, 7*fem, 32*fem, 8*fem),
                                        width: 414*fem,
                                        height: 62*fem,
                                        decoration: BoxDecoration (
                                          color: Color(0xff3584ff),
                                        ),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // group62SPY (63:396)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 106*fem, 0*fem),
                                              padding: EdgeInsets.fromLTRB(0*fem, 5.41*fem, 0*fem, 0*fem),
                                              height: double.infinity,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // igaminghouse9ok (63:397)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 3.07*fem),
                                                    width: 26.87*fem,
                                                    height: 23.52*fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/i-gaming-house-DFL.png',
                                                      width: 26.87*fem,
                                                      height: 23.52*fem,
                                                    ),
                                                  ),
                                                  Text(
                                                    // beranda4A2 (63:399)
                                                    'Beranda',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 10*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // group60bve (63:400)
                                              margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 93*fem, 0*fem),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // componentLtE (63:401)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                                                    width: 30*fem,
                                                    height: 30*fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/component-oMQ.png',
                                                      width: 30*fem,
                                                      height: 30*fem,
                                                    ),
                                                  ),
                                                  Text(
                                                    // marketplacerLn (63:402)
                                                    'Marketplace',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 10*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // group61C9k (63:403)
                                              padding: EdgeInsets.fromLTRB(0*fem, 6.11*fem, 0*fem, 0*fem),
                                              height: double.infinity,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // iobjecttoolsbriefcasevrS (63:404)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4.22*fem),
                                                    width: 24.98*fem,
                                                    height: 21.67*fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/i-object-tools-briefcase-4wx.png',
                                                      width: 24.98*fem,
                                                      height: 21.67*fem,
                                                    ),
                                                  ),
                                                  Text(
                                                    // portofolioSJz (63:405)
                                                    'Portofolio',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 10*ffem,
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
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // riwayattransaksiinvestorn7x (63:306)
                          width: double.infinity,
                          height: 736*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                // autogroupcyhhhki (3wAnkTAg49USjp74BYcyhh)
                                left: 0*fem,
                                top: 118*fem,
                                child: Container(
                                  width: 414*fem,
                                  height: 260*fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // beripendanaanp2007231234505apr (63:313)
                                        left: 17*fem,
                                        top: 9*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 97*fem,
                                            height: 54*fem,
                                            child: RichText(
                                              text: TextSpan(
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff000000),
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: 'Beri Pendanaan\n',
                                                  ),
                                                  TextSpan(
                                                    text: 'P20072312345\n',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '05 April 2023',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
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
                                        // rp100000cei (63:314)
                                        left: 321*fem,
                                        top: 27*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 72*fem,
                                            height: 18*fem,
                                            child: Text(
                                              '-Rp 100.000',
                                              textAlign: TextAlign.right,
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xffd32600),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // isisaldoviabca04april2023Wzz (63:315)
                                        left: 17*fem,
                                        top: 75*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 77*fem,
                                            height: 54*fem,
                                            child: RichText(
                                              text: TextSpan(
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff000000),
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: 'Isi Saldo\n',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w500,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: 'via BCA\n04 April 2023',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
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
                                        // rp100000THx (63:316)
                                        left: 320*fem,
                                        top: 93*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 73*fem,
                                            height: 18*fem,
                                            child: Text(
                                              '+Rp 100.000',
                                              textAlign: TextAlign.right,
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff03aa00),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // beripendanaanp2007231234503apr (63:317)
                                        left: 17*fem,
                                        top: 141*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 97*fem,
                                            height: 54*fem,
                                            child: RichText(
                                              text: TextSpan(
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff000000),
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: 'Beri Pendanaan\n',
                                                  ),
                                                  TextSpan(
                                                    text: 'P20072312345\n',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '03 April 2023',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
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
                                        // rp5000000UcN (63:318)
                                        left: 307*fem,
                                        top: 159*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 86*fem,
                                            height: 18*fem,
                                            child: Text(
                                              '-Rp 5.000.000',
                                              textAlign: TextAlign.right,
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xffd32600),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // imbalhasilp2007231234503april2 (63:319)
                                        left: 17*fem,
                                        top: 206*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 83*fem,
                                            height: 54*fem,
                                            child: RichText(
                                              text: TextSpan(
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff000000),
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: 'Imbal Hasil\n',
                                                  ),
                                                  TextSpan(
                                                    text: 'P20072312345\n',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '03 April 2023',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
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
                                        // rp500000aSS (63:320)
                                        left: 316*fem,
                                        top: 224*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 77*fem,
                                            height: 18*fem,
                                            child: Text(
                                              '+Rp 500.000',
                                              textAlign: TextAlign.right,
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff03aa00),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // line13VJW (63:321)
                                        left: 0*fem,
                                        top: 3*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 414*fem,
                                            height: 1*fem,
                                            child: Container(
                                              decoration: BoxDecoration (
                                                color: Color(0xffbcbcbc),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // line14p5t (63:322)
                                        left: 0*fem,
                                        top: 69*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 414*fem,
                                            height: 1*fem,
                                            child: Container(
                                              decoration: BoxDecoration (
                                                color: Color(0xffbcbcbc),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // line15vuc (63:323)
                                        left: 0*fem,
                                        top: 134*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 414*fem,
                                            height: 1*fem,
                                            child: Container(
                                              decoration: BoxDecoration (
                                                color: Color(0xffbcbcbc),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // line16Tee (63:324)
                                        left: 0*fem,
                                        top: 202*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 414*fem,
                                            height: 1*fem,
                                            child: Container(
                                              decoration: BoxDecoration (
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
                                // group27z8n (63:308)
                                left: 0*fem,
                                top: 0*fem,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(17*fem, 13*fem, 220*fem, 12*fem),
                                  width: 414*fem,
                                  height: 46*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0xff3584ff),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        // riwayattransaksi5AE (63:310)
                                        'Riwayat Transaksi',
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
                                // autogroupaludQyC (3wAnUsnHzLRnncLYYoALud)
                                left: 17*fem,
                                top: 61*fem,
                                child: Container(
                                  width: 382.36*fem,
                                  height: 42*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // riwayattransaksiKaN (63:312)
                                        margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 126*fem, 0*fem),
                                        child: Text(
                                          'Riwayat Transaksi',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // buttons2jg (63:329)
                                        padding: EdgeInsets.fromLTRB(29*fem, 13*fem, 29*fem, 13*fem),
                                        height: double.infinity,
                                        decoration: BoxDecoration (
                                          color: Color(0xfff2f2f7),
                                          borderRadius: BorderRadius.circular(30*fem),
                                        ),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // labelkQn (I63:329;137:4014)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                                              child: Text(
                                                'Filter',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1*ffem/fem,
                                                  letterSpacing: 0.32*fem,
                                                  color: Color(0xff252525),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // chevronleftfne (I63:329;137:4015)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                              width: 13.36*fem,
                                              height: 7.69*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/chevronleft-LNS.png',
                                                width: 13.36*fem,
                                                height: 7.69*fem,
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
                                // autogroupozfunMU (3wAo6cFkjCMeKis1bDoZfu)
                                left: 17*fem,
                                top: 387*fem,
                                child: Container(
                                  width: 376*fem,
                                  height: 54*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // isisaldoviabca02april2023uS6 (63:325)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 212*fem, 0*fem),
                                        constraints: BoxConstraints (
                                          maxWidth: 76*fem,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            style: SafeGoogleFont (
                                              'Poppins',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.5*ffem/fem,
                                              color: Color(0xff000000),
                                            ),
                                            children: [
                                              TextSpan(
                                                text: 'Isi Saldo\n',
                                              ),
                                              TextSpan(
                                                text: 'via BCA\n',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                              TextSpan(
                                                text: '02 April 2023',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // rp5000000e2J (63:326)
                                        '+Rp 5.000.000',
                                        textAlign: TextAlign.right,
                                        style: SafeGoogleFont (
                                          'Poppins',
                                          fontSize: 12*ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5*ffem/fem,
                                          color: Color(0xff03aa00),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                // line18B2E (63:327)
                                left: 0*fem,
                                top: 383*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 414*fem,
                                    height: 1*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        color: Color(0xffbcbcbc),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // line176Q6 (63:328)
                                left: 0*fem,
                                top: 449*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 414*fem,
                                    height: 1*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        color: Color(0xffbcbcbc),
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
                    // autogroupjpkfcdL (3wAoebLThQbnAFrJ6AJpkF)
                    width: 414*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // marketplacekzS (43:118)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 73*fem),
                          width: double.infinity,
                          height: 849*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                // group27FgJ (51:94)
                                left: 0*fem,
                                top: 0*fem,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(17*fem, 13*fem, 269*fem, 12*fem),
                                  width: 414*fem,
                                  height: 46*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0xff3584ff),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        // detailmitrawp2 (51:96)
                                        'Detail Mitra',
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
                                // autogroupgee3h2W (3wAsB5J5MxxfmoWmUxgee3)
                                left: 0*fem,
                                top: 46*fem,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(14*fem, 21*fem, 25*fem, 15.5*fem),
                                  width: 414*fem,
                                  height: 191.5*fem,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // autogroupdythyki (3wApRpY6nafTLS8xNcdYTH)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 45*fem),
                                        width: double.infinity,
                                        height: 62*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // profile26aS (51:146)
                                              margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 19*fem, 0*fem),
                                              width: 50*fem,
                                              height: 50*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/profile-2-T1Q.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Container(
                                              // autogroupmnbrcog (3wApiUj1YMhz11CD1SMNBR)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 92*fem, 0*fem),
                                              height: double.infinity,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    // ayeshaalifirdauswqx (51:147)
                                                    'Ayesha Ali Firdaus',
                                                    style: SafeGoogleFont (
                                                      'Poppins',
                                                      fontSize: 18*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.5*ffem/fem,
                                                      color: Color(0xff020202),
                                                    ),
                                                  ),
                                                  Container(
                                                    // autogroup8w2jHev (3wAppZPDFrcpK9CXQA8W2j)
                                                    width: 130*fem,
                                                    height: 35*fem,
                                                    child: Stack(
                                                      children: [
                                                        Positioned(
                                                          // kuliner2cW (51:148)
                                                          left: 0*fem,
                                                          top: 0*fem,
                                                          child: Align(
                                                            child: SizedBox(
                                                              width: 41*fem,
                                                              height: 18*fem,
                                                              child: Text(
                                                                'Kuliner',
                                                                style: SafeGoogleFont (
                                                                  'Poppins',
                                                                  fontSize: 12*ffem,
                                                                  fontWeight: FontWeight.w400,
                                                                  height: 1.5*ffem/fem,
                                                                  color: Color(0xff343434),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Positioned(
                                                          // bandungjawabaratKLi (51:149)
                                                          left: 1*fem,
                                                          top: 17*fem,
                                                          child: Align(
                                                            child: SizedBox(
                                                              width: 129*fem,
                                                              height: 18*fem,
                                                              child: Text(
                                                                'Bandung, Jawa Barat',
                                                                style: SafeGoogleFont (
                                                                  'Poppins',
                                                                  fontSize: 12*ffem,
                                                                  fontWeight: FontWeight.w400,
                                                                  height: 1.5*ffem/fem,
                                                                  color: Color(0xff343434),
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
                                              // aomg (51:150)
                                              margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 0*fem, 0*fem),
                                              child: Text(
                                                'A+',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 32*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff3584ff),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // autogroupmybdKzv (3wAq2yCCYEHXif3dxEMyBD)
                                        margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 0*fem, 0*fem),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // plafondGQN (52:166)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 70*fem, 0*fem),
                                              child: Text(
                                                'PLAFOND',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 15*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff727272),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // imbalhasilBnE (52:167)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 76*fem, 0*fem),
                                              child: Text(
                                                'IMBAL HASIL',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 15*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff727272),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // tenor7A6 (52:168)
                                              'TENOR',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 15*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff727272),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // autogroupgdmzFn6 (3wAqFdVmfyoHuQjEGwGdmZ)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // group39Bve (52:156)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 48*fem, 1*fem),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // rpXDp (51:152)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 1*fem),
                                                    child: Text(
                                                      'Rp',
                                                      style: SafeGoogleFont (
                                                        'Poppins',
                                                        fontSize: 15*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.5*ffem/fem,
                                                        color: Color(0xff727272),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // FQi (51:151)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                                    child: Text(
                                                      '10.000.000',
                                                      style: SafeGoogleFont (
                                                        'Poppins',
                                                        fontSize: 15*ffem,
                                                        fontWeight: FontWeight.w500,
                                                        height: 1.5*ffem/fem,
                                                        color: Color(0xff020202),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // group40mtr (52:160)
                                              margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 69*fem, 0*fem),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // rpJtn (52:162)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 1*fem),
                                                    child: Text(
                                                      'Rp',
                                                      style: SafeGoogleFont (
                                                        'Poppins',
                                                        fontSize: 15*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.5*ffem/fem,
                                                        color: Color(0xff727272),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // q82 (52:161)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                                    child: Text(
                                                      '1.000.000',
                                                      style: SafeGoogleFont (
                                                        'Poppins',
                                                        fontSize: 15*ffem,
                                                        fontWeight: FontWeight.w500,
                                                        height: 1.5*ffem/fem,
                                                        color: Color(0xff020202),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              // bulanYHL (52:164)
                                              '5 Bulan',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 15*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff020202),
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
                                // autogroup8r8xt6J (3wAqZCppYocL6XBa4k8r8X)
                                left: 43*fem,
                                top: 245.9631347656*fem,
                                child: Container(
                                  width: 299*fem,
                                  height: 27.07*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // tentangmitraCcn (52:171)
                                        margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 58*fem, 0*fem),
                                        child: Text(
                                          'Tentang Mitra',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 15*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // line10KSW (52:172)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 73*fem, 0*fem),
                                        width: 1*fem,
                                        height: 27.07*fem,
                                        decoration: BoxDecoration (
                                          color: Color(0xffbcbcbc),
                                        ),
                                      ),
                                      Container(
                                        // riwayatejg (52:173)
                                        margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                        child: Text(
                                          'Riwayat',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 15*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff727272),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                // line8Nfg (52:169)
                                left: -0.0054931641*fem,
                                top: 237.5*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 414.01*fem,
                                    height: 1*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        color: Color(0xffbcbcbc),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // line12hhx (58:72)
                                left: -0.0053710938*fem,
                                top: 474.5*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 414.01*fem,
                                    height: 1*fem,
                                    child: Container(
                                      decoration: BoxDecoration (
                                        color: Color(0xffbcbcbc),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // autogroup8igxR8A (3wAqmHK2hLpK8PFNve8igX)
                                left: -1*fem,
                                top: 283*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 415.01*fem,
                                    height: 2*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/auto-group-8igx.png',
                                      width: 415.01*fem,
                                      height: 2*fem,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // autogroupks6jXS6 (3wAquMuuDrVXgRwXURKS6j)
                                left: 21*fem,
                                top: 299*fem,
                                child: Container(
                                  width: 364*fem,
                                  height: 108*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // tenorpendanaanimbalhasiljenisa (58:70)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 107*fem, 0*fem),
                                        constraints: BoxConstraints (
                                          maxWidth: 132*fem,
                                        ),
                                        child: Text(
                                          'Tenor Pendanaan\n%Imbal Hasil\nJenis Angsuran\nJumlah Angsuran\nPendapatan Perbulan\nTujuan Peminjaman',
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // bulan10bulananrp2200000rp45000 (58:71)
                                        constraints: BoxConstraints (
                                          maxWidth: 125*fem,
                                        ),
                                        child: Text(
                                          '5 Bulan\n10%\nBulanan\nRp 2.200.000\nRp 4.500.000\nModal buka cabang ',
                                          textAlign: TextAlign.right,
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                // autogrouph8bqziz (3wAsheFUWNkCXKS1Heh8Bq)
                                left: 0*fem,
                                top: 620*fem,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(12*fem, 28*fem, 18*fem, 21*fem),
                                  width: 414*fem,
                                  height: 229*fem,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // autogroup9kgkUu4 (3wAr5mnDhDPrr36osS9KgK)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 9*fem),
                                        height: 13*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // crowdfundingCq4 (63:176)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 1*fem),
                                              child: Text(
                                                'Crowdfunding',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 8*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff6c6c70),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // autogrouppdmhX6e (3wArFMLbKz9N5Woq31PDmh)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                                              width: 266*fem,
                                              height: double.infinity,
                                              decoration: BoxDecoration (
                                                color: Color(0xff89ff87),
                                                borderRadius: BorderRadius.circular(10*fem),
                                              ),
                                              child: Align(
                                                // rectangle6qd8 (63:173)
                                                alignment: Alignment.centerLeft,
                                                child: SizedBox(
                                                  width: 145*fem,
                                                  height: 13*fem,
                                                  child: Container(
                                                    decoration: BoxDecoration (
                                                      borderRadius: BorderRadius.circular(10*fem),
                                                      color: Color(0xff04d300),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // bulanlagikVC (63:175)
                                              margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                              child: Text(
                                                '1 Bulan lagi',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 8*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff6c6c70),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // autogroupwkwjURC (3wArMvyxkEkHx8V6xzWkWj)
                                        margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 12*fem),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // group451R8 (58:97)
                                              padding: EdgeInsets.fromLTRB(16.5*fem, 1*fem, 16.5*fem, 0*fem),
                                              decoration: BoxDecoration (
                                                color: Color(0xff3282b8),
                                                borderRadius: BorderRadius.circular(3*fem),
                                              ),
                                              child: Text(
                                                '-',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 32*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 4*fem,
                                            ),
                                            Container(
                                              // group2Grr (58:73)
                                              width: 266*fem,
                                              height: 49*fem,
                                              decoration: BoxDecoration (
                                                border: Border.all(color: Color(0xff727272)),
                                                color: Color(0xffffffff),
                                                borderRadius: BorderRadius.circular(3*fem),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Rp 100.000',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 15*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 4*fem,
                                            ),
                                            Container(
                                              // group46TwL (58:100)
                                              margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                              padding: EdgeInsets.fromLTRB(14.5*fem, 0*fem, 14.5*fem, 0*fem),
                                              height: 49*fem,
                                              decoration: BoxDecoration (
                                                color: Color(0xff3282b8),
                                                borderRadius: BorderRadius.circular(3*fem),
                                              ),
                                              child: Text(
                                                '+',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 32*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // autogroup9oe7KCr (3wArcLjcqdBPbZ23g89oE7)
                                        margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 9*fem),
                                        height: 30*fem,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // group43S2a (58:82)
                                              width: 78*fem,
                                              height: double.infinity,
                                              decoration: BoxDecoration (
                                                border: Border.all(color: Color(0xffbcbcbc)),
                                                color: Color(0xffffffff),
                                                borderRadius: BorderRadius.circular(3*fem),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Rp 500 ribu',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 10*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff6c6c70),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 22*fem,
                                            ),
                                            Container(
                                              // group44Yzi (58:88)
                                              width: 78*fem,
                                              height: double.infinity,
                                              decoration: BoxDecoration (
                                                border: Border.all(color: Color(0xffbcbcbc)),
                                                color: Color(0xffffffff),
                                                borderRadius: BorderRadius.circular(3*fem),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Rp 1 juta',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 10*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff6c6c70),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 22*fem,
                                            ),
                                            Container(
                                              // group43cza (58:91)
                                              width: 78*fem,
                                              height: double.infinity,
                                              decoration: BoxDecoration (
                                                border: Border.all(color: Color(0xffbcbcbc)),
                                                color: Color(0xffffffff),
                                                borderRadius: BorderRadius.circular(3*fem),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Rp 5 juta',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 10*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff6c6c70),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 22*fem,
                                            ),
                                            Container(
                                              // group43sfc (58:94)
                                              width: 78*fem,
                                              height: double.infinity,
                                              decoration: BoxDecoration (
                                                border: Border.all(color: Color(0xffbcbcbc)),
                                                color: Color(0xffffffff),
                                                borderRadius: BorderRadius.circular(3*fem),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Max',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 10*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff6c6c70),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // autogroupqrmhA8v (3wArtLGyKjJTWpWgvbQRmH)
                                        margin: EdgeInsets.fromLTRB(5.81*fem, 0*fem, 0*fem, 8*fem),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // saldoandatKp (58:106)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                                              child: Text(
                                                'Saldo Anda',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 10*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff6c6c70),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // rp7000000zdk (58:110)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 115*fem, 0*fem),
                                              child: Text(
                                                'RP 7.000.000',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 10*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              // sisaplafonduVp (58:111)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.81*fem, 0*fem),
                                              child: Text(
                                                'Sisa Plafond',
                                                style: SafeGoogleFont (
                                                  'Poppins',
                                                  fontSize: 10*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5*ffem/fem,
                                                  color: Color(0xff6c6c70),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // rp5000000Rj4 (58:112)
                                              'RP 5.000.000',
                                              textAlign: TextAlign.right,
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 10*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // group47mnv (58:103)
                                        margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 2*fem, 0*fem),
                                        width: double.infinity,
                                        height: 34*fem,
                                        decoration: BoxDecoration (
                                          color: Color(0xff3584ff),
                                          borderRadius: BorderRadius.circular(3*fem),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Berikan Pendanaan',
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
                                // risikopendanaaneLv (63:204)
                                left: 18*fem,
                                top: 494*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 109*fem,
                                    height: 18*fem,
                                    child: Text(
                                      'Risiko Pendanaan',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // loremipsumdolorsitametconsecte (63:220)
                                left: 18*fem,
                                top: 521*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 374*fem,
                                    height: 99*fem,
                                    child: Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam rutrum quis nisi quis feugiat. Pellentesque ex tellus, faucibus et dui eu, molestie blandit mi. In neque mauris, volutpat ut magna at, fringilla vehicula lorem. Vestibulum pharetra enim metus, vitae accumsan tellus consequat at. Quisque eu risus leo. Nam neque arcu, suscipit sit amet tortor sed, blandit ullamcorper dolor.',
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 11*ffem,
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
                        Container(
                          // notifikasifvE (63:532)
                          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 395*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // group27nzr (63:534)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                                padding: EdgeInsets.fromLTRB(17*fem, 13*fem, 284*fem, 12*fem),
                                width: double.infinity,
                                decoration: BoxDecoration (
                                  color: Color(0xff3584ff),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      // notifikasi5yx (63:536)
                                      'Notifikasi',
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
                                // bersihkannotifikasiE6A (63:541)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 8*fem),
                                child: Text(
                                  'Bersihkan Notifikasi',
                                  style: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5*ffem/fem,
                                    color: Color(0xff727272),
                                  ),
                                ),
                              ),
                              Container(
                                // autogrouphzvrjYi (3wAub677PM9C9oXiLchZVR)
                                padding: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 92*fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // line13G2r (63:542)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                      width: double.infinity,
                                      height: 1*fem,
                                      decoration: BoxDecoration (
                                        color: Color(0xffbcbcbc),
                                      ),
                                    ),
                                    Container(
                                      // suksesmendanaiandaberhasilmend (63:538)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 4*fem),
                                      constraints: BoxConstraints (
                                        maxWidth: 372*fem,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: 'Sukses Mendanai\n',
                                            ),
                                            TextSpan(
                                              text: 'Anda berhasil mendanai untuk mitra No P1123933020 sebesar Rp 1.000.000, imbal hasil yang akan anda terima sebesar 100.000.\n',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 10*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                            TextSpan(
                                              text: '\n05 April 2023 14:00',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 8*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff727272),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // line14GU6 (63:543)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                      width: double.infinity,
                                      height: 1*fem,
                                      decoration: BoxDecoration (
                                        color: Color(0xffbcbcbc),
                                      ),
                                    ),
                                    Container(
                                      // imbalhasildanadanimbalhasildar (63:539)
                                      margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 5*fem),
                                      constraints: BoxConstraints (
                                        maxWidth: 382*fem,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          style: SafeGoogleFont (
                                            'Poppins',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: 'Imbal Hasil\n',
                                            ),
                                            TextSpan(
                                              text: 'Dana dan Imbal Hasil dari mitra No P1123933020 telah ditambahkan ke saldo anda sebesar Rp 110.000.\n',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 10*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                            TextSpan(
                                              text: '\n05 April 2023 14:00',
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 8*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff727272),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // line15ski (63:544)
                                      width: double.infinity,
                                      height: 1*fem,
                                      decoration: BoxDecoration (
                                        color: Color(0xffbcbcbc),
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
          );
  }
}