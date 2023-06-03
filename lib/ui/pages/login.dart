import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:myapp/bloc/login_bloc.dart';
import 'package:myapp/page-1/peminjam.dart';
import 'package:myapp/page-1/pendana.dart';
import 'package:myapp/utils.dart';

class Login extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    final loginBloc = BlocProvider.of<LoginBloc>(context);

    return Scaffold(
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error)),
            );
          } else if (state is LoginSuccess) {
            Navigator.push(
              context,
              MaterialPageRoute(
                // builder: (context) => Pendana(user: state.user),
                builder: (context) => Peminjam(user: state.user),
              ),
            );
          }
        },
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            if (state is LoginLoading) {
              return Center(child: CircularProgressIndicator());
            }

            return SingleChildScrollView(
              child: Container(
                width: double.infinity,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      50 * fem, 80 * fem, 50 * fem, 100 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 30 * fem),
                        width: 200,
                        height: 100,
                        child: Image.asset('assets/page-1/images/logo.png'),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(
                            23 * fem, 36 * fem, 23 * fem, 29 * fem),
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
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 21 * fem),
                              child: TextButton(
                                onPressed: () {
                                  _onLoginButtonPressed(loginBloc);
                                },
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero),
                                child: Container(
                                  width: double.infinity,
                                  height: 37 * fem,
                                  decoration: BoxDecoration(
                                    color: Color(0xff3584ff),
                                    borderRadius:
                                        BorderRadius.circular(3 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Masuk',
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
                              ),
                            ),
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
            );
          },
        ),
      ),
    );
  }

  void _onLoginButtonPressed(LoginBloc loginBloc) {
    loginBloc.add(LoginButtonPressed(
      email: _emailController.text,
      password: _passwordController.text,
    ));
  }
}
