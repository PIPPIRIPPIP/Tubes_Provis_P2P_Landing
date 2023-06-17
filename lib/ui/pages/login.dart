import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/widgets/custom_elevated_button.dart';
import 'package:provider/provider.dart';

import 'package:myapp/bloc/login_bloc.dart';
import 'package:myapp/page-1/peminjam.dart';
import 'package:myapp/page-1/pendana.dart';
import 'package:myapp/services/services.dart';
import 'package:myapp/utils.dart';

import 'package:myapp/page-1/pilih-akun.dart';

import '../../main.dart';
import '../../models/models.dart';
import '../../providers/providers.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => LoginPage();
}

class LoginPage extends State<Login> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  Future<void> _signInSuccess(User userData) async {
    bool isSaveSuccess =
        await LocalStoreServices.saveInLocal(context, userData.token);
    if (isSaveSuccess) {
      if (!mounted) return;
      UserProvider userProvider =
          Provider.of<UserProvider>(context, listen: false);
      userProvider.setUserFromModel(userData);
    }
  }

  /// Trigger this when "Sign In" button is clicked
  void _signIn() async {
    // NOTE : If signing-ip failed, return null
    User? userAccount = await AuthService.signInUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
    );

    // NOTE : Process belows, if Sign-Ip via API successfully
    if (userAccount != null) {
      // Pengecekan jenis_user
      // if (userAccount is Peminjam) {
      //   // userAccount merupakan Peminjam
      //   // Peminjam peminjam = userAccount;
      //   await _signInSuccess(userAccount);
      //   print("peminjam");
      // } else if (userAccount is Pendana) {
      //   // userAccount merupakan Pendana
      //   Pendana pendana = userAccount;
      //   await _signInSuccess(pendana);
      //   print("pendana");
      // }
      // else{
      //   // User user = userAccount as User;
      //   print("tidak ada jenis user");
      // }
      await _signInSuccess(userAccount);

      if (!mounted) return;
      // Navigator.of(context).pop;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyApp()),
      );
    }
  }

  /// Change to SignUp Page
  void _changeToSignUp() {
    // Navigator.of(context).pushReplacement(
    //   MaterialPageRoute(builder: (context) => const SignUpPage()),
    // );
    Navigator.of(context).pop();
  }

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
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
          padding: EdgeInsets.fromLTRB(50 * fem, 80 * fem, 50 * fem, 100 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 30 * fem),
                width: 200,
                height: 100,
                child: Image.asset('assets/page-1/images/logo.png'),
              ),
              Container(
                padding:
                    EdgeInsets.fromLTRB(23 * fem, 36 * fem, 23 * fem, 29 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(10 * fem),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0 * fem, 4 * fem),
                      blurRadius: 5 * fem,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 28 * fem),
                      padding: EdgeInsets.fromLTRB(
                          10 * fem, 0 * fem, 0 * fem, 0 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffbcbcbc)),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(3 * fem),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: InputBorder.none,
                        ),
                        controller: _emailController,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 28 * fem),
                      padding: EdgeInsets.fromLTRB(
                          10 * fem, 0 * fem, 0 * fem, 0 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffbcbcbc)),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(3 * fem),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Kata Sandi',
                          border: InputBorder.none,
                        ),
                        controller: _passwordController,
                        obscureText: true,
                      ),
                    ),
                    CustomElevatedButton(
                        onPressfunc: _signIn, buttonText: 'Masuk'),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          53 * fem, 0 * fem, 53 * fem, 0 * fem),
                      width: double.infinity,
                      height: 18 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            left: -17 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 160 * fem,
                                height: 18 * fem,
                                child: Text(
                                  'Belum punya akun?',
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
                            left: 121.75 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 38 * fem,
                                height: 18 * fem,
                                child: TextButton(
                                  onPressed: () {
                                    // Navigation logic for registration page
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => PilihAkun()));
                                  },
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero),
                                  child: Text(
                                    'Daftar',
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
            ],
          ),
        ),
      ),
    ));
  }
}
