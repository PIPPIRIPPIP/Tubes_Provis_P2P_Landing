import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class RiwayatTransaksiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        child: Container(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
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
                        'Riwayat Transaksi',
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
                Expanded(
                  child: DaftarTransaksi()
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DaftarTransaksi extends StatelessWidget {
  final List<Map<String, String>> data = [
    {
      'Title': 'Bayar Pinjaman',
      'description': 'Via BCA',
      'date' : '30 Mei 2023',
      'jumlah' : '1.000.000'
    },
    {
      'Title': 'Pinjaman Terdanai',
      'description': 'Via BCA',
      'date' : '29 Mei 2023',
      'jumlah' : '1.000.000'
    },
    {
      'Title': 'Pinjaman Terdanai',
      'description': 'Via BCA',
      'date' : '28 Mei 2023',
      'jumlah' : '1.000.000'
    },
    {
      'Title': 'Pinjaman Terdanai',
      'description': 'Via BCA',
      'date' : '27 Mei 2023',
      'jumlah' : '1.000.000'
    },
    {
      'Title': 'Tarik Dana',
      'description': 'Via BCA',
      'date' : '26 Mei 2023',
      'jumlah' : '1.000.000'
    },
    {
      'Title': 'Pinjaman Terdanai',
      'description': 'Via BCA',
      'date' : '25 Mei 2023',
      'jumlah' : '1.000.000'
    },
    {
      'Title': 'Pinjaman Terdanai',
      'description': 'Via BCA',
      'date' : '24 Mei 2023',
      'jumlah' : '1.000.000'
    },
    {
      'Title': 'Tarik Dana',
      'description': 'Via BCA',
      'date' : '23 Mei 2023',
      'jumlah' : '1.000.000'
    },
    {
      'Title': 'Pinjaman Terdanai',
      'description': 'Via BCA',
      'date' : '22 Mei 2023',
      'jumlah' : '1.000.000'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Center(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Card(
                    child: ListTile(
                        subtitle: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(data[index]['Title']!,
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                Text(data[index]['description']!,
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                Text(data[index]['date']!),
                              ],
                            ),
                            Text('${data[index]['Title'] == 'Bayar Pinjaman' || data[index]['Title'] == 'Tarik Dana' ? '-' : '+'}${data[index]['jumlah']}',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: data[index]['Title'] == 'Bayar Pinjaman' || data[index]['Title'] == 'Tarik Dana' ? Colors.red : Colors.green,
                              ),
                            ),
                          ],
                        ),
                    ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}