import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/daftar-investor.dart';
// import 'package:myapp/page-1/login.dart';
// import 'package:myapp/page-1/daftar-peminjam-perorangan.dart';
// import 'package:myapp/page-1/daftar-peminjam-perusahaan.dart';
// import 'package:myapp/page-1/peminjam.dart';
// import 'package:myapp/page-1/riwayat-pinjaman.dart';
// import 'package:myapp/page-1/profile.dart';
// import 'package:myapp/page-1/riwayat-transaksi-peminjam.dart';
// import 'package:myapp/page-1/form-pengajuan-peminjaman.dart';
// import 'package:myapp/page-1/frame-3.dart';
// import 'package:myapp/page-1/notifikasi.dart';
// import 'package:myapp/page-1/navbar-pendana.dart';
// import 'package:myapp/page-1/navbar-peminjam.dart';
// import 'package:myapp/page-1/frame-2.dart';
// import 'package:myapp/page-1/pilih-akun.dart';
//import 'package:myapp/page-1/halaman-awal.dart';

import 'package:myapp/bloc/user_bloc.dart';
import 'package:myapp/ui/pages/first_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Scaffold(
      //   // appBar: AppBar(),
      //   body: SingleChildScrollView(
      //     child: Scene(),
      //   ),
      //   // bottomNavigationBar: SingleChildScrollView(
      //   //   child: Navbar(),
      //   // ),
      // ),
      home: BlocProvider<UserBloc>(
        create: (context) => UserBloc()..add(FetchDataEvent()),
        child: FirstPage(),
      ),
    );
  }
}
