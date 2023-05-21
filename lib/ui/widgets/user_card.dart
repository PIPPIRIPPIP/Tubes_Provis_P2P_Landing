import 'package:flutter/material.dart';

import 'package:myapp/app_export.dart';
import 'package:myapp/models/user_model.dart';

class UserCard extends StatelessWidget {
  final User user;

  UserCard({required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          top: 6,
          bottom: 6,
        ),
        decoration: AppDecoration.outlineGray400.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Top
            Padding(
              padding: getPadding(
                left: 15,
                right: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 3,
                      bottom: 4,
                    ),
                    child: Text(
                      "NO",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold12,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 6,
                      top: 3,
                      bottom: 4,
                    ),
                    // kode
                    child: Text(
                      user.pinjaman?.kode ?? 'P0',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular12,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage7,
                    height: getSize(
                      26,
                    ),
                    width: getSize(
                      26,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 5,
                      top: 3,
                      bottom: 4,
                    ),
                    // tenor
                    child: Text(
                      '${user.pinjaman?.tenor.toString() ?? "0"} Bulan',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold12,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: getPadding(
                top: 3,
              ),
              child: Divider(
                height: getVerticalSize(
                  1,
                ),
                thickness: getVerticalSize(
                  1,
                ),
                color: ColorConstant.gray400,
              ),
            ),

            // Middle
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(
                  left: 15,
                  top: 5,
                  right: 20,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgProfile2,
                      height: getSize(
                        46,
                      ),
                      width: getSize(
                        46,
                      ),
                      margin: getMargin(
                        top: 4,
                        bottom: 4,
                      ),
                    ),

                    Padding(
                      padding: getPadding(
                        left: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // name
                          Text(
                            user.nama,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsSemiBold14,
                          ),
                          // jenis usaha
                          Padding(
                            padding: getPadding(
                              top: 2,
                            ),
                            child: Text(
                              user.jenisUsaha,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular11,
                            ),
                          ),
                          // kota, provinsi
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: Text(
                              user.kotaUsaha + ", " + user.provinsiUsaha,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular11,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Spacer(),
                    Padding(
                      padding: getPadding(
                        top: 2,
                        bottom: 2,
                      ),
                      child: Text(
                        "A+",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                        style: AppStyle.txtPoppinsSemiBold32,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: getPadding(
                top: 5,
              ),
              child: Divider(
                height: getVerticalSize(
                  1,
                ),
                thickness: getVerticalSize(
                  1,
                ),
                color: ColorConstant.gray400,
              ),
            ),

            // Middle 2
            Padding(
              padding: getPadding(
                left: 15,
                top: 5,
                right: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: getVerticalSize(
                      50,
                    ),
                    width: getHorizontalSize(
                      60,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          // bunga
                          child: Text(
                            '${user.pinjaman?.bunga.toString() ?? "-"}%',
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsSemiBold32Black90001,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          // jenis angsuran
                          child: Text(
                            "Imbal Hasil",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium12,
                          ),
                        ),
                      ],
                    ),
                  ),
                
                  // Padding(
                  //   padding: getPadding(
                  //     left: 20,
                  //     top: 20,
                  //     bottom: 10,
                  //   ),
                  //   child: Text(
                  //     "Rp",
                  //     overflow: TextOverflow.ellipsis,
                  //     textAlign: TextAlign.left,
                  //     style: AppStyle.txtPoppinsSemiBold16Gray600,
                  //   ),
                  // ),
                  Padding(
                    padding: getPadding(
                      left: 30,
                      top: 20,
                      bottom: 10,
                    ),
                    // jumlah pinjaman
                    child: Text(
                      'Rp. ${user.pinjaman?.jumlahPinjaman.toString() ?? "0"}',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold16Black90001,
                    ),
                  ),

                  Container(
                    width: getHorizontalSize(
                      60,
                    ),
                    margin: getMargin(
                      left: 40,
                      top: 20,
                      bottom: 10,
                    ),
                    padding: getPadding(
                      left: 10,
                      top: 2,
                      right: 10,
                      bottom: 2,
                    ),
                    decoration: AppDecoration.txtFillBlueA200.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                    ),
                    child: Text(
                      "Danai",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtPoppinsSemiBold12WhiteA700,
                    ),
                  ),
                ],
              ),
            ),

            // bar
            Padding(
              padding: getPadding(
                top: 8,
              ),
              child: Container(
                height: getVerticalSize(
                  5,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.gray400,
                ),
                child: ClipRRect(
                  child: LinearProgressIndicator(
                    value: 0.5,
                    backgroundColor: ColorConstant.gray400,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      ColorConstant.greenA700,
                    ),
                  ),
                ),
              ),
            ),

            // bottom
            Padding(
              padding: getPadding(
                left: 15,
                top: 5,
                bottom: 2,
                right: 15
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Terdanai",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsSemiBold12,
                  ),
                  Text(
                    "50%",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsSemiBold12,
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
