import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

//panduan pengajuan peminjaman untuk UMKM

class PanduanPeminjaman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(25 * fem, 22 * fem, 0 * fem, 17 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //HEADER
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 93.5 * fem, 31 * fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          // back button
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 53.65 * fem, 1.15 * fem),
                          width: 14.85 * fem,
                          height: 14.85 * fem,
                          child: Image.asset(
                            'assets/page-1/images/group-66.png',
                            width: 14.85 * fem,
                            height: 14.85 * fem,
                          ),
                        ),
                      ),
                      Text(
                        // TITLE
                        'Panduan Peminjaman',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff3584ff),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // idefinisiNuL (477:157)
                  margin:
                      EdgeInsets.fromLTRB(18 * fem, 0 * fem, 0 * fem, 9 * fem),
                  child: Text(
                    '1. Masuk ke Halaman Pinjam',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.5 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  
                  margin:
                      EdgeInsets.fromLTRB(15 * fem, 0 * fem, 0 * fem, 34 * fem),
                  padding:
                      EdgeInsets.fromLTRB(3 * fem, 0 * fem, 3 * fem, 0 * fem),
                  width: 7507 * fem,
                  child: Align(
                    // akunadalahidentitasunikyangdig (477:156)
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 327 * fem,
                        ),
                        child: Text(
                          'Masuk ke halaman pinjam dengan menekan pada bagian bottom navbar yang bertuliskan pinjam.',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 11 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  // idefinisiNuL (477:157)
                  margin:
                      EdgeInsets.fromLTRB(18 * fem, 0 * fem, 0 * fem, 9 * fem),
                  child: Text(
                    '2. Isi Form Peminjaman',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.5 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  // autogroupxvkeUxN (W5JtfWGjAAsjWtsYqJXvke)
                  margin:
                      EdgeInsets.fromLTRB(15 * fem, 0 * fem, 0 * fem, 34 * fem),
                  padding:
                      EdgeInsets.fromLTRB(3 * fem, 0 * fem, 3 * fem, 0 * fem),
                  width: 7507 * fem,
                  child: Align(
                    // akunadalahidentitasunikyangdig (477:156)
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 327 * fem,
                        ),
                        child: Text(
                          'Isi form peminjaman berupa tujuan peminjaman yang dilakukan, jenis pinjaman yang ingin dilakukan, dan nominal uang yang ingin dipinjam.',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 11 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  // idefinisiNuL (477:157)
                  margin:
                      EdgeInsets.fromLTRB(18 * fem, 0 * fem, 0 * fem, 9 * fem),
                  child: Text(
                    '3. Menyetujui syarat dan ketentuan',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.5 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  // autogroupxvkeUxN (W5JtfWGjAAsjWtsYqJXvke)
                  margin:
                      EdgeInsets.fromLTRB(15 * fem, 0 * fem, 0 * fem, 34 * fem),
                  padding:
                      EdgeInsets.fromLTRB(3 * fem, 0 * fem, 3 * fem, 0 * fem),
                  width: 7507 * fem,
                  child: Align(
                    // akunadalahidentitasunikyangdig (477:156)
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 327 * fem,
                        ),
                        child: Text(
                          'Centang box persetujuan untuk menandakan bahwa anda menyetujui terhadap syarat dan ketentuan yang berlaku.',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 11 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  // idefinisiNuL (477:157)
                  margin:
                      EdgeInsets.fromLTRB(18 * fem, 0 * fem, 0 * fem, 9 * fem),
                  child: Text(
                    '4. Konfirmasi Pinjaman',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.5 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  // autogroupxvkeUxN (W5JtfWGjAAsjWtsYqJXvke)
                  margin:
                      EdgeInsets.fromLTRB(15 * fem, 0 * fem, 0 * fem, 34 * fem),
                  padding:
                      EdgeInsets.fromLTRB(3 * fem, 0 * fem, 3 * fem, 0 * fem),
                  width: 7507 * fem,
                  child: Align(
                    // akunadalahidentitasunikyangdig (477:156)
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 327 * fem,
                        ),
                        child: Text(
                          'Jika data yang diinputkan sudah lengkap dan sesuai, maka klik button konfirmasi pinjaman untuk mengajukan pinjaman. Pinjaman yang telah diajukan dapat dilihat pada beranda atau halaman tagihan & pinjaman user. Pinjaman yang diajukan memerlukan waktu beberapa minggu untuk mengumpulkan dana dari para investor sebelum dana disalurkan ke peminjam.',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 11 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
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
