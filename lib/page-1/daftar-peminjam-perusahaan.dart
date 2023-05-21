import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import 'daftar-peminjam-perorangan.dart';
import 'package:myapp/ui/pages/login_ex.dart';

class DaftarPerusahaan extends StatefulWidget {
  @override
  DaftarPerusahaanPage createState() => DaftarPerusahaanPage();
}

class DaftarPerusahaanPage extends State<DaftarPerusahaan> {
  String nama = "";
  String email = "";
  String telp = "";
  String npwp = "";
  String password = "";
  int pendapatan = 0;
  final inputnama = TextEditingController();
  final inputemail = TextEditingController();
  final inputtelp = TextEditingController();
  final inputnpwp = TextEditingController();
  final inputpassword = TextEditingController();
  final inputpendapatan = TextEditingController();
  String pilihanProv = "Jawa";
  String pilihanKota = "Jakarta";
  String pilihanUsaha = "Kuliner";
  bool isAgreed = false;

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
            // daftarpeminjamperorangan9d8 (3:83)
            padding:
                EdgeInsets.fromLTRB(23 * fem, 26 * fem, 24 * fem, 31 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // moneylogodesignstemplatevector (7:193)
                  margin:
                      EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 20 * fem),
                  width: 224 * fem,
                  height: 76 * fem,
                  child: Image.asset(
                    '/images/Logo-Investa.png',
                  ),
                ),
                Container(
                  // bantukamimengenalbisnisanda7yG (4:186)
                  margin:
                      EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 8 * fem),
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
                  margin:
                      EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 32 * fem),
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
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 14 * fem),
                  width: double.infinity,
                  height: 1 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xffbcbcbc),
                  ),
                ),
                Container(
                  // kategoribisnisebp (4:158)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // kategoribisnisPJW (3:131)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 8 * fem),
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
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DaftarPerorangan()));
                              },
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
                                                  BorderRadius.circular(
                                                      7 * fem),
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
                  // NAMA
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // BUAT NAMA (TITLE)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 7 * fem),
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
                        // BUAT NAMA (BOX FORM)
                        padding: EdgeInsets.fromLTRB(
                            17 * fem, 6 * fem, 17 * fem, 6 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffbcbcbc)),
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(7 * fem),
                        ),
                        child: TextField(
                          controller: inputnama,
                          onChanged: (text) {
                            setState(() {
                              nama = text;
                            });
                          },
                          decoration: InputDecoration(
                              hintText: 'contoh: PT.Jaya Abadi',
                              border: InputBorder.none,
                              hintStyle: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff727272),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // EMAIL
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // BUAT EMAIL (TITLE)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 7 * fem),
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
                        // BUAT EMAIL (BOX FORM)
                        padding: EdgeInsets.fromLTRB(
                            17 * fem, 6 * fem, 17 * fem, 6 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffbcbcbc)),
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(7 * fem),
                        ),
                        child: TextField(
                          controller: inputemail,
                          onChanged: (text) {
                            setState(() {
                              email = text;
                            });
                          },
                          decoration: InputDecoration(
                              hintText: 'contoh@gmail.com',
                              border: InputBorder.none,
                              hintStyle: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff727272),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // NO TELEPON
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // BUAT TELP (TITLE)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 7 * fem),
                        child: Text(
                          'Nomor Telepon Perusahaan',
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
                        // BUAT TELP (BOX FORM)
                        padding: EdgeInsets.fromLTRB(
                            17 * fem, 6 * fem, 17 * fem, 6 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffbcbcbc)),
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(7 * fem),
                        ),
                        child: TextField(
                          controller: inputtelp,
                          onChanged: (text) {
                            setState(() {
                              telp = text;
                            });
                          },
                          decoration: InputDecoration(
                              hintText: '021-888-999',
                              border: InputBorder.none,
                              hintStyle: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff727272),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // npwp
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // BUAT npwp (TITLE)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 7 * fem),
                        child: Text(
                          'NPWP',
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
                        // BUAT NAMA (BOX FORM)
                        padding: EdgeInsets.fromLTRB(
                            17 * fem, 6 * fem, 17 * fem, 6 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffbcbcbc)),
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(7 * fem),
                        ),
                        child: TextField(
                          controller: inputnpwp,
                          onChanged: (text) {
                            setState(() {
                              npwp = text;
                            });
                          },
                          decoration: InputDecoration(
                              hintText: '11668893390',
                              border: InputBorder.none,
                              hintStyle: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff727272),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),

                //=====================DROPDOWN=========================
                Container(
                  //PROVINSI
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // TITLE
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 7 * fem),
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
                          // DROPDOWN
                          padding: EdgeInsets.fromLTRB(
                              17 * fem, 10 * fem, 26 * fem, 10 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffbcbcbc)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(7 * fem),
                          ),
                          child: DropdownButton<String>(
                            value: pilihanProv,
                            items: <String>['Jawa', 'Sumatera', 'Sulawesi']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                pilihanProv = newValue!;
                              });
                            },
                          )),
                    ],
                  ),
                ),
                Container(
                  // KOTA
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // TITLE
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 7 * fem),
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
                          // DROPDOWN
                          padding: EdgeInsets.fromLTRB(
                              17 * fem, 10 * fem, 26 * fem, 10 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffbcbcbc)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(7 * fem),
                          ),
                          child: DropdownButton<String>(
                            value: pilihanKota,
                            items: <String>['Jakarta', 'Bandung', 'Bekasi']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                pilihanKota = newValue!;
                              });
                            },
                          )),
                    ],
                  ),
                ),
                Container(
                  // JENIS USAHA
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // TITLE
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 7 * fem),
                        child: Text(
                          'Jenis Usaha',
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
                          // DROPDOWN
                          padding: EdgeInsets.fromLTRB(
                              17 * fem, 10 * fem, 26 * fem, 10 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffbcbcbc)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(7 * fem),
                          ),
                          child: DropdownButton<String>(
                            value: pilihanUsaha,
                            items: <String>['Kuliner', 'Fashion', 'Jasa']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                pilihanUsaha = newValue!;
                              });
                            },
                          )),
                    ],
                  ),
                ),
                Container(
                  // PENDAPATAN PER TAHUN
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // BUAT PENDAPATAN (TITLE)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 7 * fem),
                        child: Text(
                          'Pendapatan per tahun (Rp)',
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
                        // BUAT NAMA (BOX FORM)
                        padding: EdgeInsets.fromLTRB(
                            17 * fem, 6 * fem, 17 * fem, 6 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffbcbcbc)),
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(7 * fem),
                        ),
                        child: TextField(
                          controller: inputpendapatan,
                          onChanged: (text) {
                            setState(() {
                              pendapatan = int.tryParse(text) ?? 0;
                            });
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: '100.000.000',
                              border: InputBorder.none,
                              hintStyle: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff727272),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // Password
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // BUAT password (TITLE)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 7 * fem),
                        child: Text(
                          'Kata Sandi',
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
                        // BUAT NAMA (BOX FORM)
                        padding: EdgeInsets.fromLTRB(
                            17 * fem, 6 * fem, 17 * fem, 6 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffbcbcbc)),
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(7 * fem),
                        ),
                        child: TextField(
                          controller: inputpassword,
                          onChanged: (text) {
                            setState(() {
                              password = text;
                            });
                          },
                          decoration: InputDecoration(
                              hintText: 'password',
                              border: InputBorder.none,
                              hintStyle: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff727272),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // PERSETUJUAN
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 27 * fem, 21 * fem),
                  width: double.infinity,
                  height: 30 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        //checkbox
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 2 * fem, 9 * fem, 3 * fem),
                        padding: EdgeInsets.fromLTRB(
                            1.25 * fem, 1.88 * fem, 1.88 * fem, 1.25 * fem),
                        height: double.infinity,
                        child: Center(
                          child: SizedBox(
                            width: 21.88 * fem,
                            height: 21.88 * fem,
                            child: Checkbox(
                              value: isAgreed,
                              onChanged: (value) {
                                setState(() {
                                  isAgreed = value ?? false;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // Teks
                        constraints: BoxConstraints(
                          maxWidth: 300 * fem,
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
                //BUTTON LANJUTKAN
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 21 * fem),
                  width: double.infinity,
                  height: 37 * fem,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3 * fem),
                  ),
                  child: ElevatedButton(
                    onPressed: isAgreed
                        ? () {
                            setState(() {
                              email = inputemail.text;
                            });
                          }
                        : null,
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 54, 133, 255),
                      //fixedSize: Size(250, 40),
                    ),
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
                  margin: EdgeInsets.fromLTRB(
                      106 * fem, 0 * fem, 106 * fem, 0 * fem),
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
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => LoginPage()));
                              },
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
        ),
      ),
    );
  }
}
