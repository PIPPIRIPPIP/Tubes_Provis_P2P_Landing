import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:myapp/ui/pages/login.dart';
import 'package:myapp/utils.dart';
import 'package:http/http.dart' as http;

import '../models/models.dart';
import '../services/services.dart';
import '../utils/utils.dart';
import 'daftar-peminjam-perusahaan.dart';

class DaftarPerorangan extends StatefulWidget {
  const DaftarPerorangan({super.key});
  @override
  State<DaftarPerorangan> createState() => DaftarPeroranganPage();
}

class DaftarPeroranganPage extends State<DaftarPerorangan> {
  List<Map<String, dynamic>> provinces = [];
  List<Map<String, dynamic>> cities = [];
  List<String> usaha = [
    "Agen Pulsa",
    "Fashion",
    "Perdagangan",
    "Perhiasan",
    "Kesehatan",
    "Otomotif",
    "Travel",
    "Pertanian",
    "Hiburan"
  ];
  late TextEditingController _inputNama;
  late TextEditingController _inputEmail;
  late TextEditingController _inputTelp;
  late TextEditingController _inputNik;
  late TextEditingController _inputProvinsi;
  late TextEditingController _inputKota;
  late TextEditingController _inputAlamat;
  late TextEditingController _inputJenis;
  late TextEditingController _inputpendapatan;
  late TextEditingController _inputPassword;
  late TextEditingController _inputKonfirmPassword;
  String? pilihanProv;
  String? pilihanKota;
  String? pilihanUsaha;
  bool isAgreed = false;

  /// Trigger this when "Sign Up" button is clicked
  void _signUp() async {
    if (_inputPassword.text != _inputKonfirmPassword.text) {
      Utils.showSnackBar(
          context, 'Password and Confirm-Passord does not match!');
      return;
    }

    int jumlah = int.parse(_inputpendapatan.text.replaceAll('.', ''));

    // NOTE : If signing-up failed, return null
    Peminjam? userAccount = await AuthService.signUpPeminjam(
      context: context,
      email: _inputEmail.text,
      password: _inputPassword.text,
      nama: _inputNama.text,
      nomorPonsel: _inputTelp.text,
      jenisUser: "peminjam",
      alamat: _inputAlamat.text,
      jenis: 'perorangan',
      jenisUsaha: pilihanUsaha.toString(),
      kotaUsaha: pilihanKota.toString(),
      nik: _inputNik.text,
      pendapatan: jumlah,
      provinsiUsaha: pilihanProv.toString(),
    );

    if (userAccount != null) {
      // NOTE : Process, if Sign-Up via API successfully
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    }
  }

