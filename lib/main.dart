import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:myapp/page-1/peminjam.dart';
import 'package:myapp/page-1/pendana.dart';
import 'package:myapp/providers/user_provider.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/screens/signup_screen.dart';
import 'package:myapp/services/auth_services.dart';
import 'package:myapp/services/local_store_services.dart';
import 'package:myapp/ui/pages/login.dart';
import 'package:provider/provider.dart';
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

import 'models/user.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  /// get User data from backend, then notify UserProvider
  void _getUserData() async {
    String? existedToken = await LocalStoreServices.getFromLocal(context);
    if (existedToken != null) {
      User? user =
          await AuthService.getUser(context: context, token: existedToken);
      if (user != null) {
        if (!mounted) return null;
        Provider.of<UserProvider>(context, listen: false)
            .setUserFromModel(user);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _getUserData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Consumer<UserProvider>(
        builder: (context, userProvider, child) {
          if (userProvider.user != null) {
            if (userProvider.user?.jenisUser == "pendana") {
              return PendanaPage();
            } else if (userProvider.user?.jenisUser == "peminjam") {
              return PeminjamPage();
            }
          }
          // if (userProvider.user != null) {
          //   return const HomePage();
          // }

          // return const Login();
          return FirstPage();
          // return SignUpPage();
        },
      ),
      // home: BlocProvider<UserBloc>(
      //   create: (context) => UserBloc()..add(FetchDataEvent()),
      //   child: FirstPage(),
      // ),
    );
  }
}
