import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:myapp/app_export.dart';
import 'package:myapp/custom_widgets/custom_button.dart';
import 'package:myapp/ui/pages/detail_mitra.dart';
import '../widgets/user_card.dart';
import 'package:myapp/bloc/user_bloc.dart';

import 'package:myapp/page-1/pilih-akun.dart';
import 'package:myapp/page-1/daftar-investor.dart';
// import 'package:myapp/page-1/login.dart';
import 'login_ex.dart';

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
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => BlocProvider(
                          create: (context) => LoginBloc(
                            userRepository:userRepository
                            ),
                          child: LoginPage(),
                        ),
                      ),
                    );
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
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "Peluang Investasi",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold16WhiteA700,
                      ),
                      SizedBox(height: 20),
                      BlocBuilder<UserBloc, UserState>(
                        builder: (context, state) {
                          if (state.users.isEmpty) {
                            return CircularProgressIndicator();
                          } else {
                            return ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(29));
                              },
                              // itemCount: state.users.length,
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                final user = state.users[index];
                                return InkWell(
                                  onTap: () {
                                    // Mengarahkan pengguna ke halaman profil user dengan mengirimkan data pengguna yang dipilih
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            DetailMitra(user: user),
                                      ),
                                    );
                                  },
                                  child: UserCard(user: user),
                                );
                              },
                            );
                          }
                        },
                      ),
                      SizedBox(height: 20),
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

  // onTapDaftarsekarang(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.pilihAkunScreen);
  // }

  // onTapTxtMasuk(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.loginScreen);
  // }
}

// CustomImageView(
//   svgPath: ImageConstant.imgArrowdown,
//   height: getVerticalSize(20),
//   width: getHorizontalSize(24),
//   alignment: Alignment.topCenter
// )
