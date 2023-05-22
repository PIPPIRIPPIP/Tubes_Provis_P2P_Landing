import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/user_model.dart';
import 'package:myapp/page-1/marketplace.dart';
import 'package:myapp/page-1/pendana.dart';
import 'package:myapp/page-1/portofolio.dart';
import 'package:myapp/utils.dart';

class Navbar extends StatelessWidget {
  final User user;
  Navbar(this.user);
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      height: 65 * fem,
      child: Container(
        // navbarwKC (63:373)
        padding: EdgeInsets.fromLTRB(25 * fem, 7 * fem, 32 * fem, 8 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff3584ff),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Pendana(user: user)));
              },
              child: Container(
                // group623NE (63:372)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 106 * fem, 0 * fem),
                padding:
                    EdgeInsets.fromLTRB(0 * fem, 5.41 * fem, 0 * fem, 0 * fem),
                height: 47 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // igaminghousegAJ (45:174)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 1 * fem, 3.07 * fem),
                      width: 26.87 * fem,
                      height: 23.52 * fem,
                      child: Image.asset(
                        'assets/page-1/images/i-gaming-house-dYa.png',
                        width: 26.87 * fem,
                        height: 23.52 * fem,
                      ),
                    ),
                    Text(
                      // berandaP4i (63:366)
                      'Beranda',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MarketPlace(user: user)));
              },
              child: Container(
                // group606zi (63:370)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 2 * fem, 93 * fem, 0 * fem),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // componentqxJ (45:177)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 1 * fem, 0 * fem),
                      width: 30 * fem,
                      height: 30 * fem,
                      child: Image.asset(
                        'assets/page-1/images/component-zP8.png',
                        width: 30 * fem,
                        height: 30 * fem,
                      ),
                    ),
                    Text(
                      // marketplacezTp (63:367)
                      'Marketplace',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Portofolio(user: user)));
              },
              child: Container(
                // group618K8 (63:371)
                padding:
                    EdgeInsets.fromLTRB(0 * fem, 6.11 * fem, 0 * fem, 0 * fem),
                height: 47 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iobjecttoolsbriefcaserF8 (66:124)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 4.22 * fem),
                      width: 24.98 * fem,
                      height: 21.67 * fem,
                      child: Image.asset(
                        'assets/page-1/images/i-object-tools-briefcase-rRC.png',
                        width: 24.98 * fem,
                        height: 21.67 * fem,
                      ),
                    ),
                    Text(
                      // portofoliox3G (63:368)
                      'Portofolio',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