  Future<void> fetchProvinces() async {
    var response = await http
        .get(Uri.parse('https://alamat.thecloudalert.com/api/provinsi/get/'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      List<Map<String, dynamic>> provinceList =
          List<Map<String, dynamic>>.from(data['result']);
      setState(() {
        provinces = provinceList;
      });
    } else {
      print('Failed to fetch provinces');
    }
  }

  Future<void> fetchCities(String provinceId) async {
    var response = await http.get(Uri.parse(
        'https://alamat.thecloudalert.com/api/kabkota/get/?d_provinsi_id=$provinceId'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      List<Map<String, dynamic>> cityList =
          List<Map<String, dynamic>>.from(data['result']);
      setState(() {
        cities = cityList;
      });
    } else {
      print('Failed to fetch cities');
    }
  }

  @override
  void initState() {
    super.initState();
    _inputNama = TextEditingController();
    _inputEmail = TextEditingController();
    _inputTelp = TextEditingController();
    _inputNik = TextEditingController();
    _inputProvinsi = TextEditingController();
    _inputKota = TextEditingController();
    _inputAlamat = TextEditingController();
    _inputJenis = TextEditingController();
    _inputpendapatan = TextEditingController();
    _inputPassword = TextEditingController();
    _inputKonfirmPassword = TextEditingController();
    fetchProvinces();
  }

  @override
  void dispose() {
    _inputNama.dispose();
    _inputEmail.dispose();
    _inputTelp.dispose();
    _inputNik.dispose();
    _inputProvinsi.dispose();
    _inputKota.dispose();
    _inputAlamat.dispose();
    _inputJenis.dispose();
    _inputpendapatan.dispose();
    _inputPassword.dispose();
    _inputKonfirmPassword.dispose();
    super.dispose();
  }

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
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DaftarPerusahaan()));
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
                          controller: _inputNama,
                          onChanged: (text) {
                            setState(() {
                              // nama = text;
                            });
                          },
                          decoration: InputDecoration(
                              hintText: 'contoh: Dicki Fathurohman',
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
                          controller: _inputEmail,
                          onChanged: (text) {
                            setState(() {
                              // email = text;
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
                          controller: _inputTelp,
                          onChanged: (text) {
                            setState(() {
                              // telp = text;
                            });
                          },
                          decoration: InputDecoration(
                              hintText: '08123456789',
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
                  // NIK
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // BUAT NIK (TITLE)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 7 * fem),
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
                          controller: _inputNik,
                          onChanged: (text) {
                            setState(() {
                              // nik = text;
                            });
                          },
                          decoration: InputDecoration(
                              hintText: '32041212070509876',
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
                          // DROPDOWN
                          padding: EdgeInsets.fromLTRB(
                              17 * fem, 10 * fem, 26 * fem, 10 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffbcbcbc)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(7 * fem),
                          ),
                          child: DropdownButtonFormField<String>(
                            value: pilihanProv,
                            items:
                                provinces.map((Map<String, dynamic> province) {
                              return DropdownMenuItem<String>(
                                value: province['text'],
                                child: Text(province['text']),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                pilihanProv = newValue!;
                              });
                              fetchCities(getProvinceId(newValue!));
                            },
                            decoration: InputDecoration(
                              labelText: 'Pilih Provinsi',
                            ),
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
                        // DROPDOWN
                        padding: EdgeInsets.fromLTRB(
                            17 * fem, 10 * fem, 26 * fem, 10 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffbcbcbc)),
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(7 * fem),
                        ),
                        child: DropdownButtonFormField<String>(
                          value: pilihanKota,
                          items: cities.map((Map<String, dynamic> city) {
                            return DropdownMenuItem<String>(
                              value: city['text'],
                              child: Text(city['text']),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              pilihanKota = newValue;
                            });
                          },
                          decoration: InputDecoration(
                            labelText: 'Pilih Kota',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // Alamat Lengkap
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // BUAT NIK (TITLE)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 7 * fem),
                        child: Text(
                          'Alamat Lengkap',
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
                          controller: _inputAlamat,
                          onChanged: (text) {
                            setState(() {
                              // nik = text;
                            });
                          },
                          decoration: InputDecoration(
                              hintText: 'Jl.Setia Budi, No.69',
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
                          child: DropdownButtonFormField<String>(
                            value: pilihanUsaha,
                            items: usaha
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
                            decoration: InputDecoration(
                              labelText: 'Pilih Jenis Usaha',
                            ),
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
                            controller: _inputpendapatan,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              TextInputFormatter.withFunction(
                                  (oldValue, newValue) {
                                final parsedValue = int.tryParse(newValue.text);
                                if (parsedValue != null) {
                                  final formatter =
                                      NumberFormat('#,###', 'id_ID');
                                  final newString =
                                      formatter.format(parsedValue);
                                  return TextEditingValue(
                                    text: newString,
                                    selection: TextSelection.collapsed(
                                        offset: newString.length),
                                  );
                                }
                                return newValue;
                              }),
                            ],
                            decoration: InputDecoration(
                              hintText: 'Rp. 100.000.000',
                              border: InputBorder.none,
                              hintStyle: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff727272),
                              ),
                              prefixText: 'Rp. ',
                              prefixStyle: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff727272),
                              ),
                            ),
                          )),
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
                          controller: _inputPassword,
                          onChanged: (text) {
                            setState(() {
                              // password = text;
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
                  // Konfirmasi Password
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
                          'Konfirmasi Kata Sandi',
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
                          controller: _inputKonfirmPassword,
                          onChanged: (text) {
                            setState(() {
                              // password = text;
                            });
                          },
                          decoration: InputDecoration(
                              hintText: 'Confirm Password',
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
                // BUTTON LANJUTKAN
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
                            _signUp();
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()));
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

  String getProvinceId(String provinceName) {
    for (var province in provinces) {
      if (province['text'] == provinceName) {
        return province['id'];
      }
    }
    return '';
  }
}
