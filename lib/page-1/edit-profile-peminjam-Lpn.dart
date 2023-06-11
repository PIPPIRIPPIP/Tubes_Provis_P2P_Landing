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
        // editprofilepeminjamBVx (322:78)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupz43xhz6 (SiJhM3WBq2rYGNTF3Ez43x)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
              width: double.infinity,
              height: 192*fem,
              child: Stack(
                children: [
                  Positioned(
                    // group27qaW (322:79)
                    left: 0*fem,
                    top: 0*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(17*fem, 19*fem, 169.5*fem, 19*fem),
                      width: 414*fem,
                      height: 132*fem,
                      decoration: BoxDecoration (
                        color: Color(0xff3584ff),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // editprofile8Ji (322:81)
                            'Edit Profile',
                            textAlign: TextAlign.center,
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
                    // c930b442dc8d9c331ca823962709b4 (322:83)
                    left: 148*fem,
                    top: 72*fem,
                    child: Align(
                      child: SizedBox(
                        width: 120*fem,
                        height: 120*fem,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100*fem),
                          child: Image.asset(
                            'assets/page-1/images/c930b442dc8d9c331ca823962709b4b-1-VL2.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // uploadfotoLva (322:108)
              margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 25*fem),
              child: Text(
                'Upload Foto',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'Poppins',
                  fontSize: 14*ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.5*ffem/fem,
                  decoration: TextDecoration.underline,
                  color: Color(0xff000000),
                  decorationColor: Color(0xff000000),
                ),
              ),
            ),
            Container(
              // namaeRU (322:88)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 306*fem, 0*fem),
              child: Text(
                'Nama',
                style: SafeGoogleFont (
                  'Poppins',
                  fontSize: 14*ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.5*ffem/fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              // autogrouptrhp9d8 (SiJhj2sYkBGkuN1NktTRHp)
              padding: EdgeInsets.fromLTRB(31*fem, 9*fem, 31*fem, 11*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // group26EuU (322:85)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 20*fem),
                    padding: EdgeInsets.fromLTRB(20*fem, 11*fem, 20*fem, 11*fem),
                    width: 351*fem,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffbcbcbc)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(3*fem),
                    ),
                    child: Text(
                      'AYESHA ALI FIRDAUS',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // emailV4i (322:104)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 9*fem),
                    child: Text(
                      'Email',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // group28znA (322:101)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 23*fem),
                    padding: EdgeInsets.fromLTRB(20*fem, 11*fem, 20*fem, 11*fem),
                    width: 351*fem,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffbcbcbc)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(3*fem),
                    ),
                    child: Text(
                      'ayeshaali@example.com',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // nomorteleponFi6 (322:92)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 9*fem),
                    child: Text(
                      'Nomor Telepon',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // group29xcW (322:89)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 27*fem),
                    padding: EdgeInsets.fromLTRB(20*fem, 11*fem, 20*fem, 11*fem),
                    width: 351*fem,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffbcbcbc)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(3*fem),
                    ),
                    child: Text(
                      '+6281234567890',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // niknpwppPp (322:96)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 9*fem),
                    child: Text(
                      'NIK / NPWP',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // group31vhk (322:93)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 29*fem),
                    padding: EdgeInsets.fromLTRB(20*fem, 11*fem, 20*fem, 11*fem),
                    width: 351*fem,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffbcbcbc)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(3*fem),
                    ),
                    child: Text(
                      '3204122887670003',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // passwordBta (322:100)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 9*fem),
                    child: Text(
                      'Password',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // group30upa (322:97)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 27*fem),
                    padding: EdgeInsets.fromLTRB(20*fem, 11*fem, 20*fem, 11*fem),
                    width: 351*fem,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffbcbcbc)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(3*fem),
                    ),
                    child: Text(
                      'pass123',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // jenisusahaMwU (322:113)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                    child: Text(
                      'Jenis Usaha',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // group32fxA (322:110)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 27*fem),
                    padding: EdgeInsets.fromLTRB(20*fem, 11*fem, 23*fem, 11*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffbcbcbc)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(3*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // kulinerMa6 (322:112)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 260*fem, 0*fem),
                          child: Text(
                            'Kuliner',
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
                    // provinsiusaha5FC (322:125)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                    child: Text(
                      'Provinsi Usaha',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // group35bUS (322:122)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 27*fem),
                    padding: EdgeInsets.fromLTRB(20*fem, 11*fem, 23*fem, 11*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffbcbcbc)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(3*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // jawabarat6AJ (322:124)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 228*fem, 0*fem),
                          child: Text(
                            'Jawa Barat',
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
                    // kotausahaCj8 (322:117)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 9*fem),
                    child: Text(
                      'Kota Usaha',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // group33vf8 (322:114)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 27*fem),
                    padding: EdgeInsets.fromLTRB(20*fem, 11*fem, 24*fem, 11*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffbcbcbc)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(3*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // bandungoyp (322:116)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 243*fem, 0*fem),
                          child: Text(
                            'Bandung',
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
                    // pendapatanpertahun926 (322:121)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 9*fem),
                    child: Text(
                      'Pendapatan Pertahun',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // group34rBQ (322:118)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 50*fem),
                    padding: EdgeInsets.fromLTRB(20*fem, 11*fem, 20*fem, 11*fem),
                    width: 351*fem,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xffbcbcbc)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(3*fem),
                    ),
                    child: Text(
                      '100.000.000',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // group1uQa (322:105)
                    margin: EdgeInsets.fromLTRB(44*fem, 0*fem, 42*fem, 27*fem),
                    width: double.infinity,
                    height: 37*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff3584ff),
                      borderRadius: BorderRadius.circular(20*fem),
                    ),
                    child: Center(
                      child: Text(
                        'Update',
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
                  Container(
                    // version10B7C (322:84)
                    margin: EdgeInsets.fromLTRB(146*fem, 0*fem, 0*fem, 0*fem),
                    child: Text(
                      'version 1.0',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 12*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5*ffem/fem,
                        color: Color(0xff8e8c8c),
                      ),
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