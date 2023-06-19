import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:myapp/models/user_model.dart';
import 'package:myapp/page-1/navbar-peminjam.dart';
import 'package:myapp/utils.dart';

import '../models/user.dart';
import '../providers/providers.dart';
import '../services/auth_services.dart';
import 'package:provider/provider.dart';

class FormPeminjaman extends StatefulWidget {
  @override
  State<FormPeminjaman> createState() => FormPeminjamanPage();
}

class FormPeminjamanPage extends State<FormPeminjaman> {
  String tujuanPengajuan = "";
  String jumlahPengajuan = "";
  late TextEditingController inputTujuan;
  late TextEditingController inputJumlah;
  bool isAgreed = false;

  /// Trigger this when "Sign Up" button is clicked
  void _ajukan() async {
    int jumlah = int.parse(inputJumlah.text.replaceAll('.', ''));
    var user = Provider.of<UserProvider>(context, listen: false).peminjam;
    if (user == null) {
      return;
    }
    int userId = user.id;

    // NOTE : If signing-up failed, return null
    Peminjam? userAccount = await AuthService.AjukanPeminjaman(
      context: context,
      tujuan: inputTujuan.text,
      jumlah: jumlah,
      userId: userId,
    );

    // if (userAccount != null) {
    //   // NOTE : Process, if Sign-Up via API successfully
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => const Login()),
    //   );
    // }
  }

  @override
  void initState() {
    super.initState();
    inputTujuan = TextEditingController();
    inputJumlah = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    inputTujuan.dispose();
    inputJumlah.dispose();
  }

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
                  padding: EdgeInsets.fromLTRB(
                      22 * fem, 28 * fem, 24 * fem, 28 * fem),
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
                                  height: 106 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/logo.png',
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
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff343434),
                                ),
                              ),
                            ),
                            Container(
                              // autogroupyadmWSi (3wA3HnR5Cy8bwk5uA2Yadm)
                              padding: EdgeInsets.fromLTRB(17, 12, 17, 11),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffbcbcbc)),
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: TextField(
                                controller: inputTujuan,
                                onChanged: (text) {
                                  setState(() {
                                    tujuanPengajuan = text;
                                  });
                                },
                                style: TextStyle(
                                  // Atur ukuran font pada input
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5,
                                  color: Colors.black,
                                ),
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
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xff343434),
                                ),
                              ),
                            ),
                            Container(
                                // autogroupyadmWSi (3wA3HnR5Cy8bwk5uA2Yadm)
                                padding: EdgeInsets.fromLTRB(17, 8, 17, 8),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xffbcbcbc)),
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: TextField(
                                  controller: inputJumlah,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    TextInputFormatter.withFunction(
                                        (oldValue, newValue) {
                                      final parsedValue =
                                          int.tryParse(newValue.text);
                                      if (parsedValue != null) {
                                        final formatter =
                                            NumberFormat('#,###', 'id_ID');
                                        final newString =
                                            formatter.format(parsedValue);
                                        return TextEditingValue(
                                          text: newString,
                                          selection: TextSelection.collapsed(
                                              offset: newString.length),
                                        );
                                      }
                                      return newValue;
                                    }),
                                  ],
                                  decoration: InputDecoration(
                                    hintText: 'Rp. 100.000.000',
                                    border: InputBorder.none,
                                    hintStyle: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 20 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xff727272),
                                    ),
                                    prefixText: 'Rp. ',
                                    prefixStyle: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 18 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xff727272),
                                    ),
                                  ),
                                  style: TextStyle(
                                    // Atur ukuran font pada input
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5,
                                    color: Colors.black,
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        // PERSETUJUAN
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 27 * fem, 21 * fem),
                        width: double.infinity,
                        height: 30 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              //checkbox
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 2 * fem, 9 * fem, 3 * fem),
                              padding: EdgeInsets.fromLTRB(1.25 * fem,
                                  1.88 * fem, 1.88 * fem, 1.25 * fem),
                              height: double.infinity,
                              child: Center(
                                child: SizedBox(
                                  width: 21.88 * fem,
                                  height: 21.88 * fem,
                                  child: Checkbox(
                                    value: isAgreed,
                                    onChanged: (value) {
                                      setState(() {
                                        isAgreed = value ?? false;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // Teks
                              constraints: BoxConstraints(
                                maxWidth: 300 * fem,
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
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 21 * fem),
                        width: double.infinity,
                        height: 37 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3 * fem),
                        ),
                        child: ElevatedButton(
                          onPressed: isAgreed
                              ? () {
                                  _ajukan();
                                }
                              : null,
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 54, 133, 255),
                            //fixedSize: Size(250, 40),
                          ),
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
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
