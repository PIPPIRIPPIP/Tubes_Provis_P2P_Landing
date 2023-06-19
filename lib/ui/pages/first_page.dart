import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:myapp/app_export.dart';
import 'package:myapp/custom_widgets/custom_button.dart';
import 'package:myapp/ui/pages/detail_mitra.dart';
import '../../models/models.dart';
import '../../services/user_services.dart';
import '../../utils.dart';
import '../../utils/grade.dart';
import '../widgets/user_card.dart';
import 'package:myapp/bloc/user_bloc.dart';

import 'package:myapp/page-1/pilih-akun.dart';
import 'package:myapp/page-1/daftar-investor.dart';
import 'login.dart';

import 'package:myapp/auth/login_auth.dart';
import 'package:myapp/bloc/login_bloc.dart';

class FirstPage extends StatelessWidget {
  final userRepository = UserRepository(
    url: 'https://example.com/users',
    filePath: 'data/user.json',
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMoneylogodesi,
                  height: getVerticalSize(76),
                  width: getHorizontalSize(224),
                ),
                SizedBox(height: 5),
                Text(
                  "“ Bersama membangun UMKM yang lebih sejahtera”",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtPoppinsMedium14,
                ),
                SizedBox(height: 40),
                CustomButton(
                  height: getVerticalSize(40),
                  width: getHorizontalSize(200),
                  text: "Daftar Sekarang",
                  margin: getMargin(top: 20),
                  fontStyle: ButtonFontStyle.PoppinsSemiBold16,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PilihAkun()));
                    // MaterialPageRoute(builder: (context) => DaftarInvestor()));
                  },
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: Padding(
                    padding: getPadding(top: 7),
                    child: Text(
                      "Masuk",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtPoppinsSemiBold16.copyWith(
                        letterSpacing: getHorizontalSize(0.32),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                  decoration: AppDecoration.outlineBlack9003f1.copyWith(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "Peluang Investasi",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold16WhiteA700,
                      ),
                      SizedBox(height: 20),
                      Container(child: LISTUMKM())
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LISTUMKM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Marketplace>>(
      future: UserService.getMarketplace(context: context),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Tampilkan indikator loading jika masih dalam proses fetching data
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          // Tampilkan pesan error jika terjadi kesalahan
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          print(snapshot.data);
          // Tampilkan data menggunakan ListView.builder
          return ListView.builder(
            shrinkWrap: true, // Tambahkan shrinkWrap
            physics: NeverScrollableScrollPhysics(), // Tambahkan physics
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index) {
              final marketplace = snapshot.data![index];
              Grade grade = getGrade(marketplace.grade);
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: InkWell(
                  onTap: () {
                    //   Navigator.push(context,
                    // MaterialPageRoute(builder: (context) => DetailMitra()));
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(marketplace.kode),
                              Text(marketplace.tanggalPinjaman.toString()),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          marketplace.nama,
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            height: 1.5,
                                            color: Color(0xff020202),
                                          ),
                                        ),
                                        Text(
                                          marketplace.jenis,
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 14,
                                            height: 1.5,
                                            color: Color(0xff020202),
                                          ),
                                        ),
                                        Text(
                                          marketplace.alamat,
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
                              Text(
                                grade.label,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5,
                                  color: grade.color,
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
                              Text(
                                "Dana Terkumpul",
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff020202),
                                ),
                              ),
                              Text(
                                "${((marketplace.jumlahDidanai / marketplace.jumlahPinjaman) * 100).toInt()}%",
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
      },
    );
  }
}
