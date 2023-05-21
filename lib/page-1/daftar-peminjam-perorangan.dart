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
        // daftarpeminjamperorangan9d8 (3:83)
        padding: EdgeInsets.fromLTRB(23 * fem, 26 * fem, 24 * fem, 31 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // moneylogodesignstemplatevector (7:193)
              margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 20 * fem),
              width: 224 * fem,
              height: 76 * fem,
              child: Image.asset(
                'assets/page-1/images/moneylogodesignstemplatevectorfinancelogodesignsvector1-removebg-preview-2-vkW.png',
              ),
            ),
            Container(
              // bantukamimengenalbisnisanda7yG (4:186)
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
              // haraplengkapiformdibawahini1ok (4:187)
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
              // line3WkW (4:185)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 14 * fem),
              width: double.infinity,
              height: 1 * fem,
              decoration: BoxDecoration(
                color: Color(0xffbcbcbc),
              ),
            ),
            Container(
              // kategoribisnisebp (4:158)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // kategoribisnisPJW (3:131)
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
                    // autogrouptmoduGr (3w9eH2bSjNGEupy4HbtmoD)
                    width: double.infinity,
                    height: 46 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // perusahaanF5p (3:126)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 29 * fem, 0 * fem),
                          child: TextButton(
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
                                    // perusahaanwDY (3:127)
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
                                            color: Color(0xffbcbcbc),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // rectangle26SAJ (3:129)
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
                                    // line1kAz (3:130)
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
                                    // building21Tr6 (3:125)
                                    left: 11 * fem,
                                    top: 5 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 33.15 * fem,
                                        height: 35 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/building2-1.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // peroranganNTG (3:119)
                          width: 169 * fem,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                // peroranganK7c (3:115)
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
                                        color: Color(0xff3584ff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // person1Qer (3:116)
                                left: 10 * fem,
                                top: 6 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 35 * fem,
                                    height: 33 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/person-1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // rectangle26ifY (3:117)
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
                                // line1SLe (3:118)
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
              // namak6S (3:132)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7 * fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // namalengkapsesuaiktpH6N (3:135)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7 * fem),
                    child: Text(
                      'Nama Lengkap Sesuai KTP',
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
                    // autogroupyirsnYv (3w9egbkW3ENRpfUtYayirs)
                    padding: EdgeInsets.fromLTRB(
                        17 * fem, 12 * fem, 17 * fem, 11 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffbcbcbc)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(7 * fem),
                    ),
                    child: Text(
                      'Nama Lengkap Sesuai KTP',
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
              // emailfci (3:136)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7 * fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // emailbWN (3:139)
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
                    // autogroupaxwzX98 (3w9fupCqfaP67ehLroaxwZ)
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
              // nohpben (3:140)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7 * fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // nomorponselvwx (3:143)
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
                    // autogroupfeejEhk (3w9ep6Y1aXjsDpZFdZFeEj)
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
              // nikXB4 (3:144)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7 * fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // nikFcr (3:147)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7 * fem),
                    child: Text(
                      'NIK',
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
                    // autogroupxzcby34 (3w9ewbKX7q7JcydciXXZcb)
                    padding: EdgeInsets.fromLTRB(
                        17 * fem, 12 * fem, 17 * fem, 11 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffbcbcbc)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(7 * fem),
                    ),
                    child: Text(
                      '32014123889060003',
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
              // provinsidtJ (4:149)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // provinsitempatusahamzW (4:152)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7 * fem),
                    child: Text(
                      'Provinsi Tempat Usaha',
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
                    // autogroup5hsdhNN (3w9fMq88hN8xH7i4Ms5hsD)
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
                          // pilihprovinsiQna (4:151)
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
              // provinsij4A (4:159)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // kotatempatusahaTkr (4:162)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7 * fem),
                    child: Text(
                      'Kota Tempat Usaha',
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
                    // autogroupdyzqPPc (3w9fZzSY8MxcuPih9JdyZq)
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
                          // pilihkota6op (4:161)
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
              // provinsiDNe (4:164)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // pilihjenisusahakdU (4:167)
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
                    // autogroupts9rsCJ (3w9fkQJrbirx4zsyYKTs9R)
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
                          // pilihjenisusahaAhC (4:166)
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
              // nikVUa (4:169)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 21 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7 * fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // pendapatanpertahunpmk (4:172)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7 * fem),
                    child: Text(
                      'Pendapatan per Tahun',
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
                    // autogroupd559MFt (3w9f6FjkdZ6JKuwYj7d559)
                    padding: EdgeInsets.fromLTRB(
                        9 * fem, 11 * fem, 247 * fem, 10.97 * fem),
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
                          // rp3uQ (4:173)
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
                          // line2yYA (4:174)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 7.5 * fem, 0 * fem),
                          width: 1 * fem,
                          height: 19.03 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffbcbcbc),
                          ),
                        ),
                        Container(
                          // ugi (4:171)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0.97 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            '1.000.000.000',
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
              // autogroupxlxoziA (3w9dzsPhgLuoojamC3XLxo)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 27 * fem, 21 * fem),
              width: double.infinity,
              height: 30 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group263gS (4:176)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 2 * fem, 9 * fem, 3 * fem),
                    padding: EdgeInsets.fromLTRB(
                        1.25 * fem, 1.88 * fem, 1.88 * fem, 1.25 * fem),
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff3584ff),
                    ),
                    child: Center(
                      // image6X5p (4:178)
                      child: SizedBox(
                        width: 21.88 * fem,
                        height: 21.88 * fem,
                        child: Image.asset(
                          'assets/page-1/images/image-6-jnn.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // dengankliklanjutkanandatelahme (4:175)
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
              // group1iRC (4:179)
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
              // group25A2J (4:182)
              margin:
                  EdgeInsets.fromLTRB(106 * fem, 0 * fem, 106 * fem, 0 * fem),
              width: double.infinity,
              height: 18 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // sudahpunyaakunloginHMp (4:183)
                    left: -17 * fem,
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
                    // loginBCJ (4:184)
                    left: 122.75 * fem,
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
