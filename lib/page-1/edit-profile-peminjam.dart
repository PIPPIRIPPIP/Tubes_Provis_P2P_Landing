import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/models/user_model.dart';
import 'package:myapp/utils.dart';

//Profile peminjam sama umkm disatuin di satu form edit

class EditPeminjam extends StatefulWidget {
  @override
  PageEdit createState() => PageEdit();
}

class PageEdit extends State<EditPeminjam> {
  String nama = "";
  String email = "";
  String no_telp = "";
  String nik = "";
  String password = "";
  final inputnama = TextEditingController(text: "Dicki");
  final inputemail = TextEditingController(text: "dicki@example.com");
  final inputtelp = TextEditingController(text: "08881237779");
  final inputnik = TextEditingController(text: "32041220072220031");
  final inputpass = TextEditingController(text: "password");
  bool isAgreed = false;
  String _imageUrl = "assets/page-1/images/profile2-1.png";
  File? _image;

  TextEditingController inputjenis = TextEditingController();
  String jenis = '';

  TextEditingController inputprov = TextEditingController();
  String prov = '';

  TextEditingController inputkota = TextEditingController();
  String kota = '';

  TextEditingController inputpendapatan = TextEditingController();
  int pendapatan = 0;

  @override
  void dispose() {
    inputnama.dispose();
    inputemail.dispose();
    inputtelp.dispose();
    inputnik.dispose();
    inputpass.dispose();
    inputjenis.dispose();
    inputprov.dispose();
    inputkota.dispose();
    inputpendapatan.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 12 * fem),
                width: double.infinity,
                height: 192 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            17 * fem, 19 * fem, 169.5 * fem, 19 * fem),
                        width: 414 * fem,
                        height: 132 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xff3584ff),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                              // EDIT PROFILE
                              'Edit Profile',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // FOTO PROFIL
                      left: 148 * fem,
                      top: 72 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 120 * fem,
                          height: 120 * fem,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100 * fem),
                            child: kIsWeb
                                // ignore: unnecessary_null_comparison
                                ? (_imageUrl != null
                                    ? Image.network(
                                        _imageUrl!,
                                        fit: BoxFit.cover,
                                      )
                                    : null)
                                : (_image != null
                                    ? Image.file(
                                        _image!,
                                        fit: BoxFit.cover,
                                      )
                                    : null),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () async {
                  final ImagePicker _picker = ImagePicker();
                  final XFile? image =
                      await _picker.pickImage(source: ImageSource.gallery);

                  if (image != null) {
                    setState(() {
                      if (kIsWeb) {
                        _imageUrl = image.path;
                      } else {
                        _image = File(image.path);
                      }
                    });
                  } else {
                    print('No image selected.');
                  }
                },
                child: Container(
                  // BUTTON UPLOAD
                  margin:
                      EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 25 * fem),
                  child: Text(
                    'Upload Foto',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.5 * ffem / fem,
                      decoration: TextDecoration.underline,
                      color: Color(0xff000000),
                      decorationColor: Color(0xff000000),
                    ),
                  ),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.fromLTRB(32 * fem, 9 * fem, 31 * fem, 12 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 9 * fem),
                      child: Text(
                        'Nama',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 23 * fem),
                      padding: EdgeInsets.fromLTRB(
                          20 * fem, 11 * fem, 20 * fem, 11 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffbcbcbc)),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(3 * fem),
                      ),
                      child: TextField(
                        controller: inputnama,
                        onChanged: (text) {
                          setState(() {
                            nama = text;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 9 * fem),
                      child: Text(
                        'Email',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 23 * fem),
                      padding: EdgeInsets.fromLTRB(
                          20 * fem, 11 * fem, 20 * fem, 11 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffbcbcbc)),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(3 * fem),
                      ),
                      child: TextField(
                        controller: inputemail,
                        onChanged: (text) {
                          setState(() {
                            email = text;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 9 * fem),
                      child: Text(
                        'Nomor Telepon',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 27 * fem),
                      padding: EdgeInsets.fromLTRB(
                          20 * fem, 11 * fem, 20 * fem, 11 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffbcbcbc)),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(3 * fem),
                      ),
                      child: TextField(
                        controller: inputtelp,
                        onChanged: (text) {
                          setState(() {
                            no_telp = text;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 9 * fem),
                      child: Text(
                        'NIK / NPWP',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 29 * fem),
                      padding: EdgeInsets.fromLTRB(
                          20 * fem, 11 * fem, 20 * fem, 11 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffbcbcbc)),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(3 * fem),
                      ),
                      child: TextField(
                        controller: inputnik,
                        onChanged: (text) {
                          setState(() {
                            nik = text;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 9 * fem),
                      child: Text(
                        'Password',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 33 * fem),
                      padding: EdgeInsets.fromLTRB(
                          20 * fem, 11 * fem, 20 * fem, 11 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffbcbcbc)),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(3 * fem),
                      ),
                      child: TextField(
                        controller: inputpass,
                        onChanged: (text) {
                          setState(() {
                            password = text;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          42 * fem, 0 * fem, 43 * fem, 18 * fem),
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              nama = inputnama.text;
                              email = inputemail.text;
                              no_telp = inputtelp.text;
                              nik = inputnik.text;
                              password = inputpass.text;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 54, 133, 255),
                            fixedSize: Size(250, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          child: Text(
                            'Update',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          144 * fem, 0 * fem, 0 * fem, 0 * fem),
                      child: Text(
                        'version 1.0',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * ffem / fem,
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
      ),
    );
  }
}
