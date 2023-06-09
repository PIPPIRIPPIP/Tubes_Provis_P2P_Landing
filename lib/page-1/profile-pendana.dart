import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:provider/provider.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/edit-profile-investor.dart';
import 'package:myapp/page-1/kebijakan-privasi.dart';
import 'package:myapp/page-1/syarat-dan-ketentuan.dart';
import 'package:myapp/page-1/tentang-kami.dart';
import 'package:myapp/services/services.dart';
import 'package:myapp/utils.dart';

import '../providers/providers.dart';

class ProfilPendana extends StatefulWidget {
  const ProfilPendana({super.key});

  @override
  State<ProfilPendana> createState() => ProfilPage();
}

class ProfilPage extends State<ProfilPendana> {
  void _logOut() async {
    bool removeSuccess = await LocalStoreServices.removeFromLocal(context);
    if (removeSuccess) {
      if (!mounted) return;
      Provider.of<UserProvider>(context, listen: false).setUserNull();
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    var user = Provider.of<UserProvider>(context, listen: false).pendana;
    if (user == null) {
      return const Center(child: CircularProgressIndicator());
    }
    String namaImage = user.foto;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // profile62A (70:78)
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // group27cWJ (70:93)
                  padding: EdgeInsets.fromLTRB(
                      17 * fem, 13 * fem, 315 * fem, 12 * fem),
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
                        // profilvG6 (70:95)
                        'Profil',
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
                  // autogroupcbt2F3U (NsxhwVmSxr2ico7G4XCbt2)
                  padding: EdgeInsets.fromLTRB(
                      16 * fem, 22 * fem, 17 * fem, 7 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupyc54kW2 (Nsxgdx6zae2ZULjqk1Yc54)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 18 * fem),
                        padding: EdgeInsets.fromLTRB(
                            17 * fem, 14 * fem, 16 * fem, 22 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffbcbcbc)),
                          color: Color(0xff3584ff),
                          borderRadius: BorderRadius.circular(10 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(0 * fem, 4 * fem),
                              blurRadius: 2 * fem,
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // profile21cHL (70:105)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 4 * fem, 17 * fem, 0 * fem),
                              width: 74 * fem,
                              height: 74 * fem,
                              child: namaImage != ""
                                  ? Image.network(
                                      //chrome
                                      'http://127.0.0.1:8000/user/getimage/$namaImage',
                                      fit: BoxFit.cover,
                                    )
                                  : const Text(" Image Tidak Tersedia"),
                            ),
                            Container(
                              // autogroupavuyXfC (NsxgowpLdhrUftAzXJaVuY)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 55 * fem, 13 * fem),
                              width: 181 * fem,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // autogroupdfdpEpW (NsxgtH2TPZqyXMKxXbdFdp)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 1 * fem),
                                    width: double.infinity,
                                    height: 43 * fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // ayeshaalifirdausNQv (70:81)
                                          left: 0 * fem,
                                          top: 0 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 181 * fem,
                                              height: 27 * fem,
                                              child: Text(
                                                user.nama,
                                                style: SafeGoogleFont(
                                                  'Poppins',
                                                  fontSize: 18 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5 * ffem / fem,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // FzW (70:82)
                                          left: 0 * fem,
                                          top: 26 * fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 94 * fem,
                                              height: 17 * fem,
                                              child: Text(
                                                user.nomorPonsel,
                                                style: SafeGoogleFont(
                                                  'Poppins',
                                                  fontSize: 11 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5 * ffem / fem,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    // ayeshaliexamplecomZVQ (70:83)
                                    user.email,
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 11 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EditInvestor()));
                              },
                              child: Container(
                                // edit16VL (70:87)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 61 * fem),
                                width: 15 * fem,
                                height: 15 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/edit-1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // tentangcTg (70:86)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 319 * fem, 5 * fem),
                        child: Text(
                          'Tentang',
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
                        // autogroupkuygvUN (Nsxh7MUzwcS9gAjgU2KuyG)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 368 * fem),
                        padding: EdgeInsets.fromLTRB(
                            0 * fem, 10 * fem, 0 * fem, 8 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffbcbcbc)),
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(10 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(0 * fem, 4 * fem),
                              blurRadius: 2 * fem,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Kebijakan()));
                              },
                              child: Container(
                                // autogroupuba6aYv (NsxhLM7MDCQeEaCaUuUBA6)
                                margin: EdgeInsets.fromLTRB(
                                    31 * fem, 0 * fem, 20 * fem, 3 * fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // kebijakanprivasihtS (70:100)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 228 * fem, 0 * fem),
                                      child: Text(
                                        'Kebijakan Privasi',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              // line221u8 (70:97)
                              margin: EdgeInsets.fromLTRB(
                                  1 * fem, 0 * fem, 0 * fem, 3 * fem),
                              width: 380 * fem,
                              height: 1 * fem,
                              decoration: BoxDecoration(
                                color: Color(0xffa9a9a9),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SyaratKetentuan()));
                              },
                              child: Container(
                                // autogrouplwy49kS (NsxhRqxBwV1hPpb7QpLWy4)
                                margin: EdgeInsets.fromLTRB(
                                    31 * fem, 0 * fem, 20 * fem, 5 * fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // syaratdanketentuanGq4 (70:90)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 197 * fem, 0 * fem),
                                      child: Text(
                                        'Syarat dan Ketentuan',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              // line23zFG (70:98)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 1 * fem, 4 * fem),
                              width: 380 * fem,
                              height: 1 * fem,
                              decoration: BoxDecoration(
                                color: Color(0xffa9a9a9),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TentangKami()));
                              },
                              child: Container(
                                // autogroupjobuVbL (NsxhdAxeXtgY5y9UxpJoBU)
                                margin: EdgeInsets.fromLTRB(
                                    31 * fem, 0 * fem, 20 * fem, 0 * fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // tentangkamiRzn (70:92)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 245 * fem, 0 * fem),
                                      child: Text(
                                        'Tentang Kami',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xff000000),
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
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            60 * fem, 0 * fem, 60 * fem, 45 * fem),
                        child: Center(
                          child: ElevatedButton(
                            onPressed: _logOut,
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 255, 54, 54),
                              fixedSize: Size(150, 30),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            child: Text(
                              'Log out',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.5 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        // version10jka (70:108)
                        'version 1.0',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff8e8c8c),
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
