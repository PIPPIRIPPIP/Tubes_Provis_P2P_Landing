import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:provider/provider.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/sukses-topup.dart';
import 'package:myapp/utils.dart';

import '../models/user.dart';
import '../providers/user_provider.dart';
import '../services/transaksi_services.dart';

class IsiSaldo extends StatefulWidget {
  @override
  IsiSaldoState createState() => IsiSaldoState();
}

class IsiSaldoState extends State<IsiSaldo> {
  late TextEditingController _controller;

  String _metodePembayaran = '';

  int _selectedButtonIndex = -1;

  void submitTransaction(String metodePembayaran) async {
    if (_controller.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Masukkan jumlah saldo terlebih dahulu.'),
        ),
      );
      return;
    }
    
    // Parse the number
    int jumlah = int.parse(_controller.text);
    var user = Provider.of<UserProvider>(context, listen: false).user;
    if (user == null) {
      return;
    }
    int userId = user.id;

    print("=> Isi saldo Rp.${jumlah}, metode pembayaran ${metodePembayaran}");

    // Panggil fungsi API dari provider untuk mengirim data transaksi
    TransaksiPembayaran? transaksi = await UserService.sendTransaction(
      context: context,
      userId: userId,
      jenis: "isi saldo",
      metodePembayaran: metodePembayaran,
      jumlah: jumlah,
    );

    if (transaksi != null) {
      // Jika berhasil, perbarui data transaksi di UserProvider
      Provider.of<UserProvider>(context, listen: false)
          .updateTransaksi(transaksi);

      // Jika berhasil, arahkan pengguna ke halaman SuksesTopUp
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SuksesTopUp(transaksi)),
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // isisaldornJ (63:229)
            padding: EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // group27yc2 (63:243)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 14 * fem),
                  padding: EdgeInsets.fromLTRB(
                      17 * fem, 13 * fem, 291 * fem, 12 * fem),
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
                        // isisaldofjk (63:245)
                        'Isi Saldo',
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
                  // jumlahisisaldorp1Yi (63:258)
                  margin:
                      EdgeInsets.fromLTRB(13 * fem, 0 * fem, 0 * fem, 0 * fem),
                  child: Text(
                    'Jumlah Isi Saldo (Rp)',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.5 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  // autogroupvm1yKZQ (NsxWMfQE3VgWrkUdjhVM1Y)
                  padding: EdgeInsets.fromLTRB(
                      12 * fem, 11 * fem, 12 * fem, 78 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // autogroupzel62Tp (NsxVYmahH9KBpKHSzMzeL6)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 20 * fem),
                        height: 50 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            PressableButton(
                              text: '20.000',
                              onPressed: () {
                                setState(() {
                                  _controller.text = '20000';
                                  _selectedButtonIndex = 0;
                                });
                              },
                              isSelected: _selectedButtonIndex == 0,
                            ),
                            SizedBox(
                              width: 16 * fem,
                            ),
                            PressableButton(
                              text: '50.000',
                              onPressed: () {
                                setState(() {
                                  _controller.text = '50000';
                                  _selectedButtonIndex = 1;
                                });
                              },
                              isSelected: _selectedButtonIndex == 1,
                            ),
                            SizedBox(
                              width: 16 * fem,
                            ),
                            PressableButton(
                              text: '100.000',
                              onPressed: () {
                                setState(() {
                                  _controller.text = '100000';
                                  _selectedButtonIndex = 2;
                                });
                              },
                              isSelected: _selectedButtonIndex == 2,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupavrwF7c (NsxVnWgo6rppiSFnK9AVrW)
                        margin: EdgeInsets.fromLTRB(
                            1 * fem, 0 * fem, 0 * fem, 14 * fem),
                        height: 50 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            PressableButton(
                              text: '200.000',
                              onPressed: () {
                                setState(() {
                                  _controller.text = '200000';
                                  _selectedButtonIndex = 3;
                                });
                              },
                              isSelected: _selectedButtonIndex == 3,
                            ),
                            SizedBox(
                              width: 16 * fem,
                            ),
                            PressableButton(
                              text: '300.000',
                              onPressed: () {
                                setState(() {
                                  _controller.text = '300000';
                                  _selectedButtonIndex = 4;
                                });
                              },
                              isSelected: _selectedButtonIndex == 4,
                            ),
                            SizedBox(
                              width: 16 * fem,
                            ),
                            PressableButton(
                              text: '500.000',
                              onPressed: () {
                                setState(() {
                                  _controller.text = '500000';
                                  _selectedButtonIndex = 5;
                                });
                              },
                              isSelected: _selectedButtonIndex == 5,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // masukkanjumlahrp7Se (63:259)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 6 * fem),
                        child: Text(
                          'Masukkan Jumlah (Rp)',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        // autogrouppqyzdQz (NsxWCzyzXmhX9pAhj7PqYz)
                        margin: EdgeInsets.fromLTRB(
                            1 * fem, 0 * fem, 0 * fem, 14 * fem),
                        padding: EdgeInsets.fromLTRB(
                            11 * fem, 7 * fem, 11 * fem, 7 * fem),
                        width: 389 * fem,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffbcbcbc)),
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(10 * fem),
                        ),
                        child: TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Rp. 50.000',
                            hintStyle: SafeGoogleFont(
                              'Poppins',
                              fontSize: 24 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: Color.fromARGB(255, 116, 115, 115),
                            ),
                          ),
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 24 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Container(
                        // metodepembayaran6Ja (69:259)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 6 * fem),
                        child: Text(
                          'Metode Pembayaran',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        // group49CcW (69:270)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 11 * fem),
                        padding: EdgeInsets.fromLTRB(
                            10 * fem, 8 * fem, 20 * fem, 14 * fem),
                        width: 389 * fem,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffbcbcbc)),
                          color: Color.fromARGB(255, 241, 241, 241),
                          borderRadius: BorderRadius.circular(10 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroupwfweGMU (NsxWqQ71YJYqSEFn9tWFWE)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 8 * fem, 9 * fem),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // virtualaccountvabuY (69:261)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 224 * fem, 0 * fem),
                                    child: Text(
                                      'Virtual Account (VA)',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // group48hxa (69:269)
                              margin: EdgeInsets.fromLTRB(
                                  11 * fem, 0 * fem, 0 * fem, 0 * fem),
                              height: 51 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7 * fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: ImageButton(
                                        text: "MANDIRI",
                                        imagePath:
                                            "../assets/page-1/images/mandiri.png",
                                        onPressed: () {
                                          submitTransaction("MANDIRI");
                                        }),
                                  ),
                                  SizedBox(
                                    width: 37 * fem,
                                  ),
                                  Expanded(
                                    child: ImageButton(
                                        text: "BRI",
                                        imagePath:
                                            "../assets/page-1/images/bri.png",
                                        onPressed: () {
                                          submitTransaction("BRI");
                                        }),
                                  ),
                                  SizedBox(
                                    width: 37 * fem,
                                  ),
                                  Expanded(
                                    child: ImageButton(
                                        text: "BCA",
                                        imagePath:
                                            "../assets/page-1/images/bca.png",
                                        onPressed: () {
                                          submitTransaction("BCA");
                                        }),
                                  ),
                                  SizedBox(
                                    width: 37 * fem,
                                  ),
                                  Expanded(
                                    child: ImageButton(
                                        text: "BNI",
                                        imagePath:
                                            "../assets/page-1/images/bni.png",
                                        onPressed: () {
                                          submitTransaction("BNI");
                                        }),
                                  ),
                                  SizedBox(
                                    width: 37 * fem,
                                  ),
                                  Expanded(
                                    child: ImageButton(
                                        text: "PERMATA",
                                        imagePath:
                                            "../assets/page-1/images/permata.png",
                                        onPressed: () {
                                          submitTransaction("PERMATA");
                                        }),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // group50qug (69:291)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 11 * fem),
                        padding: EdgeInsets.fromLTRB(
                            10 * fem, 8 * fem, 20 * fem, 14 * fem),
                        width: 389 * fem,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffbcbcbc)),
                          color: Color.fromARGB(255, 241, 241, 241),
                          borderRadius: BorderRadius.circular(10 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // autogroup4pkrX1p (NsxXFdud7qaV6NLDoE4Pkr)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 8 * fem, 9 * fem),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // ewalletSuU (69:293)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 290 * fem, 0 * fem),
                                    child: Text(
                                      'E-Wallet',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // group48AKg (69:295)
                              margin: EdgeInsets.fromLTRB(
                                  11 * fem, 0 * fem, 0 * fem, 0 * fem),
                              height: 51 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7 * fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: ImageButton(
                                        text: "GOPAY",
                                        imagePath:
                                            "../assets/page-1/images/gopay.png",
                                        onPressed: () {
                                          submitTransaction("GOPAY");
                                        }),
                                  ),
                                  SizedBox(
                                    width: 35 * fem,
                                  ),
                                  Expanded(
                                    child: ImageButton(
                                        text: "ShopeePay",
                                        imagePath:
                                            "../assets/page-1/images/shopee.png",
                                        onPressed: () {
                                          submitTransaction("ShopeePay");
                                        }),
                                  ),
                                  SizedBox(
                                    width: 37 * fem,
                                  ),
                                  Expanded(
                                    child: ImageButton(
                                        text: "LinkAja",
                                        imagePath:
                                            "../assets/page-1/images/linkaja.png",
                                        onPressed: () {
                                          submitTransaction("LinkAja");
                                        }),
                                  ),
                                  SizedBox(
                                    width: 37 * fem,
                                  ),
                                  Expanded(
                                    child: ImageButton(
                                        text: "DANA",
                                        imagePath:
                                            "../assets/page-1/images/dana.png",
                                        onPressed: () {
                                          submitTransaction("DANA");
                                        }),
                                  ),
                                  SizedBox(
                                    width: 37 * fem,
                                  ),
                                  Expanded(
                                    child: ImageButton(
                                        text: "OVO",
                                        imagePath:
                                            "../assets/page-1/images/ovo.png",
                                        onPressed: () {
                                          submitTransaction("OVO");
                                        }),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // group512aA (69:311)
                        padding: EdgeInsets.fromLTRB(
                            10 * fem, 8 * fem, 10 * fem, 14 * fem),
                        width: 389 * fem,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffbcbcbc)),
                          color: Color.fromARGB(255, 241, 241, 241),
                          borderRadius: BorderRadius.circular(10 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // autogroupxl3p8dC (NsxXgTXbgauuuQ2SuNXL3p)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 18 * fem, 9 * fem),
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // minimarketf7L (69:313)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 275 * fem, 0 * fem),
                                    child: Text(
                                      'Mini Market ',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // group48yNv (69:315)
                              margin: EdgeInsets.fromLTRB(
                                  10 * fem, 0 * fem, 0 * fem, 0 * fem),
                              height: 51 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7 * fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // group51hJv (69:328)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 35 * fem, 0 * fem),
                                    width: 43 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(7 * fem),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: ImageButton(
                                              text: "Indomaret",
                                              imagePath:
                                                  "../assets/page-1/images/indomaret.png",
                                              onPressed: () {
                                                submitTransaction("Indomaret");
                                              }),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // group52JJi (69:325)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 37 * fem, 0 * fem),
                                    width: 40 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(7 * fem),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: ImageButton(
                                              text: "Alfamart",
                                              imagePath:
                                                  "../assets/page-1/images/alfa.png",
                                              onPressed: () {
                                                submitTransaction("Alfamart");
                                              }),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // group53JCE (69:322)
                                    width: 40 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(7 * fem),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: ImageButton(
                                              text: "Alfamidi",
                                              imagePath:
                                                  "../assets/page-1/images/alfamidi.png",
                                              onPressed: () {
                                                submitTransaction("Alfamidi");
                                              }),
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

class PressableButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isSelected;

  const PressableButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isSelected = false,
  }) : super(key: key);

  @override
  _PressableButtonState createState() => _PressableButtonState();
}

class _PressableButtonState extends State<PressableButton> {
  bool _isPressed = false;
  TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return InkWell(
      onTap: () {
        setState(() {
          _isPressed = !_isPressed;
        });

        widget.onPressed();
      },
      child: Container(
        width: 119 * fem,
        height: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.isSelected ? Color(0xff3584ff) : Color(0xffbcbcbc),
          ),
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
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 24 * ffem,
              fontWeight: FontWeight.w400,
              height: 1.5 * ffem / fem,
              color: widget.isSelected ? Color(0xff3584ff) : Color(0xff5f5f5f),
            ),
          ),
        ),
      ),
    );
  }
}

class ImageButton extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback onPressed;

  const ImageButton({
    Key? key,
    required this.text,
    required this.imagePath,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 40 * fem,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7 * fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 39 * fem,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(7 * fem),
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffd9d9d9),
              ),
              child: Image.asset(
                imagePath,
                fit: BoxFit.fill,
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                text,
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 8 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
