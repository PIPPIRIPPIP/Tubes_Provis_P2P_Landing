import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class TentangKami extends StatelessWidget {
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
            // tentangkamiYVc (477:164)
            padding:
                EdgeInsets.fromLTRB(25 * fem, 22 * fem, 0 * fem, 417 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // autogrouptveaGAi (W5JtzVj5ro9No2PwKMtveA)
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 134 * fem, 33 * fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          // group66bTt (477:166)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 94.15 * fem, 1.15 * fem),
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
                        // tentangkamiW54 (477:165)
                        'Tentang Kami',
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
                  // autogroupxfreEFx (W5Ju5fF9TFHhad1AZ6Xfre)
                  margin:
                      EdgeInsets.fromLTRB(15 * fem, 0 * fem, 0 * fem, 0 * fem),
                  width: 7507 * fem,
                  child: Align(
                    // investamerupakanplatformteknol (477:169)
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 324 * fem,
                        ),
                        child: Text(
                          'Investa merupakan platform teknologi keuangan mikro terdepan yang memiliki misi mewujudkan kesejahteraan bersama lewat pembangunan infrastruktur keuangan digital bagi ekonomi akar rumput.\n\nBerdiri sejak 2023, Investa hadir sebagai microfinance untuk menghubungkan usaha mikro pedesaan yang dijalankan oleh para perempuan tangguh dengan akses permodalan terjangkau.\n\nKini Investa tumbuh sebagai perusahaan teknologi yang membangun ekosistem keuangan mikro sehingga lebih terhubung dengan ekonomi digital yang berkembang pesat melalui permodalan, investasi dan layanan pembayaran.\n\nInvesta memajukan ekonomi piramida bawah dengan meningkatkan daya saing kewirausahaan mikro dan kecil. Dengan demikian, kami memberdayakan lebih banyak UMKM perempuan, menciptakan lapangan kerja dan membangun pertumbuhan ekonomi yang lebih inklusif.',
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
