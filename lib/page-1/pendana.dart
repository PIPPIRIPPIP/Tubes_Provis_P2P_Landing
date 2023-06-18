import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:provider/provider.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/models.dart';
import 'package:myapp/page-1/isi-saldo.dart';
import 'package:myapp/page-1/navbar-pendana.dart';
import 'package:myapp/page-1/profile-pendana.dart';
import 'package:myapp/page-1/riwayat-transaksi.dart';
import 'package:myapp/page-1/tarik-saldo.dart';
import 'package:myapp/utils.dart';

import '../providers/user_provider.dart';
import 'package:myapp/page-1/panduan-pendanaan.dart';

import 'package:myapp/page-1/portofolio.dart';

import 'notifikasi.dart';

class PendanaPage extends StatelessWidget {
  const PendanaPage({super.key});
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
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            //BAGIAN ATAS
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/page-1/images/logo.png',
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
                                  builder: (context) => ProfilPendana()));
                        },
                        child: Image.asset(
                          'assets/page-1/images/profile-1.png',
                          width: 45,
                          height: 45,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              // group32Uuk (66:365)
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
                    // autogroupagwiy5p (NsxnzwAqhVSfuGLBQSAgWi)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 22 * fem),
                    width: 119 * fem,
                    height: 39 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // danatersediaVZx (66:367)
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
                          // rp100000000yk2 (66:368)
                          left: 0 * fem,
                          top: 16 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 119 * fem,
                              height: 23 * fem,
                              child: Text(
                                'Rp. ${user.saldo}',
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
                    // autogroupmqpcHEv (Nsxo5MD9jp3rM9RyLGmqPc)
                    margin: EdgeInsets.fromLTRB(
                        23 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: 299.5 * fem,
                    height: 64 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // riwayatCcn (66:370)
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
                          // tariksaldo5wU (66:372)
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
                          // icontariksaldom3c (66:373)
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Investisaku',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.5 * ffem / fem,
                      color: Color(0xff020202),
                    ),
                  ),
                  TextButton(
                    // lihatsemuaTTt (38:8)
                    onPressed: () {   
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Portofolio()));
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      'Lihat semua',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff727272),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //DAFTAR INVESTASIKU
            Expanded(child: InvestasiBerlangsung()),
                
                
            //PANDUAN
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
                              MaterialPageRoute(builder: (context) => PanduanPendanaan()));
                        },
                        child: Container(
                          width: 180 * fem,
                          height: 90 * fem,
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
                                'Pendanaan',
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
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => PanduanPembayaran()));
                        },
                        child: Container(
                          width: 180 * fem,
                          height: 90 * fem,
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
                                'Pembayaran',
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
          ],
        ),
      ),
    );
  }
}

//BUAT LIST INVESTASI YANG BELUM SELESAI / SEDANG BERLANGSUNG

class InvestasiBerlangsung extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5, 
      itemBuilder: (context, index) {
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
                        Text("P012345"),
                        Text("Sedang Berlangsung"),
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
                        Text("Total Investasi",
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: Color(0xff020202),
                          ),
                        ),
                        Text("Rp 10.000.000",
                          style: SafeGoogleFont(
                            'Poppins',
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
                        Text("Keuntungan",
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: Color(0xff020202),
                          ),
                        ),
                        Text("Rp 1.000.000",
                          style: SafeGoogleFont(
                            'Poppins',
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
