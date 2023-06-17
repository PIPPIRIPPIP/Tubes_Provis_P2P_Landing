import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:myapp/providers/providers.dart';
import 'package:myapp/services/services.dart';
import 'package:myapp/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _logOut() async {
    bool removeSuccess = await LocalStoreServices.removeFromLocal(context);
    if (removeSuccess) {
      if (!mounted) return;
      Provider.of<UserProvider>(context, listen: false).setUserNull();
    }
  }

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserProvider>(context, listen: false).user;

    if (user == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Home Page", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 35),

            Text("Email: ${user.email}", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 15),

            Text("Password: ${user.password}", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 15),

            Text("Tanggal Dibuat: ${user.tanggalDibuat.toString()}", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 15),

            Text("Nama: ${user.nama}", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 15),

            Text("Nomor Ponsel: ${user.nomorPonsel}", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 15),

            Text("Saldo: ${user.saldo}", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 15),

            Text("Foto: ${user.foto}", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 15),

            Text("Jenis User: ${user.jenisUser}", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 15),

            Text("Notifikasi: ${user.notifikasi.toString()}", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 15),

            Text("Transaksi Pembayaran: ${user.transaksiPembayaran.toString()}", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 15),

            Text("JWT token : ${user.token}", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 30),

            CustomElevatedButton(
              onPressfunc: _logOut,
              buttonText: "Log out",
            ),
          ],
        ),
      ),
    );
  }
}