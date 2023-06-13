import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class SyaratKetentuan extends StatelessWidget {
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
            // syaratdanketentuanYG6 (477:151)
            padding: EdgeInsets.fromLTRB(25 * fem, 22 * fem, 0 * fem, 17 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // autogroupdzc6doL (W5JtZFx8skjY1vyabVdzc6)
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
                          // group66ZS6 (477:153)
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
                        // syaratdanketentuanTGa (477:152)
                        'Syarat dan Ketentuan',
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
                    'I. Definisi',
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
                          '“Akun” adalah identitas unik yang digunakan untuk mengklasifikasikan Anda dan mencatat kegiatan Anda dalam Situs Web dan Layanan kami yang dilakukan dengan cara pendaftaran pada Situs Web Kami.\n“Anda” dengan variasi tata bahasa dan ungkapan yang serumpun, merujuk pada Penerima Dana, Pemberi Dana atau orang lain yang menggunakan Situs Web dan Layanan terlepas dari apakah orang tersebut terdaftar dalam Situs Web atau tidak.\n“Data Pribadi” berarti informasi atau data yang disampaikan secara sukarela oleh Pengguna yang dapat digunakan untuk mengidentifikasi secara langsung atau tidak langsung seorang individu yang merupakan orang perseorangan.\n“Kebijakan Privasi” mengacu pada Kebijakan Privasi di Situs Web dan Layanan ini.\n“Kami” dengan variasi tata bahasa dan ungkapan yang serumpun, merujuk pada Amartha beserta kuasa yang sah dari Amartha.\n“Konten” memiliki arti semua konten pada Situs Web dan/atau Layanan kami, secara keseluruhan atau setiap bagian, termasuk tetapi tidak terbatas pada desain, teks, gambar grafis, foto, gambar, citra, video, perangkat lunak, musik, suara dan file lain, peringkat kredit, tarif, biaya, kuotasi, data historis, grafik, statistik, artikel, informasi kontak kami, setiap informasi lain, dan pemilihan dan pengaturannya.\n“Pemberi Dana” adalah orang perorangan atau badan hukum yang berniat untuk menjadi pendana dan memberikan pendanaan kepada Penerima Dana melalui Layanan kami.\n“Penerima Dana” adalah orang perorangan atau badan hukum yang berniat untuk mencari pendanaan sejumlah uang melalui Layanan kami.',
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
                  // iiketentuanumumUWS (477:160)
                  margin:
                      EdgeInsets.fromLTRB(20 * fem, 0 * fem, 0 * fem, 7 * fem),
                  child: Text(
                    'II. Ketentuan Umum',
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
                  // judulyangdigunakandalamsyaratd (477:161)
                  margin:
                      EdgeInsets.fromLTRB(18 * fem, 0 * fem, 0 * fem, 19 * fem),
                  constraints: BoxConstraints(
                    maxWidth: 326 * fem,
                  ),
                  child: Text(
                    'Judul yang digunakan dalam Syarat dan Ketentuan Umum ini hanya untuk penjelasan dan sebagai referensi Anda saja dan tidak mempengaruhi penafsiran, atau menjadi bahan pertimbagan dalam interpretasi Syarat dan Ketentuan Umum ini.',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 11 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.5 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  // iiipersyaratanumur1ug (477:162)
                  margin:
                      EdgeInsets.fromLTRB(20 * fem, 0 * fem, 0 * fem, 7 * fem),
                  child: Text(
                    'III. Persyaratan Umur',
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
                  // untukdapatmenggunakanlayananda (477:163)
                  margin:
                      EdgeInsets.fromLTRB(18 * fem, 0 * fem, 0 * fem, 0 * fem),
                  constraints: BoxConstraints(
                    maxWidth: 327 * fem,
                  ),
                  child: Text(
                    'Untuk dapat menggunakan Layanan dan Situs Web Kami, Anda harus berusia lebih dari 21 tahun dan tidak berada di bawah pengampuan. Apabila usia Anda berada di bawah 21 tahun atau berada di bawah pengampuan, Anda dapat menggunakan Situs Web dan Layanan Kami hanya dengan keterlibatan orang tua atau wali. Anda harus mendapat persetujuan dari orang tua atau wali hukum Anda, persetujuan mereka terhadap Syarat dan Ketentuan Umum ini dan persetujuan mereka untuk bertanggung jawab terhadap: (i) tindakan Anda; (ii) semua biaya berkaitan dengan penggunaan Layanan apapun atau pembelian Produk; dan (iii) persetujuan penuh Anda terhadap Syarat dan Ketentuan Umum ini. Apabila Anda tidak mendapat persetujuan dari orang tua atau wali Anda, Anda harus berhenti menggunakan/mengakses Situs Web ini dan Layanan Kami.',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 11 * ffem,
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
      ),
    );
  }
}
