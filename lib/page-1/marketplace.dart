import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/models.dart';
import 'package:myapp/page-1/navbar-pendana.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/app_export.dart';

class MarketPlace extends StatelessWidget {
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
    return Scaffold(
      body: Container(
        width: double.infinity,
        child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // marketplaceHPt (28:167)
                padding: EdgeInsets.fromLTRB(1 * fem, 14 * fem, 0 * fem, 0 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // marketplaceNAS (28:172)
                      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 8 * fem, 17 * fem),
                      child: Text(
                        'Marketplace',
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
                      // autogroupgxfcFzv (NsxxzEMvM2HTUdkq5kGXFc)
                      margin: EdgeInsets.fromLTRB(
                          15 * fem, 0 * fem, 17.64 * fem, 17.85 * fem),
                      width: double.infinity,
                      height: 42.15 * fem,
                      child: Container(
                        // seachaGW (45:54)
                        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 170 * fem,
                            0 * fem), // Ubah nilai margin di sini
                        padding: EdgeInsets.fromLTRB(20 * fem, 13 * fem, 30 * fem,
                            13 * fem), // Ubah nilai padding di sini
                        height: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff6c6c70)),
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                        child: TextField(
                          onSubmitted: (value) {
                            // Tindakan yang akan diambil saat tombol "Submit" ditekan
                            print('Nilai yang dicari: $value');
                            // Tambahkan kode logika yang sesuai di sini
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Image.asset(
                              'assets/page-1/images/magnifyingglass.png',
                              width: 16 * fem,
                              height: 16.15 * fem,
                            ),
                            hintText: 'Search',
                            hintStyle: SafeGoogleFont(
                              'SF Pro Display',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1 * ffem / fem,
                              letterSpacing: 0.32 * fem,
                              color: Color(0xff6c6c70),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: LISTUMKM()),
            ],
          )
          
      )
    );
    
  }
}

class LISTUMKM extends StatelessWidget {
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
                        Text("1 Januari 2023"),
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
                          children: [
                            ClipOval(
                              child: Image.asset(
                                'assets/page-1/images/profile-2.png',
                                width: 50,
                                height: 50,
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
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            color: Color(0xff3584ff),
                          ),
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
                        Text("Dana Terkumpul",
                          style: SafeGoogleFont(
                            'Poppins',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff020202),
                          ),
                        ),
                        Text("50%",
                          style: SafeGoogleFont(
                            'Poppins',
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
      },
    );
  }
}
