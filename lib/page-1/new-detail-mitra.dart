import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:myapp/ui/widgets/button.dart';
import 'package:myapp/app_export.dart';
import 'package:myapp/custom_widgets/custom_button.dart';
import 'package:myapp/models/user.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import '../providers/user_provider.dart';
import '../services/user_services.dart';
import '../utils/grade.dart';

class DetailMitra extends StatefulWidget {
  final Marketplace user;

  DetailMitra({required this.user});

  @override
  Scene createState() => Scene(user: user);
}

class Scene extends State<DetailMitra>{
  final Marketplace user;

  Scene({required this.user});


  int nominal = 0;
  late TextEditingController _inputnominal;

  void addInvestasi() async {
    if (_inputnominal.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Masukkan jumlah nominal terlebih dahulu.'),
        ),
      );
      return;
    }

    // Parse the number
    int jumlah = int.parse(_inputnominal.text);
    var pendana = Provider.of<UserProvider>(context, listen: false).pendana;
    if (pendana == null) {
      return;
    }
    int pendanaId = pendana.pendanaId;

    print("=> Investasi dengan jumlah ${jumlah}");

    // Panggil fungsi API dari provider untuk mengirim data transaksi
    Investasi? transaksi = await UserService.addInvestasi(
      context: context,
      pendanaId: pendanaId,
      pinjamanId: user.pinjamanId,
      jumlahInvestasi: jumlah,
    );

    if (transaksi != null) {
      // Jika berhasil, arahkan pengguna ke halaman SuksesTopUp
      Navigator.pop(context);
    } else {
      // Jika gagal, tampilkan pesan error atau lakukan tindakan yang sesuai
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Terjadi kesalahan saat mengirim transaksi.'),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _inputnominal = TextEditingController();
  }

  @override
  void dispose() {
    _inputnominal.dispose();
    super.dispose();
  }

  Widget build(BuildContext context){
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    Grade grade = getGrade(user.grade);

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
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
                      'Detail Mitra UMKM',
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
                              Text(user.nama,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5,
                                  color: Color(0xff020202),
                                ),
                              ),
                              Text(user.jenisUsaha,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 14,
                                  height: 1.5,
                                  color: Color(0xff020202),
                                ),
                              ),
                              Text("${user.kotaUsaha}, ${user.provinsiUsaha}",
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
              
                    Text(grade.label,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                        color: grade.color,
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
                        Text("PLAFOND",
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 14,
                            height: 1.5,
                            color: Color(0xff020202),
                          ),
                        ),
                        // Uang yang dipinjem
                        Text("Rp ${user.jumlahPinjaman}",
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
                        // Keuntungan yang didapat
                        Text("Rp ${user.jumlahPinjaman * user.bunga / 100}",
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
                        Text("Tenor",
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 14,
                            height: 1.5,
                            color: Color(0xff020202),
                          ),
                        ),
                        // Tenor Pendanaan
                        Text("${user.tenor} Bulan",
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
                        Text(user.kode,
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
                        Text(user.tujuanPinjaman,
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
                        Text("Pendapatan Mitra perbulan",
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 14,
                            height: 1.5,
                            color: Color(0xff020202),
                          ),
                        ),
                        Text("Rp ${user.pendapatan}",
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
                        Text(DateFormat('dd MMMM yyyy').format(user.tanggalPinjaman),
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
                        Text("Pinjaman Terdanai",
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 14,
                            height: 1.5,
                            color: Color(0xff020202),
                          ),
                        ),
                        //jumlah peminjaman yang sudah terdanai saldonya
                        Text("${user.jumlahDidanai}",
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
              ),
              Container(
  margin: EdgeInsets.symmetric(vertical: 10),
  child: TextField(
    controller: _inputnominal,
    onChanged: (text) {
      setState(() {
        // ==========
      });
    },
    decoration: InputDecoration(
      hintText: 'Masukkan nominal',
      hintStyle: TextStyle(
        color: Color(0xff020202).withOpacity(0.6),
      ),
      filled: true,
      fillColor: Color(0xffF7F7F7),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
    ),
  ),
),
Container(
  margin: EdgeInsets.only(top: 10),
  child: Center(
    child: ElevatedButton(
      onPressed: () {
        addInvestasi();
      },
      style: ElevatedButton.styleFrom(
        primary: Color(0xff3584FF),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        'Danai',
        style: TextStyle(
          fontSize: 15 * ffem,
          fontWeight: FontWeight.w600,
          color: Color(0xffffffff),
        ),
      ),
    ),
  ),
),

            ],
          )
        )
      )
    );
  }
}