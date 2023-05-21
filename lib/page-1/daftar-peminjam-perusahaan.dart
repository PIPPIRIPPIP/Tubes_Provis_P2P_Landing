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
        // daftarpeminjamperusahaanGQe (7:194)
        padding: EdgeInsets.fromLTRB(23 * fem, 26 * fem, 24 * fem, 30 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // logo8Sr (7:257)
              margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 20 * fem),
              width: 224 * fem,
              height: 76 * fem,
              child: Image.asset(
                'assets/page-1/images/logo.png',
              ),
            ),
            Container(
              // bantukamimengenalbisnisandaeRC (7:255)
              margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 8 * fem),
              child: Text(
                'Bantu Kami Mengenal Bisnis Anda',
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
              // haraplengkapiformdibawahiniYFg (7:256)
              margin: EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 32 * fem),
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
              // line3e3p (7:254)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 14 * fem),
              width: double.infinity,
              height: 1 * fem,
              decoration: BoxDecoration(
                color: Color(0xffbcbcbc),
              ),
            ),
            Container(
              // kategoribisnisnA2 (7:195)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // kategoribisnisJu4 (7:206)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
                    width: double.infinity,
                    child: Text(
                      'Kategori Bisnis',
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
                    // autogroup1t19RTt (3w9gRYrHyQ1nw3AKS41T19)
                    width: double.infinity,
                    height: 46 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // perusahaanYHc (7:201)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 29 * fem, 0 * fem),
                          width: 169 * fem,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                // perusahaanGUW (7:202)
                                left: 66 * fem,
                                top: 11 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 97 * fem,
                                    height: 24 * fem,
                                    child: Text(
                                      'Perusahaan',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff3584ff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rectangle26N1k (7:203)
                                left: 0 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 169 * fem,
                                    height: 46 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(7 * fem),
                                        border: Border.all(
                                            color: Color(0xff3584ff)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // line1H8i (7:204)
                                left: 56.5 * fem,
                                top: 6.9921875 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 1 * fem,
                                    height: 32.02 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xff3584ff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // buildingbfC (3:112)
                                left: 11 * fem,
                                top: 5 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 33 * fem,
                                    height: 35 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/building.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          // perorangan7dY (7:196)
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 169 * fem,
                            height: double.infinity,
                            child: Stack(
                              children: [
                                Positioned(
                                  // perorangandbt (7:197)
                                  left: 66 * fem,
                                  top: 11 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 95 * fem,
                                      height: 24 * fem,
                                      child: Text(
                                        'Perorangan',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xffbcbcbc),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // rectangle26vL6 (7:199)
                                  left: 0 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 169 * fem,
                                      height: 46 * fem,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7 * fem),
                                          border: Border.all(
                                              color: Color(0xffbcbcbc)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // line12P8 (7:200)
                                  left: 56.5 * fem,
                                  top: 6.9921875 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 1 * fem,
                                      height: 32.02 * fem,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffbcbcbc),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // person219Cr (7:258)
                                  left: 12 * fem,
                                  top: 6 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 35 * fem,
                                      height: 33.1 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/person2-1.png',
                                        fit: BoxFit.cover,
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
                ],
              ),
            ),
            Container(
              // namas8r (7:207)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7 * fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // namaperusahaanzzA (7:210)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7 * fem),
                    child: Text(
                      'Nama Perusahaan',
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
                    // autogroupc2ymiQN (3w9gmhwNeStzWwvGqjC2yM)
                    padding: EdgeInsets.fromLTRB(
                        17 * fem, 12 * fem, 17 * fem, 11 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffbcbcbc)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(7 * fem),
                    ),
                    child: Text(
                      'Nama Perusahaan',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 12 * ffem,
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
              // emailNzi (7:239)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7 * fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // emailJtN (7:242)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7 * fem),
                    child: Text(
                      'Email',
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
                    // autogroupeaqxSUn (3w9hqbKvVQ1CMhGBm1EaQX)
                    padding: EdgeInsets.fromLTRB(
                        17 * fem, 12 * fem, 17 * fem, 11 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffbcbcbc)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(7 * fem),
                    ),
                    child: Text(
                      'contoh@gmail.com',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 12 * ffem,
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
              // nohpWjY (7:211)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7 * fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // nomorponsel3Dg (7:214)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7 * fem),
                    child: Text(
                      'Nomor Ponsel',
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
                    // autogroupcmr9voG (3w9gt7vMVnGZCjhtvdCmR9)
                    padding: EdgeInsets.fromLTRB(
                        17 * fem, 12 * fem, 17 * fem, 11 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffbcbcbc)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(7 * fem),
                    ),
                    child: Text(
                      '+6281234567890',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 12 * ffem,
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
              // nikocA (7:215)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 16 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7 * fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // nomornpwpY3x (7:218)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7 * fem),
                    child: Text(
                      'Nomor NPWP',
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
                    // autogroupf6ikTAv (3w9gzT594f2SJ7Yh5yf6iK)
                    padding: EdgeInsets.fromLTRB(
                        17 * fem, 12 * fem, 17 * fem, 11 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffbcbcbc)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(7 * fem),
                    ),
                    child: Text(
                      '1234567890',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 12 * ffem,
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
              // provinsijeE (7:224)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // provinsiperusahaanG8N (7:227)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7 * fem),
                    child: Text(
                      'Provinsi Perusahaan',
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
                    // autogroupvthhNx6 (3w9hNrbUQ6X4uApxRLvThH)
                    padding: EdgeInsets.fromLTRB(
                        17 * fem, 12 * fem, 26 * fem, 11 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffbcbcbc)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(7 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // pilihprovinsit9k (7:226)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 235 * fem, 0 * fem),
                          child: Text(
                            'Pilih Provinsi',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff727272),
                            ),
                          ),
                        ),
                        Container(
                          width: 15 * fem,
                          height: 15 * fem,
                          child: Image.asset(
                            'assets/page-1/images/chevronleft-5jL.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // provinsizyU (7:229)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // kotaperusahaanjw4 (7:232)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7 * fem),
                    child: Text(
                      'Kota Perusahaan',
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
                    // autogroup3zvrGRC (3w9hYGVTTx3CwpeKjq3ZVR)
                    padding: EdgeInsets.fromLTRB(
                        17 * fem, 12 * fem, 26 * fem, 11 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffbcbcbc)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(7 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // pilihkotayqQ (7:231)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 253 * fem, 0 * fem),
                          child: Text(
                            'Pilih Kota',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff727272),
                            ),
                          ),
                        ),
                        Container(
                          width: 15 * fem,
                          height: 15 * fem,
                          child: Image.asset(
                            'assets/page-1/images/chevronleft-5jL.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // provinsigjp (7:234)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // pilihjenisusahapb8 (7:237)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7 * fem),
                    child: Text(
                      'Pilih Jenis Usaha',
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
                    // autogroupvtqhjxz (3w9hhRtrgRiJDEdDHgVTqh)
                    padding: EdgeInsets.fromLTRB(
                        17 * fem, 12 * fem, 26 * fem, 11 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffbcbcbc)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(7 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // pilihjenisusahatUW (7:236)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 209 * fem, 0 * fem),
                          child: Text(
                            'Pilih Jenis Usaha',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff727272),
                            ),
                          ),
                        ),
                        Container(
                          width: 15 * fem,
                          height: 15 * fem,
                          child: Image.asset(
                            'assets/page-1/images/chevronleft-5jL.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // pendapatanPAN (7:219)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 21 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7 * fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // pendapatanpertahunJHL (7:223)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7 * fem),
                    child: Text(
                      'Pendapatan Pertahun',
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
                    // autogroup714bDQJ (3w9h9cUYH8hXZXXadq714b)
                    padding: EdgeInsets.fromLTRB(
                        9 * fem, 11 * fem, 257 * fem, 10.97 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffbcbcbc)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(7 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // rpi6A (7:222)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0.97 * fem, 6.5 * fem, 0 * fem),
                          child: Text(
                            'Rp',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff3584ff),
                            ),
                          ),
                        ),
                        Container(
                          // line2div (7:243)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 7.5 * fem, 0 * fem),
                          width: 1 * fem,
                          height: 19.03 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffbcbcbc),
                          ),
                        ),
                        Container(
                          // ATx (7:221)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0.97 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            '100.000.000',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff727272),
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
              // persetujuanHHg (7:259)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 27 * fem, 21 * fem),
              width: double.infinity,
              height: 30 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group26nES (7:245)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 2 * fem, 9 * fem, 3 * fem),
                    padding: EdgeInsets.fromLTRB(
                        1.25 * fem, 1.88 * fem, 1.88 * fem, 1.25 * fem),
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff3584ff),
                    ),
                    child: Center(
                      // image6Ud4 (7:247)
                      child: SizedBox(
                        width: 21.88 * fem,
                        height: 21.88 * fem,
                        child: Image.asset(
                          'assets/page-1/images/image-6-Hvv.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // dengankliklanjutkanandatelahme (7:244)
                    constraints: BoxConstraints(
                      maxWidth: 306 * fem,
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
              // group1FGS (7:248)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 21 * fem),
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
              // group25e3g (7:251)
              margin:
                  EdgeInsets.fromLTRB(85 * fem, 0 * fem, 106 * fem, 0 * fem),
              width: double.infinity,
              height: 18 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // sudahpunyaakunloginAXp (7:252)
                    left: 0 * fem,
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
                    // loginqdx (7:253)
                    left: 140 * fem,
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
    );
  }
}
