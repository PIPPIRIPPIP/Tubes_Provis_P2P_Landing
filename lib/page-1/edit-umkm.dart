import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/user_model.dart';
import 'package:myapp/utils.dart';

//EDIT UMKM

class EditUMKM extends StatefulWidget {
  @override
  PageEdit createState() => PageEdit();
}

class PageEdit extends State<EditUMKM> {
  String jenis = "";
  String prov = "";
  String kota = "";
  int pendapatan = 0;
  final inputjenis = TextEditingController(text: "Kuliner");
  final inputprov = TextEditingController(text: "Jawa Barat");
  final inputkota = TextEditingController(text: "Bandung");
  final inputpendapatan = TextEditingController(text: "100.000.000");

  @override
  void dispose() {
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
          
          width:  double.infinity,
          decoration:  BoxDecoration (
            color:  Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment:  CrossAxisAlignment.center,
            children:  [
              Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 14 * fem),
                  padding: EdgeInsets.fromLTRB(
                      17 * fem, 13 * fem, 200 * fem, 12 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff3584ff),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                        // isisaldofjk (63:245)
                        'Edit UMKM',
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
              Container(
                padding:  EdgeInsets.fromLTRB(32*fem, 9*fem, 31*fem, 12*fem),
                width:  double.infinity,
                child: Column(
                  crossAxisAlignment:  CrossAxisAlignment.start,
                  children:  [
                    // UMKM
                    Container(
                      margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                      child: Text(
                        'Jenis Usaha',
                        style:  SafeGoogleFont (
                          'Poppins',
                          fontSize:  14*ffem,
                          fontWeight:  FontWeight.w600,
                          height:  1.5*ffem/fem,
                          color:  Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 29*fem),
                      padding:  EdgeInsets.fromLTRB(20*fem, 11*fem, 20*fem, 11*fem),
                      width:  double.infinity,
                      decoration:  BoxDecoration (
                        border:  Border.all(color: Color(0xffbcbcbc)),
                        color:  Color(0xffffffff),
                        borderRadius:  BorderRadius.circular(3*fem),
                      ),
                      child: TextField(
                        controller: inputjenis,
                        onChanged: (text) {
                          setState(() {
                            jenis = text;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                      child: Text(
                        'Provinsi Usaha',
                        style:  SafeGoogleFont (
                          'Poppins',
                          fontSize:  14*ffem,
                          fontWeight:  FontWeight.w600,
                          height:  1.5*ffem/fem,
                          color:  Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 29*fem),
                      padding:  EdgeInsets.fromLTRB(20*fem, 11*fem, 20*fem, 11*fem),
                      width:  double.infinity,
                      decoration:  BoxDecoration (
                        border:  Border.all(color: Color(0xffbcbcbc)),
                        color:  Color(0xffffffff),
                        borderRadius:  BorderRadius.circular(3*fem),
                      ),
                      child: TextField(
                        controller: inputprov,
                        onChanged: (text) {
                          setState(() {
                            prov = text;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                      child: Text(
                        'Kota Usaha',
                        style:  SafeGoogleFont (
                          'Poppins',
                          fontSize:  14*ffem,
                          fontWeight:  FontWeight.w600,
                          height:  1.5*ffem/fem,
                          color:  Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 29*fem),
                      padding:  EdgeInsets.fromLTRB(20*fem, 11*fem, 20*fem, 11*fem),
                      width:  double.infinity,
                      decoration:  BoxDecoration (
                        border:  Border.all(color: Color(0xffbcbcbc)),
                        color:  Color(0xffffffff),
                        borderRadius:  BorderRadius.circular(3*fem),
                      ),
                      child: TextField(
                        controller: inputkota,
                        onChanged: (text) {
                          setState(() {
                            kota = text;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                      child: Text(
                        'Pendapatan Pertahun',
                        style:  SafeGoogleFont (
                          'Poppins',
                          fontSize:  14*ffem,
                          fontWeight:  FontWeight.w600,
                          height:  1.5*ffem/fem,
                          color:  Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin:  EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 29*fem),
                      padding:  EdgeInsets.fromLTRB(20*fem, 11*fem, 20*fem, 11*fem),
                      width:  double.infinity,
                      decoration:  BoxDecoration (
                        border:  Border.all(color: Color(0xffbcbcbc)),
                        color:  Color(0xffffffff),
                        borderRadius:  BorderRadius.circular(3*fem),
                      ),
                      child: TextField(
                        controller: inputpendapatan,
                        onChanged: (text) {
                          setState(() {
                            pendapatan = int.tryParse(text) ?? 0;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin:  EdgeInsets.fromLTRB(42*fem, 0*fem, 43*fem, 18*fem),
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                                  setState(() {
                                    jenis = inputjenis.text;
                                    prov = inputprov.text;
                                    kota = inputkota.text;
                                    pendapatan = int.parse(inputpendapatan.text);
                                  });
                                },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 54, 133, 255),
                            fixedSize: Size(250, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          child: Text('Update',
                            style:  SafeGoogleFont (
                              'Poppins',
                              fontSize:  18*ffem,
                              fontWeight:  FontWeight.w500,
                              height:  1.5*ffem/fem,
                              color:  Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      
                      margin:  EdgeInsets.fromLTRB(144*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'version 1.0',
                        style:  SafeGoogleFont (
                          'Poppins',
                          fontSize:  12*ffem,
                          fontWeight:  FontWeight.w400,
                          height:  1.5*ffem/fem,
                          color:  Color(0xff8e8c8c),
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
