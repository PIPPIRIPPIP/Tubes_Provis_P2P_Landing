import 'package:flutter/material.dart';
import 'package:myapp/app_export.dart';
import 'package:myapp/custom_widgets/custom_button.dart';
import 'package:myapp/models/user_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';


class DetailInvestasi extends StatelessWidget {
  const DetailInvestasi({super.key});

  // final User user;

  // DetailInvestasi({required this.user});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              // group27iCv (63:342)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
              padding: EdgeInsets.fromLTRB(17 * fem, 13 * fem, 0 * fem, 12 * fem),
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
                    'Detail Investasi',
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
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/page-1/images/profile-2.png',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("GATSBY DEL REY",
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                height: 1.5,
                                color: Color(0xff020202),
                              ),
                            ),
                            Text("Kuliner",
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 14,
                                height: 1.5,
                                color: Color(0xff020202),
                              ),
                            ),
                            Text("Bandung, Jawa Barat",
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 14,
                                height: 1.5,
                                color: Color(0xff020202),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
            
                  Text("A+",
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      height: 1.5,
                      color: Color(0xff3584ff),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,
              height: 1,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 51, 51, 51),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("Jumlah Investasi",
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      ),
                      // Uang yang dia investasiin
                      Text("Rp 10.000.000",
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Imbal Hasil",
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      ),
                      // Persen Keuntungan yang dia dapat
                      Text("10%",
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                          color: Color(0xff3584ff),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Keuntungan",
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      ),
                      // Nominal keuntangan yg didapat, 10% dari Jumlah uang investasi
                      Text("Rp 1.000.000",
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,
              height: 1,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 51, 51, 51),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("No Peminjaman",
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      ),
                      Text("P012345",
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tujuan Peminjaman",
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      ),
                      Text("Modal Buka Cabang Usaha",
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Status",
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      ),
                      Text("Sedang Berlangsung",
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tanggal Peminjaman",
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      ),
                      Text("1 Januari 2023",
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tanggal Selesai",
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      ),
                      Text("-",
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          height: 1.5,
                          color: Color(0xff020202),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )

          ],
        )
      )
    );
  }
}

