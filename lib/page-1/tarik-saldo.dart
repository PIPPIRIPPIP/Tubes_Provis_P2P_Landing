import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:myapp/page-1/sukses-tarik.dart';
import 'package:myapp/utils.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

import '../models/user.dart';
import '../providers/user_provider.dart';
import '../services/transaksi_services.dart';

class TarikSaldo extends StatefulWidget {
  @override
  TarikSaldoState createState() => TarikSaldoState();
}

class TarikSaldoState extends State<TarikSaldo> {
  late TextEditingController _controller;

  String _metodePembayaran = '';

  void submitTransaction() async {
    if (_metodePembayaran.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Pilih Metode Pembayaran terlebih dahulu.'),
        ),
      );
      return;
    }

    if (_controller.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Masukkan jumlah saldo terlebih dahulu.'),
        ),
      );
      return;
    }
    
    // Parse the number
    int jumlah = int.parse(_controller.text.replaceAll('.', ''));
    var user = Provider.of<UserProvider>(context, listen: false).user;
    if (user == null) {
      return;
    }
    int userId = user.id;

    print("=> Tarik saldo Rp.${-jumlah}, metode pembayaran ${_metodePembayaran}");

    // Panggil fungsi API dari provider untuk mengirim data transaksi
    TransaksiPembayaran? transaksi = await UserService.sendTransaction(
      context: context,
      userId: userId,
      jenis: "tarik saldo",
      metodePembayaran: _metodePembayaran,
      jumlah: -jumlah,
    );

    if (transaksi != null) {
      // Jika berhasil, perbarui data transaksi di UserProvider
      Provider.of<UserProvider>(context, listen: false)
          .updateTransaksi(transaksi);

      // Jika berhasil, arahkan pengguna ke halaman SuksesTopUp
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SuksesTarik(transaksi)),
      );
    } else {
      // Jika gagal, tampilkan pesan error atau lakukan tindakan yang sesuai
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Terjadi kesalahan saat mengirim transaksi.'),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    var user = Provider.of<UserProvider>(context, listen: false).user;
    if (user == null) {
      return const Center(child: CircularProgressIndicator());
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // tariksaldo2Wa (19:3)
            width: double.infinity,
            height: 736 * fem,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Stack(
              children: [
                Positioned(
                  // autogroupdtxcRVQ (NsxSw1cEF4PQn6yzxzDTXC)
                  left: 0 * fem,
                  top: 0 * fem,
                  child: Container(
                    width: 414 * fem,
                    height: 46 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // group322k6 (66:302)
                          left: 0 * fem,
                          top: 0 * fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                17 * fem, 13 * fem, 272 * fem, 12 * fem),
                            width: 414 * fem,
                            height: 46 * fem,
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
                                  // tariksaldoicv (66:304)
                                  'Tarik Saldo',
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
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  // transferkebankxf8 (19:56)
                  left: 17 * fem,
                  top: 234 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 99 * fem,
                      height: 18 * fem,
                      child: Text(
                        'Transfer ke Bank',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // icommercecreditcardw4S (41:229)
                  left: 119 * fem,
                  top: 231 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 24 * fem,
                      height: 24 * fem,
                      child: Image.asset(
                        'assets/page-1/images/i-commerce-creditcard.png',
                        width: 24 * fem,
                        height: 24 * fem,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // group29qU2 (19:54)
                  left: 0 * fem,
                  top: 65 * fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        0 * fem, 12 * fem, 0 * fem, 20 * fem),
                    width: 414 * fem,
                    height: 150 * fem,
                    decoration: BoxDecoration(
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogrouphtqxfxr (NsxUDixjngEjzRuA44HTqx)
                          margin: EdgeInsets.fromLTRB(
                              17 * fem, 0 * fem, 117 * fem, 8 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // danatersediaQQe (19:12)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 2 * fem, 4 * fem, 0 * fem),
                                child: Text(
                                  'Dana Tersedia  : ',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              RichText(
                                // rp100000000usC (19:24)
                                text: TextSpan(
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 15 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Rp',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '. ',
                                    ),
                                    TextSpan(
                                      text: user.saldo.toString(),
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 20 * ffem,
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
                        Container(
                          // rectangle38Ske (19:49)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 12 * fem),
                          width: double.infinity,
                          height: 1 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                          ),
                        ),
                        Container(
                          // nominalpenarikanNeJ (19:46)
                          margin: EdgeInsets.fromLTRB(
                              7 * fem, 0 * fem, 0 * fem, 7 * fem),
                          child: Text(
                            'Nominal Penarikan',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 36 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                          ),
                          child: Center(
                              child: TextField(
                                controller: _controller,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              TextInputFormatter.withFunction(
                                  (oldValue, newValue) {
                                final parsedValue = int.tryParse(newValue.text);
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
                            // controller: controller,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Masukkan Jumlah Uang',
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1 * ffem / fem,
                                color: Color.fromARGB(255, 197, 197, 197),
                              ),
                              prefixText: 'Rp. ',
                              prefixStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1 * ffem / fem,
                                color: Color(0xff343434),
                              ),
                            ),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1 * ffem / fem,
                              color: Color(0xff343434),
                            ),
                          )),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  // autogroupjkyeye6 (NsxTkeuWZYHtAFgd2DjkYE)
                  left: 0 * fem,
                  top: 252 * fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        16 * fem, 19 * fem, 19 * fem, 28 * fem),
                    width: 570 * fem,
                    height: 484 * fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomButton(
                          imagePath: 'assets/page-1/images/bca.png',
                          text: 'BCA (Bank Central Asia)',
                          onPressed: () {
                            setState(() {
                              _metodePembayaran = 'BCA';
                            });
                          },
                        ),
                        CustomButton(
                          imagePath: 'assets/page-1/images/bni.png',
                          text: 'BNI (Bank Nasional Indonesia)',
                          onPressed: () {
                            setState(() {
                              _metodePembayaran = 'BNI';
                            });
                          },
                        ),
                        CustomButton(
                          imagePath: 'assets/page-1/images/bri.png',
                          text: 'BRI (Bank Rakyat Indonesia)',
                          onPressed: () {
                            setState(() {
                              _metodePembayaran = 'BRI';
                            });
                          },
                        ),
                        CustomButton(
                          imagePath: 'assets/page-1/images/mandiri.png',
                          text: 'Bank Mandiri',
                          onPressed: () {
                            setState(() {
                              _metodePembayaran = 'Mandiri';
                            });
                          },
                        ),
                        CustomButton(
                          imagePath: 'assets/page-1/images/permata.png',
                          text: 'Bank Permata',
                          onPressed: () {
                            setState(() {
                              _metodePembayaran = 'Permata';
                            });
                          },
                        ),
                        SizedBox(
                          height: 70 * fem,
                        ),
                        InkWell(
                          onTap: () {
                            submitTransaction();
                          },
                          child: Container(
                            // group47HVg (63:627)
                            margin: EdgeInsets.fromLTRB(
                                3 * fem, 0 * fem, 0 * fem, 0 * fem),
                            width: 376 * fem,
                            height: 34 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xff3584ff),
                              borderRadius: BorderRadius.circular(3 * fem),
                            ),
                            child: Center(
                              child: Text(
                                'Tarik Saldo',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 15 * ffem,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatefulWidget {
  final String imagePath;
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    required this.imagePath,
    required this.text,
    required this.onPressed,
  });

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 162 * fem, 20 * fem),
      width: double.infinity,
      child: InkWell(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
          widget.onPressed();
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 7 * fem, 0 * fem),
              width: 40 * fem,
              height: 40 * fem,
              decoration: BoxDecoration(
                border: Border.all(
                  color: isSelected
                      ? Colors.blue
                      : Colors.black, // Warna border hitam
                  width: 2 * fem, // Ketebalan border
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Image.asset(
                widget.imagePath,
                width: 40 * fem,
                height: 40 * fem,
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
                child: Text(
                  widget.text,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.5 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
