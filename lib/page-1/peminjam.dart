import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:intl/intl.dart';
import 'package:myapp/models/models.dart';
import 'package:provider/provider.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

// import 'package:myapp/models/user_model.dart';
import 'package:myapp/page-1/navbar-peminjam.dart';
import '../providers/user_provider.dart';
import 'profile.dart';
import 'notifikasi.dart';
import 'isi-saldo.dart';
import 'tarik-saldo.dart';
import 'riwayat-transaksi.dart';

import 'package:myapp/page-1/bayar-pinjaman.dart';
import 'package:myapp/page-1/panduan-peminjaman.dart';
import 'package:myapp/page-1/panduan-pembayaran.dart';

class PeminjamPage extends StatelessWidget {
  const PeminjamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scene(),
      bottomNavigationBar: Navbar(),
    );
  }
}

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    var user = Provider.of<UserProvider>(context, listen: false).peminjam;
    if (user == null) {
      return const Center(child: CircularProgressIndicator());
    }

    List<Pinjaman> pinjamanProses = user.pinjaman
        .where((pinjaman) => pinjaman.status == 'proses')
        .cast<Pinjaman>()
        .toList();

    List<Pinjaman> pinjamanAktif = user.pinjaman
        .where((pinjaman) => pinjaman.status == 'aktif')
        .cast<Pinjaman>()
        .toList();

    List<Pembayaran> pembayaranList = user.pembayaran
        .where((pembayaran) => pembayaran.status == 'belum dibayar')
        .cast<Pembayaran>()
        .toList();

    String namaImage = user.foto;

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/page-1/images/logo.png',
                    width: 150,
                    height: 50,
                  ),
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NotifikasiPage()));
                        },
                        child: Image.asset(
                          'assets/page-1/images/notif-1.png',
                          width: 45,
                          height: 45,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profil()));
                        },
                        child: namaImage != ""
                            ? Image.network(
                                //chrome
                                'http://127.0.0.1:8000/user/getimage/$namaImage',
                                height: 45,
                                width: 45,
                              )
                            : const Text(" Image Tidak Tersedia"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  EdgeInsets.fromLTRB(35 * fem, 13 * fem, 60 * fem, 17 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff3584ff),
                // borderRadius: BorderRadius.circular(10 * fem),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0 * fem, 4 * fem),
                    blurRadius: 2 * fem,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // autogroupejspYge (3w9oRWrX5zazoGTWz4ejSP)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 22 * fem),
                    width: 119 * fem,
                    height: 39 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // danatersediarhL (66:348)
                          left: 0 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 87 * fem,
                              height: 18 * fem,
                              child: Text(
                                'Dana Tersedia',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rp100000000wCz (66:349)
                          left: 0 * fem,
                          top: 16 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 119 * fem,
                              height: 23 * fem,
                              child: Text(
                                'Rp. ${NumberFormat.decimalPattern('id').format(user.saldo)}',
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
                  Container(
                    // autogroupxg6jqJN (3w9oWvsAXpaNN6uDzRxg6j)
                    margin: EdgeInsets.fromLTRB(
                        15 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: 299.5 * fem,
                    height: 64 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // riwayatkw8 (66:351)
                          left: 251.5 * fem,
                          top: 46 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 48 * fem,
                              height: 18 * fem,
                              child: Text(
                                'Riwayat\n',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // tariksaldoeFp (66:353)
                          left: 121.5 * fem,
                          top: 46 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 66 * fem,
                              height: 18 * fem,
                              child: Text(
                                'Tarik Saldo',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // icontariksaldoWYv (66:354)
                          left: 0 * fem,
                          top: 0 * fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                8.5 * fem, 0 * fem, 0 * fem, 0 * fem),
                            width: 296 * fem,
                            height: 64 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5 * fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => IsiSaldo()));
                                  },
                                  child: Container(
                                    // autogroupyy8wQeJ (3w9ojqfKWwwBL6RJ5mYY8w)
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // autogroupeuypMJe (3w9oqfpwP4zxrzb8hreUYP)
                                          margin: EdgeInsets.fromLTRB(1 * fem,
                                              0 * fem, 0 * fem, 6 * fem),
                                          width: 40 * fem,
                                          height: 40 * fem,
                                          child: Image.asset(
                                            'assets/page-1/images/auto-group-euyp.png',
                                            width: 40 * fem,
                                            height: 40 * fem,
                                          ),
                                        ),
                                        Text(
                                          // isisaldo4ir (66:358)
                                          'Isi Saldo',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogroupnjdr1e6 (3w9p5VmEVF8HMXWHxBNjDR)
                                  padding: EdgeInsets.fromLTRB(
                                      76.5 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  height: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      TarikSaldo()));
                                        },
                                        child: Container(
                                          // autogroupwpmmk5t (3w9owAfn7Mc22EyfdmWpMM)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 81 * fem, 0 * fem),
                                          width: 40 * fem,
                                          height: 40 * fem,
                                          child: Image.asset(
                                            'assets/page-1/images/auto-group-wpmm.png',
                                            width: 40 * fem,
                                            height: 40 * fem,
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      RiwayatTransaksiPage()));
                                        },
                                        child: Container(
                                          // autogroupen3hrPp (3w9ozv4Xt1HjipWrBFen3H)
                                          width: 40 * fem,
                                          height: 40 * fem,
                                          child: Image.asset(
                                            'assets/page-1/images/auto-group-en3h.png',
                                            width: 40 * fem,
                                            height: 40 * fem,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Ajuan Pinjaman',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 14 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.5 * ffem / fem,
                  color: Color(0xff020202),
                ),
              ),
            ),
            Expanded(
              child: pinjamanProses.isNotEmpty
                  ? ListAjuanPinjaman(pinjamanList: pinjamanProses)
                  : Center(child: Text('Tidak ada ajuan pinjaman')),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Tagihan Pinjaman',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 14 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.5 * ffem / fem,
                  color: Color(0xff020202),
                ),
              ),
            ),
            Expanded(
              child: pinjamanAktif.isNotEmpty
                  ? ListTagihan(pinjamanAktif, pembayaranList)
                  : Center(child: Text('Tidak ada tagihan pinjaman aktif')),
            ),

            /*
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Panduan',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff020202),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PanduanPeminjaman()));
                        },
                        child: Container(
                          width: 180 * fem,
                          height: 50 * fem,
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
                          child: Center(
                            child: Text(
                              'Peminjaman',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff020202),
                              ),
                            ),
                          ),
                        )
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PanduanPembayaran()));
                        },
                        child: Container(
                          width: 180 * fem,
                          height: 50 * fem,
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
                          child: Center(
                            child: Text(
                              'Panduan Pembayaran',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff020202),
                              ),
                            ),
                          ),
                        )
                      )
                    ],
                  ),
                ],
              ),
            ),
            */
          ],
        ),
      ),
    );
  }
}

