import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/ui/pages/login.dart';
import 'package:myapp/utils.dart';
//import 'package:myapp/page-1/login.dart';
import 'package:myapp/page-1/syarat-dan-ketentuan.dart';
import 'package:provider/provider.dart';

import '../models/models.dart';
import '../providers/providers.dart';
import '../services/services.dart';
import '../utils/utils.dart';

//Bagian Dicki
//dibawah bagian text login ada yang buat ngelink cuman masih dikomen

class DaftarInvestor extends StatefulWidget {
  const DaftarInvestor({super.key});
  @override
  State<DaftarInvestor> createState() => DaftarInvestorPage();
}

class DaftarInvestorPage extends State<DaftarInvestor> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;
  late TextEditingController _namaController;
  late TextEditingController _nomorPonselController;
  bool isAgreed = false;

  /// Call this if Sign-Up via backend-API successfully
  // Future<void> _signUpSuccess(User userData) async {
  //   bool isSaveSuccess =
  //       await LocalStoreServices.saveInLocal(context, userData);
  //   if (isSaveSuccess) {
  //     if (!mounted) return;
  //     // NOTE : Update UserProvider
  //     UserProvider userProvider =
  //         Provider.of<UserProvider>(context, listen: false);
  //     userProvider.setUserFromModel(userData);
  //   }
  // }

  /// Trigger this when "Sign Up" button is clicked
  void _signUp() async {
    if (_passwordController.text != _confirmPasswordController.text) {
      Utils.showSnackBar(
          context, 'Password and Confirm-Passord does not match!');
      return;
    }

    // NOTE : If signing-up failed, return null
    Pendana? userAccount = await AuthService.signUpPendana(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
      nama: _namaController.text,
      nomorPonsel: _nomorPonselController.text,
      jenisUser: "pendana",
    );

    if (userAccount != null) {
      // NOTE : Process, if Sign-Up via API successfully
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    }
  }

  /// Change to SignIn Page
  void _changeToSignIn() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Login()),
    );
  }

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    _namaController = TextEditingController();
    _nomorPonselController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _namaController.dispose();
    _nomorPonselController.dispose();
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
                                controller: _namaController,
                                onChanged: (text) {
                                  setState(() {
                                    // _namaController.text = text;
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
                                controller: _emailController,
                                onChanged: (text) {
                                  setState(() {
                                    // _emailController.text = text;
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
                                controller: _nomorPonselController,
                                onChanged: (text) {
                                  setState(() {
                                    // _nomorPonselController.text = text;
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
                                controller: _passwordController,
                                onChanged: (text) {
                                  setState(() {
                                    // _passwordController.text = text;
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
                                controller: _confirmPasswordController,
                                onChanged: (text) {
                                  setState(() {
                                    // _confirmPasswordController.text = text;
                                  });
                                },
                                decoration: InputDecoration(
                                  hintText: 'Konfirmasi Password',
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
                                          builder: (context) =>
                                              SyaratKetentuan()));
                                },
                                child: Text(
                                  "syarat & ketentuan",
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
                          onPressed: isAgreed ? _signUp : null,
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
