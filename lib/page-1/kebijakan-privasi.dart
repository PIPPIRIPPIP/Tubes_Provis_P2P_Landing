import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Kebijakan extends StatelessWidget {
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
            // kebijakanprivasiXh8 (477:79)
            padding:
                EdgeInsets.fromLTRB(25 * fem, 22 * fem, 44 * fem, 86 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupbogi2dt (W5JtE21CKkcqxZciLoboGi)
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 73.5 * fem, 31 * fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          // group66ZNv (477:147)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 77.65 * fem, 1.15 * fem),
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
                        // kebijakanprivasievA (477:113)
                        'Kebijakan Privasi',
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
                  // ikeakuratandatapribadiaop (460:136)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 124 * fem, 9 * fem),
                  child: Text(
                    'I. Keakuratan Data Pribadi',
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
                  // kamimembutuhkandatapribadianda (460:134)
                  margin:
                      EdgeInsets.fromLTRB(18 * fem, 0 * fem, 0 * fem, 26 * fem),
                  constraints: BoxConstraints(
                    maxWidth: 327 * fem,
                  ),
                  child: Text(
                    'Kami membutuhkan Data Pribadi Anda, salah satunya adalah untuk dapat melakukan pemrosesan transaksi. Oleh karena itu, Data Pribadi yang Anda berikan kepada Kami harus seakurat mungkin dan tidak menyesatkan. Anda harus memperbarui dan memberitahukan kepada Kami apabila ada perubahan terhadap Data Pribadi Anda. Anda dengan ini membebaskan Kami dari setiap tuntutan, gugatan, ganti rugi dan atau klaim sehubungan dengan kegagalan pemrosesan pada Layanan Kami yang disebabkan oleh ketidakakuratan Data Pribadi yang Anda berikan kepada Kami.',
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
                  // iipengumpulandatapribadianda63 (477:150)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 62 * fem, 9 * fem),
                  child: Text(
                    'II. Pengumpulan Data Pribadi Anda',
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
                  // penyediaandatapribadiandabersi (460:137)
                  margin:
                      EdgeInsets.fromLTRB(12 * fem, 0 * fem, 0 * fem, 0 * fem),
                  constraints: BoxConstraints(
                    maxWidth: 327 * fem,
                  ),
                  child: Text(
                    'Penyediaan Data Pribadi Anda bersifat sukarela. Namun, jika Anda tidak memberikan Data Pribadi Anda kepada Kami, Kami tidak akan dapat memproses Data Pribadi Anda untuk tujuan yang diuraikan di bawah ini, dan dapat menyebabkan Kami tidak dapat memberikan Layanan Kami.\nAnda dengan ini setuju bahwa dari waktu ke waktu, Kami dapat mengumpulkan Data Pribadi Anda yang dapat Kami peroleh melalui:\nAnda ataupun siapapun yang memiliki izin dan persetujuan dari Anda untuk memberikan Data Pribadi dalam rangka mengakses Situs Web dan/atau Layanan Kami;\nsetiap kunjungan Anda ke Situs Web dan/atau Layanan Kami;\npercakapan telepon Anda dengan Kami;\ndari sumber luar termasuk namun tidak terbatas pada agen referensi kredit dan penyedia layanan pelanggan terkait kelayakan dan sejarah kredit;\nsumber-sumber yang tersedia secara umum yang dapat diperoleh oleh Kami tanpa melalui persetujuan dan pengetahuan Anda;\npenggunaan sistem komputer oleh Anda, yaitu informasi mengenai alamat IP, sistem operasi dan browser yang Anda gunakan;\npenggunaan “cookies” saat browser Anda mengakses dan Anda masuk (log-in) pada Situs Web kami. Jika diaktifkan (enabled), cookies akan menyimpan sejumlah kecil data pada komputer Anda tentang kunjungan Anda ke beberapa halaman Situs Web ini; dan/atau',
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
