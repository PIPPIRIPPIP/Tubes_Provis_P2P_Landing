import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // formpengajuanpeminjamanbmg (21:7)
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupmzifw4r (3wA2zTacBXAcXsU38rMZif)
              padding:
                  EdgeInsets.fromLTRB(22 * fem, 28 * fem, 24 * fem, 28 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupwecpFLS (3wA2YPViMtbwpebRBYWeCP)
                    margin: EdgeInsets.fromLTRB(
                        53 * fem, 0 * fem, 50 * fem, 4 * fem),
                    width: double.infinity,
                    height: 126 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // formpengajuanpinjamanNfx (21:68)
                          left: 0 * fem,
                          top: 90 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 265 * fem,
                              height: 30 * fem,
                              child: Text(
                                'Form Pengajuan Pinjaman',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff343434),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // moneylogodesignstemplatevector (21:70)
                          left: 20 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 224 * fem,
                              height: 76 * fem,
                              child: Image.asset(
                                'assets/page-1/images/moneylogodesignstemplatevectorfinancelogodesignsvector1-removebg-preview-2.png',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // frame1LmC (20:13)
                          left: 38 * fem,
                          top: 26 * fem,
                          child: Container(
                            width: 100 * fem,
                            height: 100 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // haraplengkapiformdibawahiniunt (21:69)
                    margin: EdgeInsets.fromLTRB(
                        2 * fem, 0 * fem, 0 * fem, 15 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 312 * fem,
                    ),
                    child: Text(
                      'Harap lengkapi form dibawah ini untuk melanjutkan\n proses pengajuan pinjaman',
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
                  Container(
                    // line3MAW (21:67)
                    margin: EdgeInsets.fromLTRB(
                        1 * fem, 0 * fem, 0 * fem, 28 * fem),
                    width: 367 * fem,
                    height: 1 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xffbcbcbc),
                    ),
                  ),
                  Container(
                    // tujuanfwt (21:20)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 1 * fem, 15 * fem),
                    width: 367 * fem,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7 * fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // tujuanpengajuanpinjamanbKk (21:23)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 7 * fem),
                          child: Text(
                            'Tujuan Pengajuan Pinjaman',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff343434),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupyadmWSi (3wA3HnR5Cy8bwk5uA2Yadm)
                          padding: EdgeInsets.fromLTRB(
                              17 * fem, 12 * fem, 17 * fem, 11 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffbcbcbc)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(7 * fem),
                          ),
                          child: Text(
                            'Membuka Cabang Baru',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff727272),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // emailNjp (21:52)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 1 * fem, 12 * fem),
                    width: 367 * fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // tenorpendanaanJdU (21:55)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 7 * fem),
                          child: Text(
                            'Tenor Pendanaan',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff343434),
                            ),
                          ),
                        ),
                        Container(
                          // autogrouptrdup62 (3wA3pwBqLbDur9cvRXTrDu)
                          padding: EdgeInsets.fromLTRB(
                              17 * fem, 12 * fem, 22 * fem, 11 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffbcbcbc)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(7 * fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // bulanjCz (21:54)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 260 * fem, 0 * fem),
                                child: Text(
                                  '1 Bulan',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff727272),
                                  ),
                                ),
                              ),
                              Container(
                                width: 15 * fem,
                                height: 15 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/chevronleft-5jL.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // emailFBL (63:163)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 1 * fem, 20 * fem),
                    width: 367 * fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // jenisangsuranyt2 (63:167)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 7 * fem),
                          child: Text(
                            'Jenis Angsuran',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff343434),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupq79qW7G (3wA44LyA2UGpNcox48Q79q)
                          padding: EdgeInsets.fromLTRB(
                              17 * fem, 12 * fem, 22 * fem, 11 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffbcbcbc)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(7 * fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // bulanancg6 (63:166)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 260 * fem, 0 * fem),
                                child: Text(
                                  'Bulanan',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff727272),
                                  ),
                                ),
                              ),
                              Container(
                                width: 15 * fem,
                                height: 15 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/chevronleft-5jL.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // jumlahpengajuanjki (21:32)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 1 * fem, 15 * fem),
                    width: 367 * fem,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7 * fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // jumlahpengajuandanafPU (21:36)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 7 * fem),
                          child: Text(
                            'Jumlah  Pengajuan Dana',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff343434),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupdf9rA5L (3wA3VH5vNJ2opiXvZ7df9R)
                          padding: EdgeInsets.fromLTRB(
                              9 * fem, 11 * fem, 265 * fem, 10.97 * fem),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffbcbcbc)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(7 * fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rprTx (21:35)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0.97 * fem, 8 * fem, 0 * fem),
                                child: Text(
                                  'Rp',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff3584ff),
                                  ),
                                ),
                              ),
                              Container(
                                // line2xmt (21:56)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                width: 1 * fem,
                                height: 19.03 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0xffbcbcbc),
                                ),
                              ),
                              Container(
                                // str (21:34)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0.97 * fem, 0 * fem, 0 * fem),
                                child: Text(
                                  '10.000.000',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff727272),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupbicfbZx (3wA2kiUWMoeydkVhp5BiCF)
                    margin: EdgeInsets.fromLTRB(
                        1 * fem, 0 * fem, 27 * fem, 15 * fem),
                    width: double.infinity,
                    height: 30 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group26XCi (21:58)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 2 * fem, 9 * fem, 3 * fem),
                          padding: EdgeInsets.fromLTRB(
                              1.25 * fem, 1.88 * fem, 1.88 * fem, 1.25 * fem),
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xff3584ff),
                          ),
                          child: Center(
                            // image6SKg (21:60)
                            child: SizedBox(
                              width: 21.88 * fem,
                              height: 21.88 * fem,
                              child: Image.asset(
                                'assets/page-1/images/image-6.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // dengankliklanjutkanandatelahme (21:57)
                          constraints: BoxConstraints(
                            maxWidth: 306 * fem,
                          ),
                          child: Text(
                            'Dengan klik Lanjutkan, Anda telah membaca dan menyetujui Syarat & Ketentuan serta Kebikajakn Provasi yang berlaku.',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 10 * ffem,
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
                    // group1reJ (21:61)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 0 * fem),
                    width: 367 * fem,
                    height: 37 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff3584ff),
                      borderRadius: BorderRadius.circular(3 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Konfirmasi Pinjaman',
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
                ],
              ),
            ),
            Container(
              // navbarKXt (63:599)
              padding:
                  EdgeInsets.fromLTRB(25 * fem, 7 * fem, 10 * fem, 8 * fem),
              width: double.infinity,
              height: 62 * fem,
              decoration: BoxDecoration(
                color: Color(0xff3584ff),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group62dYa (63:601)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 120 * fem, 0 * fem),
                    padding: EdgeInsets.fromLTRB(
                        0 * fem, 5.41 * fem, 0 * fem, 0 * fem),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // igaminghouseMDg (63:602)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 1 * fem, 3.07 * fem),
                          width: 26.87 * fem,
                          height: 23.52 * fem,
                          child: Image.asset(
                            'assets/page-1/images/i-gaming-house.png',
                            width: 26.87 * fem,
                            height: 23.52 * fem,
                          ),
                        ),
                        Text(
                          // berandargE (63:604)
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
                  Container(
                    // autogroup3vy1oLa (3wA53QARQohRoRKwRr3Vy1)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 2.25 * fem, 75 * fem, 0 * fem),
                    width: 36 * fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // receiveuuQ (63:609)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 1 * fem, 2.25 * fem),
                          width: 29.77 * fem,
                          height: 27.5 * fem,
                          child: Image.asset(
                            'assets/page-1/images/receive-SL6.png',
                            width: 29.77 * fem,
                            height: 27.5 * fem,
                          ),
                        ),
                        Container(
                          // pinjamS8e (63:606)
                          width: double.infinity,
                          child: Text(
                            'Pinjam',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 10 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupvqgby8a (3wA59jKCygTJtoAjbCVqGB)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 7 * fem, 0 * fem, 0 * fem),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // iconi6A (63:610)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 2.17 * fem, 1.17 * fem),
                          width: 23.83 * fem,
                          height: 23.83 * fem,
                          child: Image.asset(
                            'assets/page-1/images/icon-CiJ.png',
                            width: 23.83 * fem,
                            height: 23.83 * fem,
                          ),
                        ),
                        Text(
                          // tagihanpinjamanEaJ (63:608)
                          'Tagihan & Pinjaman',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
