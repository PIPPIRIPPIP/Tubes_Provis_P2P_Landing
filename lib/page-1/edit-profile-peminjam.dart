import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/models/models.dart';
import 'package:myapp/models/user_model.dart';
import 'package:myapp/utils.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

import '../providers/providers.dart';
import '../services/services.dart';

//Profile peminjam sama umkm disatuin di satu form edit

class EditPeminjam extends StatefulWidget {
  @override
  State<EditPeminjam> createState() => PageEdit();
}

class PageEdit extends State<EditPeminjam> {
  late TextEditingController inputNama;
  late TextEditingController inputEmail;
  late TextEditingController inputTelp;
  late TextEditingController inputNik;
  late TextEditingController inputAlamat;
  late TextEditingController pathGambar;
  late TextEditingController inputJenis;
  late TextEditingController inputProv;
  late TextEditingController inputKota;
  late TextEditingController inputPendapatan;
  bool isAgreed = false;
  String namaImage = "";
  final dio = Dio();
  String _imageUrl = "assets/page-1/images/profile2-1.png";
  File? _image;

  void _update() async {
    var user = Provider.of<UserProvider>(context, listen: false).peminjam;
    if (user == null) {
      return;
    }
    int userId = user.id;
    Peminjam? userAccount = await AuthService.UpdatePeminjam(
        context: context,
        email: inputEmail.text,
        nama: inputNama.text,
        nomorPonsel: inputTelp.text,
        foto: namaImage,
        nik: inputNik.text,
        alamat: inputAlamat.text,
        jenisUsaha: inputJenis.text,
        provinsi: inputProv.text,
        kota: inputKota.text,
        pendapatan: int.parse(inputPendapatan.text),
        userId: userId);

    if (userAccount != null) {
      // Jika berhasil, perbarui data transaksi di UserProvider
      Navigator.pop(context);
    }
  }

  Future<String> uploadFile(List<int> file, String fileName) async {
    print("mulai");
    FormData formData = FormData.fromMap({
      "file": MultipartFile.fromBytes(file,
          filename: fileName, contentType: MediaType("image", "png")),
    });
    var response =
        //untuk chorme
        await dio.post("http://127.0.0.1:8000/user/uploadimage",
            data: formData);

    namaImage = fileName;
    print(response.statusCode);
    if (response.statusCode == 200) {
      setState(() {
        namaImage = fileName;
      });
    }
    return fileName;
  }

  Future<void> _getImageFromGallery() async {
    print("get image");
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    final bytes = await pickedImage?.readAsBytes();
    if (pickedImage != null) {
      print("mulai upload");
      await uploadFile(bytes as List<int>, pickedImage.name);
    }
  }

  @override
  void initState() {
    inputNama = TextEditingController();
    inputEmail = TextEditingController();
    inputTelp = TextEditingController();
    inputNik = TextEditingController();
    inputAlamat = TextEditingController();
    pathGambar = TextEditingController();
    inputJenis = TextEditingController();
    inputProv = TextEditingController();
    inputKota = TextEditingController();
    inputPendapatan = TextEditingController();
    var user = Provider.of<UserProvider>(context, listen: false).peminjam;
    if (user == null) {
      return;
    }
    inputNama.text = user.nama;
    inputEmail.text = user.email;
    inputTelp.text = user.nomorPonsel;
    inputNik.text = user.nik;
    inputAlamat.text = user.alamat;
    pathGambar.text = user.foto;
    inputJenis.text = user.jenisUsaha;
    inputProv.text = user.provinsiUsaha;
    inputKota.text = user.kotaUsaha;
    inputPendapatan.text = user.pendapatan.toString();
    namaImage = user.foto;
    super.initState();
  }

  @override
  void dispose() {
    inputNama.dispose();
    inputEmail.dispose();
    inputTelp.dispose();
    inputNik.dispose();
    inputAlamat.dispose();
    inputJenis.dispose();
    inputProv.dispose();
    inputKota.dispose();
    inputPendapatan.dispose();
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
                            child: namaImage != ""
                                ? Image.network(
                                    //chrome
                                    'http://127.0.0.1:8000/user/getimage/$namaImage',
                                    fit: BoxFit.cover,
                                  )
                                : const Text(" Image Tidak Tersedia"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: _getImageFromGallery,
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
                        controller: inputNama,
                        onChanged: (text) {
                          setState(() {
                            // nama = text;
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
                        controller: inputEmail,
                        onChanged: (text) {
                          setState(() {
                            // email = text;
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
                        controller: inputTelp,
                        onChanged: (text) {
                          setState(() {
                            // no_telp = text;
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
                        controller: inputNik,
                        onChanged: (text) {
                          setState(() {
                            // nik = text;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 9 * fem),
                      child: Text(
                        'Alamat',
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
                        controller: inputAlamat,
                        onChanged: (text) {
                          setState(() {
                            // nik = text;
                          });
                        },
                      ),
                    ),
                    // UMKM
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 9 * fem),
                      child: Text(
                        'Jenis Usaha',
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
                        controller: inputJenis,
                        onChanged: (text) {
                          setState(() {
                            // jenis = text;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 9 * fem),
                      child: Text(
                        'Provinsi Usaha',
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
                        controller: inputProv,
                        onChanged: (text) {
                          setState(() {
                            // prov = text;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 9 * fem),
                      child: Text(
                        'Kota Usaha',
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
                        controller: inputKota,
                        onChanged: (text) {
                          setState(() {
                            // kota = text;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 9 * fem),
                      child: Text(
                        'Pendapatan Pertahun',
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
                        controller: inputPendapatan,
                        onChanged: (text) {
                          setState(() {
                            // pendapatan = int.tryParse(text) ?? 0;
                          });
                        },
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(
                          42 * fem, 0 * fem, 43 * fem, 18 * fem),
                      child: Center(
                        child: ElevatedButton(
                          onPressed: _update,
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
