import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/edit-profile-peminjam.dart';
import 'package:myapp/page-1/edit-umkm.dart';

import 'package:myapp/page-1/bayar-pinjaman.dart';

import 'package:myapp/models/user_model.dart';

//nambahin on tap link ke edit profile

class Profil extends StatelessWidget {
  final User user;

  Profil({required this.user});

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
            // profileTyx (20:2)
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // group27zyt (58:122)
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
                        // profil7Yi (58:124)
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
                  // autogroupe2n3F98 (3w9xzVQnsXnT85ru6Ve2n3)
                  padding: EdgeInsets.fromLTRB(
                      15 * fem, 22 * fem, 17 * fem, 7 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupzfqbZQi (3w9w1xsHgZrpJR6njLZFQb)
                        margin: EdgeInsets.fromLTRB(
                            1 * fem, 0 * fem, 0 * fem, 28 * fem),
                        padding: EdgeInsets.fromLTRB(
                            17 * fem, 14 * fem, 16 * fem, 20 * fem),
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
                              // profile21RC2 (63:547)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 2 * fem, 17 * fem, 0 * fem),
                              width: 74 * fem,
                              height: 74 * fem,
                              child: Image.asset(
                                'assets/page-1/images/profile2-1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              // autogroupwfjdwRG (3w9wJxNyaBN5LdwM4LWfjD)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 2 * fem, 59 * fem, 0 * fem),
                              width: 181 * fem,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // autogrouppcpzrHL (3w9wQNPd21MSuUP44hpcPZ)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 1 * fem),
                                    width: double.infinity,
                                    height: 43 * fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // ayeshaalifirdausysk (24:79)
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
                                          // rwY (24:93)
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
                                    // ayeshaliexamplecomAhL (24:125)
                                    user.email,
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 11 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                  RichText(
                                    // gradeaWFQ (63:548)
                                    text: TextSpan(
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 11 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xffffffff),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Grade ',
                                        ),
                                        TextSpan(
                                          text: 'A+',
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 11 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xffffe500),
                                          ),
                                        ),
                                      ],
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
                                        builder: (context) => EditPeminjam()));
                                // MaterialPageRoute(builder: (context) => DaftarInvestor()));
                              },
                              child: Container(
                                // edit1KMG (24:129)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 63 * fem),
                                width: 13 * fem,
                                height: 13 * fem,
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
                        // autogroupkgu7dsk (3w9wds18zM232MWucrKGU7)
                        margin: EdgeInsets.fromLTRB(
                            1 * fem, 0 * fem, 8 * fem, 7 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // profileumkmZWW (27:2)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 175 * fem, 0 * fem),
                              child: Text(
                                'Profile UMKM',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EditUMKM()));
                              },
                              child: Text(
                                // editprofileumkmgLE (63:555)
                                'edit profile umkm',
                                textAlign: TextAlign.right,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff343434),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogrouppbb5Db4 (3w9wmmwcwwTtPaKQKYPBb5)
                        margin: EdgeInsets.fromLTRB(
                            1 * fem, 0 * fem, 0 * fem, 26 * fem),
                        padding: EdgeInsets.fromLTRB(
                            14 * fem, 6 * fem, 16 * fem, 6 * fem),
                        width: double.infinity,
                        height: 100 * fem,
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
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 8 * fem, 129 * fem, 0 * fem),
                              constraints: BoxConstraints(
                                maxWidth: 134 * fem,
                              ),
                              child: Text(
                                'Jenis Usaha\nProvinis Usaha\nKota Usaha\nPendapatan Pertahun',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0 * fem, 8 * fem, 0 * fem, 0 * fem),
                              constraints: BoxConstraints(
                                maxWidth: 88 * fem,
                              ),
                              child: Text(
                                '${user.jenisUsaha}\n${user.provinsiUsaha}\n${user.kotaUsaha}\nRp ${user.pendapatan}',
                                textAlign: TextAlign.right,
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
                      Container(
                        // tentang2gv (69:427)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 320 * fem, 5 * fem),
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
                        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 50 * fem),
                        padding: EdgeInsets.fromLTRB(0 * fem, 10 * fem, 0 * fem, 8 * fem),
                        width: 381 * fem,
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
                                        builder: (context) => EditPeminjam()));
                              },
                              child: Container(
                                // autogrouprfutCE2 (3w9xK6NmeUnZUok5S8RFUT)
                                margin: EdgeInsets.fromLTRB(
                                    31 * fem, 0 * fem, 20 * fem, 3 * fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // kebijakanprivasiXXC (69:429)
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
                              // line222Tx (69:428)
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
                                        builder: (context) => EditPeminjam()));
                              },
                              child: Container(
                                // autogroupryvfkPx (3w9xRWMkVpA8AbXhX2RyvF)
                                margin: EdgeInsets.fromLTRB(
                                    31 * fem, 0 * fem, 20 * fem, 5 * fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // syaratdanketentuantFG (69:433)
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
                              // line23od8 (69:431)
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
                                        builder: (context) => BayarTagihan()));
                              },
                              child: Container(
                                // autogroupgjxxLd4 (3w9xYFfWUyzRE36dJ6gJxX)
                                margin: EdgeInsets.fromLTRB(
                                    31 * fem, 0 * fem, 20 * fem, 6 * fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // pusatbantuanGWi (69:434)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 241 * fem, 0 * fem),
                                      child: Text(
                                        'Pusat Bantuan',
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
                              // line24Bta (69:432)
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
                                        builder: (context) => EditPeminjam()));
                              },
                              child: Container(
                                // autogroup73v7idc (3w9xdqLYVjD9yhRz9Z73v7)
                                margin: EdgeInsets.fromLTRB(
                                    31 * fem, 0 * fem, 20 * fem, 0 * fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // tentangkami4Bg (69:437)
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
                        margin:  EdgeInsets.fromLTRB(60*fem, 0*fem, 60*fem, 45*fem),
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                                  },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 255, 54, 54),
                              fixedSize: Size(150, 30),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            child: Text('Log out',
                              style:  SafeGoogleFont (
                                'Poppins',
                                fontSize:  15*ffem,
                                fontWeight:  FontWeight.w500,
                                height:  1.5*ffem/fem,
                                color:  Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // version10NTG (69:447)
                        margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
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
      ),
    );
  }
}
