import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

//Bagian Dicki
//this is change

class Scene extends StatefulWidget {
  @override
  DaftarInvestor createState() => DaftarInvestor();
}

class DaftarInvestor extends State<Scene> {
  String email = "";
  String no_telp = "";
  String password = "";
  final inputemail = TextEditingController();
  final inputtelp = TextEditingController();
  final inputpass = TextEditingController();
  bool isAgreed = false;

  @override
  void dispose() {
    inputemail.dispose();
    inputtelp.dispose();
    inputpass.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Image.asset(
              'page-1/images/moneylogodesignstemplatevectorfinancelogodesignsvector1-removebg-preview-1-4FG.png',
              height: 200,
            ),
          ),
          Container(
            width: 400,
            height: 480,
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
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Helvetica',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
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
                        Text("I agree to the terms and conditions"),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: ElevatedButton(
                    onPressed: isAgreed ? () {
                      setState(() {});
                    } : null,
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 54, 133, 255),
                      fixedSize: Size(250, 40),
                    ),
                    child: const Text('Lanjutkan'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text('Sudah punya akun? Login'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
