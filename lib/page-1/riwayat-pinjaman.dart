import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/detail-ajuan-peminjaman.dart';
import 'package:myapp/page-1/detail-riwayat-peminjaman.dart';
import 'package:myapp/page-1/navbar-peminjam.dart';
import 'package:myapp/utils.dart';

import '../models/user.dart';
import 'package:myapp/page-1/bayar-pinjaman.dart';

import '../providers/user_provider.dart';

class RiwayatPeminjaman extends StatelessWidget {
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

    List<Pinjaman> pinjamanLunas = user.pinjaman
        .where((pinjaman) => pinjaman.status == 'lunas')
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

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Text(
                'Tagihan Pinjaman',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.5 * ffem / fem,
                  color: Color(0xff3584ff),
                ),
              ),
            ),
            Expanded(
              child: pinjamanAktif.isNotEmpty
                  ? ListTagihan(pinjamanAktif, pembayaranList)
                  : Center(child: Text('Tidak ada tagihan pinjaman aktif')),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Text(
                'Riwayat Pinjaman',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.5 * ffem / fem,
                  color: Color(0xff3584ff),
                ),
              ),
            ),
            Expanded(
              child: pinjamanLunas.isNotEmpty
                  ? ListRiwayatPinjaman(pinjamanList: pinjamanLunas)
                  : Center(child: Text('Tidak ada riwayat pinjaman')),
            ),
          ],
        ),
      ),
    );
  }
}

//TAGIHAN PINJAMAN
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

// PINJAMAN YANG SUDAH LUNAS DISINI
class ListRiwayatPinjaman extends StatelessWidget {
  final List<Pinjaman> pinjamanList;

  ListRiwayatPinjaman({required this.pinjamanList});

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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailRiwayatPeminjaman()));
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
                        Text(pinjaman.status),
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
                          DateFormat('dd MMMM yyyy')
                              .format(pinjaman.tanggalPinjaman),
                          style: SafeGoogleFont(
                            'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Color(0xff020202),
                          ),
                        ),
                        Text(
                          "hingga",
                          style: SafeGoogleFont(
                            'Poppins',
                            color: Color(0xff020202),
                          ),
                        ),
                        Text(
                          pinjaman.tanggalSelesai,
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
