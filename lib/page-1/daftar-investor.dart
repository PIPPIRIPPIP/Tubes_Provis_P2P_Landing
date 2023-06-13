import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
//import 'package:myapp/page-1/login.dart';
import 'package:myapp/page-1/syarat-dan-ketentuan.dart';

//Bagian Dicki
//dibawah bagian text login ada yang buat ngelink cuman masih dikomen

class DaftarInvestor extends StatefulWidget {
  @override
  DaftarInvestorPage createState() => DaftarInvestorPage();
}

class DaftarInvestorPage extends State<DaftarInvestor> {
  String nama = "";
  String nik = "";
  String email = "";
  String no_telp = "";
  String password = "";
  final inputnama = TextEditingController();
  final inputnik = TextEditingController();
  final inputemail = TextEditingController();
  final inputtelp = TextEditingController();
  final inputpass = TextEditingController();
  bool isAgreed = false;

  @override
  void dispose() {
    inputnama.dispose();
    inputnik.dispose();
    inputemail.dispose();
    inputtelp.dispose();
    inputpass.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Image.asset(
                  'images/Logo-Investa.png',
                  height: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Container(
                  width: 350,
                  height: 580,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Daftar Sebagai Investor',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff343434),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Text('Harap lengkapi form dibawah ini'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 16.0),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: SizedBox(
                              width: 250,
                              child: TextField(
                                controller: inputnama,
                                onChanged: (text) {
                                  setState(() {
                                    nama = text;
                                  });
                                },
                                decoration: InputDecoration(
                                  hintText: 'Nama',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 8.0,
                                    horizontal: 8.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: SizedBox(
                              width: 250,
                              child: TextField(
                                controller: inputnik,
                                onChanged: (text) {
                                  setState(() {
                                    nik = text;
                                  });
                                },
                                decoration: InputDecoration(
                                  hintText: 'NIK',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 8.0,
                                    horizontal: 8.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: SizedBox(
                              width: 250,
                              child: TextField(
                                controller: inputemail,
                                onChanged: (text) {
                                  setState(() {
                                    email = text;
                                  });
                                },
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 8.0,
                                    horizontal: 8.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: SizedBox(
                              width: 250,
                              child: TextField(
                                controller: inputtelp,
                                onChanged: (text) {
                                  setState(() {
                                    no_telp = text;
                                  });
                                },
                                decoration: InputDecoration(
                                  hintText: 'No Telepon',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 8.0,
                                    horizontal: 8.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: SizedBox(
                              width: 250,
                              child: TextField(
                                controller: inputpass,
                                onChanged: (text) {
                                  setState(() {
                                    password = text;
                                  });
                                },
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 8.0,
                                    horizontal: 8.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Checkbox(
                                value: isAgreed,
                                onChanged: (value) {
                                  setState(() {
                                    isAgreed = value ?? false;
                                  });
                                },
                              ),
                              Text("Saya menyetujui "),
                              InkWell(
                                onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SyaratKetentuan()));
                                },
                                child: Text("syarat & ketentuan",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: ElevatedButton(
                          onPressed: isAgreed
                              ? () {
                                  setState(() {
                                    nama = inputnama.text;
                                    nik = inputnik.text;
                                    email = inputemail.text;
                                    no_telp = inputtelp.text;
                                    password = inputpass.text;
                                  });
                                }
                              : null,
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 54, 133, 255),
                            fixedSize: Size(250, 40),
                          ),
                          child: const Text('Lanjutkan'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: TextButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => Login()),
                            // );
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff3584ff),
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
      ),
    );
  }
}
