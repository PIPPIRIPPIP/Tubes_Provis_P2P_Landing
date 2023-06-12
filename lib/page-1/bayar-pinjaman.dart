import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/user_model.dart';
import 'package:myapp/utils.dart';

//BAYAR TAGIHAN

class BayarTagihan extends StatefulWidget {
  @override
  PageBayar createState() => PageBayar();
}

class PageBayar extends State<BayarTagihan> {

  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // bayarpinjamanKc7 (444:86)
          //padding:  EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
          width:  double.infinity,
          decoration:  BoxDecoration (
            color:  Color(0xffffffff),
          ),
          child:  
            Column(
              crossAxisAlignment:  CrossAxisAlignment.center,
              children:  [
                Container(
                  // group27zTM (444:104)
                  padding:  EdgeInsets.fromLTRB(17*fem, 13*fem, 174*fem, 12*fem),
                  width:  double.infinity,
                  decoration:  BoxDecoration (
                    color:  Color(0xff3584ff),
                  ),
                  child: Row(
                    crossAxisAlignment:  CrossAxisAlignment.center,
                    children:  [
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
                        'Bayar Tagihan Pinjaman',
                        style:  SafeGoogleFont (
                          'Poppins',
                          fontSize:  14*ffem,
                          fontWeight:  FontWeight.w600,
                          height:  1.5*ffem/fem,
                          color:  Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:  EdgeInsets.fromLTRB(1*fem, 29*fem, 0*fem, 0*fem),
                  width:  double.infinity,
                  child:  Column(
                    crossAxisAlignment:  CrossAxisAlignment.center,
                    children:  [
                      Container(
                        margin:  EdgeInsets.fromLTRB(18*fem, 0*fem, 19*fem, 21*fem),
                        padding:  EdgeInsets.fromLTRB(16*fem, 14*fem, 14*fem, 17*fem),
                        width:  double.infinity,
                        decoration:  BoxDecoration (
                          borderRadius:  BorderRadius.circular(15*fem),
                          gradient:  LinearGradient (
                            begin:  Alignment(0, -1),
                            end:  Alignment(0, 1),
                            colors:  <Color>[Color(0xffeeeeee), Color(0xff064671), Color(0xff3282b8)],
                            stops:  <double>[0, 0, 1],
                          ),
                        ),
                      child: Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children:  [
                          Container(
                            // autogroup3sqwg7D (Rftd6TkFkbHFMzvmCh3sQw)
                            margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 238*fem, 10*fem),
                            width:  double.infinity,
                            child: Row(
                              crossAxisAlignment:  CrossAxisAlignment.center,
                              children:  [
                                Container(
                                  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                                  child: Text(
                                    'No',
                                    style:  SafeGoogleFont (
                                      'Poppins',
                                      fontSize:  12*ffem,
                                      fontWeight:  FontWeight.w600,
                                      height:  1.5*ffem/fem,
                                      color:  Color(0xffffb036),
                                    ),
                                  ),
                                ),
                                Text(
                                  // p20072312345Y9R (444:166)
                                  'P20072312345',
                                  style:  SafeGoogleFont (
                                    'Poppins',
                                    fontSize:  12*ffem,
                                    fontWeight:  FontWeight.w400,
                                    height:  1.5*ffem/fem,
                                    color:  Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // line13U35 (444:167)
                            margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                            width:  double.infinity,
                            height:  1*fem,
                            decoration:  BoxDecoration (
                              color:  Color(0xfffff2f2),
                            ),
                          ),
                          Container(
                            // autogroupwci7cQB (RftdCnu3KU38TNmZN3WCi7)
                            margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 45*fem, 3*fem),
                            width:  double.infinity,
                            child:  Row(
                              crossAxisAlignment:  CrossAxisAlignment.center,
                              children:  [
                                Container(
                                  // sisatagihan8dR (444:168)
                                  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 137*fem, 0*fem),
                                  child: Text(
                                    'Sisa Tagihan',
                                    style:  SafeGoogleFont (
                                      'Poppins',
                                      fontSize:  12*ffem,
                                      fontWeight:  FontWeight.w600,
                                      height:  1.5*ffem/fem,
                                      color:  Color(0xffffb036),
                                    ),
                                  ),
                                ),
                                Text(
                                  // totaltagihanGjd (448:186)
                                  'Total Tagihan',
                                  style:  SafeGoogleFont (
                                    'Poppins',
                                    fontSize:  12*ffem,
                                    fontWeight:  FontWeight.w600,
                                    height:  1.5*ffem/fem,
                                    color:  Color(0xffffb036),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupqji3ojZ (RftdJxPSKRZeMvihgJqji3)
                            margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                            child: Row(
                              crossAxisAlignment:  CrossAxisAlignment.center,
                              children:  [
                                Container(
                                  // rpMWB (444:170)
                                  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
                                  child: Text(
                                    'Rp',
                                    style:  SafeGoogleFont (
                                      'Poppins',
                                      fontSize:  16*ffem,
                                      fontWeight:  FontWeight.w600,
                                      height:  1.5*ffem/fem,
                                      color:  Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // 4fV (444:169)
                                  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 104*fem, 0*fem),
                                  child: Text(
                                    '5.500.000',
                                    style:  SafeGoogleFont (
                                      'Poppins',
                                      fontSize:  16*ffem,
                                      fontWeight:  FontWeight.w600,
                                      height:  1.5*ffem/fem,
                                      color:  Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // rpnLb (448:188)
                                  margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
                                  child:  
                                  Text(
                                    'Rp',
                                    style:  SafeGoogleFont (
                                      'Poppins',
                                      fontSize:  16*ffem,
                                      fontWeight:  FontWeight.w600,
                                      height:  1.5*ffem/fem,
                                      color:  Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Text(
                                  // 6cB (448:187)
                                  '11.000.000',
                                  style:  SafeGoogleFont (
                                    'Poppins',
                                    fontSize:  16*ffem,
                                    fontWeight:  FontWeight.w600,
                                    height:  1.5*ffem/fem,
                                    color:  Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // line14rbM (445:182)
                            margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                            width:  double.infinity,
                            height:  1*fem,
                            decoration:  BoxDecoration (
                              color:  Color(0xfffff2f2),
                            ),
                          ),
                          Container(
                            // deadlinepembayaranCv7 (445:179)
                            margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                            child:  
                            Text(
                              'Deadline Pembayaran',
                              style:  SafeGoogleFont (
                                'Poppins',
                                fontSize:  12*ffem,
                                fontWeight:  FontWeight.w600,
                                height:  1.5*ffem/fem,
                                color:  Color(0xffffb036),
                              ),
                            ),
                          ),
                          Text(
                            // bulanYUB (445:180)
                            '1 Bulan',
                            style:  SafeGoogleFont (
                              'Poppins',
                              fontSize:  16*ffem,
                              fontWeight:  FontWeight.w600,
                              height:  1.5*ffem/fem,
                              color:  Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:  EdgeInsets.fromLTRB(18*fem, 0*fem, 19*fem, 60*fem),
                      padding:  EdgeInsets.fromLTRB(18*fem, 24*fem, 32*fem, 25*fem),
                      width:  double.infinity,
                      decoration:  BoxDecoration (
                        borderRadius:  BorderRadius.circular(15*fem),
                        gradient:  LinearGradient (
                          begin:  Alignment(0, -1),
                          end:  Alignment(0, 1),
                          colors:  <Color>[Color(0xffbbe1fa), Color(0xff3282b8), Color(0xff3282b8)],
                          stops:  <double>[0, 0, 1],
                        ),
                      ),
                      child:  
                      Row(
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        children:  [
                          Container(
                            // saldotersediaNi7 (448:194)
                            margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 120*fem, 0*fem),
                            child:  
                            Text(
                              'Saldo tersedia :',
                              style:  SafeGoogleFont (
                                'Poppins',
                                fontSize:  12*ffem,
                                fontWeight:  FontWeight.w600,
                                height:  1.5*ffem/fem,
                                color:  Color(0xffffb036),
                              ),
                            ),
                          ),
                          Container(
                            margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
                            child:  
                            Text(
                              'Rp',
                              style:  SafeGoogleFont (
                                'Poppins',
                                fontSize:  16*ffem,
                                fontWeight:  FontWeight.w600,
                                height:  1.5*ffem/fem,
                                color:  Color(0xffffffff),
                              ),
                            ),
                          ),
                          Text(
                            // pa7 (448:195)
                            '5.500.000',
                            style:  SafeGoogleFont (
                              'Poppins',
                              fontSize:  16*ffem,
                              fontWeight:  FontWeight.w600,
                              height:  1.5*ffem/fem,
                              color:  Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupuxukwPq (Rftdvgru4HVVu3FAijUxUK)
                      padding:  EdgeInsets.fromLTRB(32*fem, 49*fem, 33*fem, 39*fem),
                      width:  double.infinity,
                      decoration:  BoxDecoration (
                        gradient:  LinearGradient (
                          begin:  Alignment(-0, -1),
                          end:  Alignment(0, -1),
                          colors:  <Color>[Color(0xff064671), Color(0xff3282b8)],
                          stops:  <double>[0, 1],
                        ),
                        borderRadius:  BorderRadius.only (
                          topLeft:  Radius.circular(20*fem),
                          topRight:  Radius.circular(20*fem),
                        ),
                        boxShadow:  [
                          BoxShadow(
                            color:  Color(0x3f000000),
                            offset:  Offset(0*fem, 4*fem),
                            blurRadius:  2*fem,
                          ),
                        ],
                      ),
                      child:  
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        children:  [
                          Container(
                            // masukkanjumlahrpybR (444:109)
                            margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 181*fem, 11*fem),
                            child:  
                            Text(
                              'Masukkan Jumlah (Rp)',
                              style:  SafeGoogleFont (
                                'Poppins',
                                fontSize:  14*ffem,
                                fontWeight:  FontWeight.w600,
                                height:  1.5*ffem/fem,
                                color:  Color(0xffffb036),
                              ),
                            ),
                          ),
                          Container(
                            // autogroup5gqkH6K (Rfte3w9pkD1tWxV4355gQK)
                            margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                            padding:  EdgeInsets.fromLTRB(14*fem, 7*fem, 14*fem, 7*fem),
                            width:  double.infinity,
                            decoration:  BoxDecoration (
                              border:  Border.all(color: Color(0xffbcbcbc)),
                              color:  Color(0xffffffff),
                              borderRadius:  BorderRadius.circular(10*fem),
                            ),
                            child:  
                            Text(
                              'Rp. 50.000',
                              style:  SafeGoogleFont (
                                'Poppins',
                                fontSize:  24*ffem,
                                fontWeight:  FontWeight.w400,
                                height:  1.5*ffem/fem,
                                color:  Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            // saldoandaakanterpotongpastikan (448:189)
                            margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 30*fem),
                            child:  
                            Text(
                              '*Saldo anda akan terpotong, pastikan saldo mencukupi',
                              style:  SafeGoogleFont (
                                'Poppins',
                                fontSize:  11*ffem,
                                fontWeight:  FontWeight.w500,
                                height:  1.5*ffem/fem,
                                color:  Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            // group473zb (445:176)
                            margin:  EdgeInsets.fromLTRB(30*fem, 0*fem, 30*fem, 0*fem),
                            width:  double.infinity,
                            height:  34*fem,
                            decoration:  BoxDecoration (
                              color:  Color(0xffffb036),
                              borderRadius:  BorderRadius.circular(15*fem),
                            ),
                            child:  
                            Center(
                              child:  
                              Text(
                                'Bayar Tagihan',
                                textAlign:  TextAlign.center,
                                style:  SafeGoogleFont (
                                  'Poppins',
                                  fontSize:  15*ffem,
                                  fontWeight:  FontWeight.w600,
                                  height:  1.5*ffem/fem,
                                  color:  Color(0xffffffff),
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
      ),
    );
  }
}
