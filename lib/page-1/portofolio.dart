import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:myapp/page-1/detail-investasi.dart';
import 'package:provider/provider.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/models.dart';
import 'package:myapp/page-1/navbar-pendana.dart';
import 'package:myapp/utils.dart';

import '../providers/user_provider.dart';

class Portofolio extends StatelessWidget {
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

    var user = Provider.of<UserProvider>(context, listen: false).pendana;
    if (user == null) {
      return const Center(child: CircularProgressIndicator());
    }

    List<Investasi> aktifInvestasi = user.investasi
        .where((investasi) => investasi.status == "aktif")
        .toList();

    List<Investasi> selesaiInvestasi = user.investasi
        .where((investasi) => investasi.status == "selesai")
        .toList();

    int totalJumlahInvestasi = aktifInvestasi.fold(
        0, (sum, investasi) => sum + investasi.jumlahInvestasi);
    int totalKeuntungan =
        aktifInvestasi.fold(0, (sum, investasi) => sum + investasi.keuntungan);

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Portofolio',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5 * ffem / fem,
                      color: Color(0xff3584ff),
                    ),
                  ),
                ),
                Container(
                  // autogroupp7vnKca (NsxpZPa7sqa2FcuVyLp7vn)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 2 * fem, 22 * fem),
                  padding: EdgeInsets.fromLTRB(
                      122.5 * fem, 10 * fem, 118.5 * fem, 17 * fem),
                  width: 380 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xff3584ff),
                    borderRadius: BorderRadius.circular(24 * fem),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupnq66CRU (NsxphtKxpeKemjKn8qnq66)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 8 * fem),
                        width: double.infinity,
                        height: 58 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // totalasetiuc (46:152)
                              left: 19.5 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 99 * fem,
                                  height: 30 * fem,
                                  child: Text(
                                    'Total Aset',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 20 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // rp15000000DLa (46:153)
                              left: 0 * fem,
                              top: 28 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 139 * fem,
                                  height: 30 * fem,
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 20 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xffffffff),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Rp.',
                                        ),
                                        TextSpan(
                                          text: totalJumlahInvestasi.toString(),
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 20 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupbzdtWU6 (NsxpmtDJSfrRFYhSSxbzDt)
                        margin: EdgeInsets.fromLTRB(
                            2.5 * fem, 0 * fem, 2.5 * fem, 0 * fem),
                        width: double.infinity,
                        height: 43 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // totalkeuntunganDtJ (46:155)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 134 * fem,
                                  height: 23 * fem,
                                  child: Text(
                                    'Total Keuntungan',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 15 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // rp15000006hC (54:70)
                              left: 17 * fem,
                              top: 20 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 100 * fem,
                                  height: 23 * fem,
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xffffffff),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Rp. ',
                                        ),
                                        TextSpan(
                                          text: totalKeuntungan.toString(),
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 15 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ],
                                    ),
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
              ],
            ),
            Container(
              // daftarinvestasiB6N (69:117)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 17.5 * fem, 0 * fem),
              child: Text(
                'Daftar Investasi',
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
                child: InvestasiCard(
              investasi: aktifInvestasi,
            )),
            Container(
              // daftarinvestasiB6N (69:117)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 17.5 * fem, 0 * fem),
              child: Text(
                'Riwayat Investasi',
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
                child: InvestasiCard(
              investasi: selesaiInvestasi,
            )),
          ],
        ),
      ),
    );
  }
}

//BUAT LIST INVESTASI YANG BELUM SELESAI
class InvestasiCard extends StatelessWidget {
  final List<Investasi> investasi;

  InvestasiCard({required this.investasi});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: investasi.length,
      itemBuilder: (context, index) {
        var item = investasi[index];
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailInvestasi()));
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
                        Text("P23A00${item.id}"),
                        Text(item.status),
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
                        Text(
                          "Total Investasi",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: Color(0xff020202),
                          ),
                        ),
                        Text(
                          "Rp ${item.jumlahInvestasi}",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: Color(0xff020202),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Keuntungan",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: Color(0xff020202),
                          ),
                        ),
                        Text(
                          "Rp ${item.keuntungan}",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
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