class ListTagihan extends StatelessWidget {
  final List<Pinjaman> pinjamanList;
  final List<Pembayaran> pembayaranList;

  ListTagihan(this.pinjamanList, this.pembayaranList);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: pembayaranList.length,
            itemBuilder: (context, index) {
              Pembayaran pembayaran = pembayaranList[index];
              Pinjaman? pinjaman;
              for (int i = 0; i < pinjamanList.length; i++) {
                if (pinjamanList[i].id == pembayaran.pinjamanId) {
                  pinjaman = pinjamanList[i];
                  break;
                }
              }

              DateTime tanggalTagihan =
                  pembayaran.tanggalTagihan; // Tanggal tagihan
              DateTime sekarang = DateTime.now(); // Tanggal saat ini

              Duration selisih = tanggalTagihan.difference(
                  sekarang); // Selisih waktu antara tanggal tagihan dan tanggal saat ini
              int selisihHari = selisih.inDays; // Selisih dalam bentuk hari

              int hariTersisa = 7 - selisihHari; // Jumlah hari tersisa

              if (pinjaman != null) {
                return Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: InkWell(
                    onTap: () {
                      //ISI ROUTE
                    },
                    child: Card(
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black, width: 1.0),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(pinjaman.id
                                    .toString()), // Ganti dengan data yang sesuai dari pinjaman
                                Text("${hariTersisa} Hari Tersisa"),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
                              width: double.infinity,
                              height: 1,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 51, 51, 51),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Jumlah dibayarkan",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        height: 1.5,
                                        color: Color(0xff020202),
                                      ),
                                    ),
                                    Text(
                                      "Rp ${pinjaman.jumlahPembayaran.toStringAsFixed(0)}",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
                                        color: Color(0xff020202),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Total Tagihan",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        height: 1.5,
                                        color: Color(0xff020202),
                                      ),
                                    ),
                                    Text(
                                      "Rp ${pembayaran.jumlahPembayaran.toString()}", // Ganti dengan data yang sesuai dari pinjaman
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
                                        color: Color(0xff020202),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
                              width: double.infinity,
                              height: 1,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 51, 51, 51),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => BayarTagihan(),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xff3584ff),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: Text(
                                    'Bayar',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Text(
                                  "${((pinjaman.jumlahPembayaran / pinjaman.jumlahPinjaman) * 100).toInt()}%",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff020202),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              } else {
                return Container(); // Return an empty container if the corresponding pinjaman is not found
              }
            },
          ),
        ],
      ),
    );
  }
}

class ListAjuanPinjaman extends StatelessWidget {
  final List<Pinjaman> pinjamanList;

  ListAjuanPinjaman({required this.pinjamanList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pinjamanList.length,
      itemBuilder: (context, index) {
        var pinjaman = pinjamanList[index];
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: InkWell(
            onTap: () {
              //ISI ROUTE
            },
            child: Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: Colors.black, width: 1.0),
              ),
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(pinjaman.kode),
                        Text(DateFormat('dd MMMM yyyy')
                            .format(pinjaman.tanggalPinjaman)),
                      ],
                    ),
                    Container(
                      // line4zjG (69:156)
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
                      width: double.infinity,
                      height: 1,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 51, 51, 51),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "${pinjaman.bunga}%",
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                height: 1.5,
                                color: Color(0xff020202),
                              ),
                            ),
                            Text(
                              " bunga",
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                                color: Color(0xff020202),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total Pinjaman",
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                height: 1.5,
                                color: Color(0xff020202),
                              ),
                            ),
                            Text(
                              "Rp ${pinjaman.jumlahPinjaman}",
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                                color: Color(0xff020202),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      // line4zjG (69:156)
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
                      width: double.infinity,
                      height: 1,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 51, 51, 51),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Dana Terkumpul",
                          style: SafeGoogleFont(
                            'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Color(0xff020202),
                          ),
                        ),
                        Text(
                          "${((pinjaman.jumlahDidanai / pinjaman.jumlahPinjaman) * 100).toInt()}%", // Ubah dengan data dana terkumpul sesuai pinjaman
                          style: SafeGoogleFont(
                            'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Color(0xff020202),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
