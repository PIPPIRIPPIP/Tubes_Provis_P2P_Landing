import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Notifikasi extends StatelessWidget {
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
            // notifikasiRUi (63:340)
            padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 395 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  // group27iCv (63:342)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
                  padding: EdgeInsets.fromLTRB(
                      17 * fem, 13 * fem, 284 * fem, 12 * fem),
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
                        // notifikasiQLe (63:344)
                        'Notifikasi',
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
                  // bersihkannotifikasi7Vx (63:529)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 20 * fem, 8 * fem),
                  child: Text(
                    'Bersihkan Notifikasi',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.5 * ffem / fem,
                      color: Color(0xff727272),
                    ),
                  ),
                ),
                Container(
                  // autogroupfmeocxW (3wAPSCrBzBQj7CUhSrfMeo)
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 3 * fem, 0 * fem, 10 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // line138R4 (63:355)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 3 * fem),
                        width: double.infinity,
                        height: 1 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffbcbcbc),
                        ),
                      ),
                      Container(
                        // pinjamanterdanaipinjamanyangan (63:347)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 31 * fem, 4 * fem),
                        constraints: BoxConstraints(
                          maxWidth: 349 * fem,
                        ),
                        child: RichText(
                          text: TextSpan(
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                            children: [
                              TextSpan(
                                text: 'Pinjaman Terdanai\n',
                              ),
                              TextSpan(
                                text:
                                    'Pinjaman yang anda ajukan sudah didanai secara penuh, dana telah dipindahkan ke saldo anda.\n',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text: '\n05 April 2023 14:00',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 8 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff727272),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // line14U9U (63:356)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 5 * fem),
                        width: double.infinity,
                        height: 1 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffbcbcbc),
                        ),
                      ),
                      Container(
                        // suksesmengajukanpinjamanpinjam (63:530)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 24 * fem, 5 * fem),
                        constraints: BoxConstraints(
                          maxWidth: 356 * fem,
                        ),
                        child: RichText(
                          text: TextSpan(
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                            children: [
                              TextSpan(
                                text: 'Sukses mengajukan pinjaman\n',
                              ),
                              TextSpan(
                                text:
                                    'Pinjaman sukses diajukan, dana akan dikirimkan ke saldo anda setelah dana terkumpul atau dalam kurun waktu 3 bulan.\n',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text: '\n05 April 2023 14:00',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 8 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff727272),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // line15xMU (63:357)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 4 * fem),
                        width: double.infinity,
                        height: 1 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffbcbcbc),
                        ),
                      ),
                      Container(
                        // tenggatpembayarantagihanandaun (63:531)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 25 * fem, 5 * fem),
                        constraints: BoxConstraints(
                          maxWidth: 355 * fem,
                        ),
                        child: RichText(
                          text: TextSpan(
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                            children: [
                              TextSpan(
                                text: 'Tenggat Pembayaran\n',
                              ),
                              TextSpan(
                                text:
                                    'Tagihan anda untuk pinjaman No P112020220 belum dibayarkan, harap lakukan pembayaran segera.\n',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text: '\n05 April 2023 14:00',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 8 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff727272),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // line16UMk (63:358)
                        width: double.infinity,
                        height: 1 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffbcbcbc),
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
