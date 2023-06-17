import 'package:flutter/material.dart';
import 'package:myapp/app_export.dart';
import 'package:myapp/custom_widgets/custom_button.dart';
import 'package:myapp/models/user_model.dart';

class DetailInvestasi extends StatelessWidget {
  final User user;

  DetailInvestasi({required this.user});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomButton(
                                  height: getVerticalSize(46),
                                  text: "Detail Investasi",
                                  shape: ButtonShape.Square,
                                  padding: ButtonPadding.PaddingT12,
                                  fontStyle: ButtonFontStyle.PoppinsSemiBold14,
                                  prefixWidget: Container(
                                      margin: getMargin(right: 22),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgArrow4)),
                                  onTap: () {
                                    // onTapDetailinvestasi(context);
                                  }),
                              Padding(
                                  padding:
                                      getPadding(left: 14, top: 22, right: 26),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgProfile2,
                                            height: getSize(50),
                                            width: getSize(50),
                                            margin:
                                                getMargin(top: 5, bottom: 6)),
                                        Padding(
                                            padding: getPadding(left: 19),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  // profil
                                                  Text(user.nama,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsSemiBold18Black90001),
                                                  Text('P20072312345',
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12),       
                                                  Text(user.jenisUsaha,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 1),
                                                      child: Text(
                                                          "${user.kotaUsaha}, ${user.provinsiUsaha}",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12))
                                                ])),
                                        Spacer(),
                                        Padding(
                                            padding:
                                                getPadding(top: 10, bottom: 3),
                                            child: Text("A+",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsSemiBold32))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 33, top: 44, right: 30),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("NILAI INVESTASI",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsMedium15),
                                        Spacer(flex: 47),
                                        Text("KEUNTUNGAN",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsMedium15),
                                        Spacer(flex: 52),
                                        Text("IMBAL HASIL",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsMedium15)
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 14, right: 27),
                                      child: Row(children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 1, bottom: 1),
                                            child: Text("Rp",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular15)),
                                        Padding(
                                            padding:
                                                getPadding(left: 4, bottom: 2),
                                            child: Text(user.pinjaman?.jumlahPinjaman.toString() ?? "0",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium15Black90001)),
                                        Padding(
                                            padding:
                                                getPadding(left: 48, top: 2),
                                            child: Text("Rp",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular15)),
                                        Padding(
                                            padding: getPadding(
                                                left: 4, top: 1, bottom: 1),
                                            child: Text("1.000.000",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium15Black90001)),
                                        Spacer(),
                                        Padding(
                                            padding: getPadding(bottom: 2),
                                            child: Text("+${user.pinjaman?.bunga.toString() ?? "0"}%",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium15Black90001))
                                      ]))),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray400)),
                              Container(
                                  height: getVerticalSize(2),
                                  width: double.maxFinite,
                                  margin: getMargin(top: 9),
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: SizedBox(
                                                width: double.maxFinite,
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: ColorConstant
                                                        .gray400))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: SizedBox(
                                                width: getHorizontalSize(206),
                                                child: Divider(
                                                    height: getVerticalSize(2),
                                                    thickness:
                                                        getVerticalSize(2),
                                                    color:
                                                        ColorConstant.blue700)))
                                      ])),

                              // DATA DATA
                              Padding(
                                  padding:
                                      getPadding(left: 21, top: 14, right: 29),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            width: getHorizontalSize(131),
                                            child: Text(
                                                "Jangka Waktu Pinjaman\nJumlah Pinjaman\nJumlah Angsuran\nJenis Pinjaman\nTujuan Peminjaman\nSuku Bunga",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular12Black900)),
                                        Container(
                                            width: getHorizontalSize(120),
                                            child: Text(
                                                "${user.pinjaman?.tenor.toString() ?? "0"} Bulan\nRp.20.000.000\nRp ${user.pinjaman?.jumlahAngsuran.toString() ?? "-"}\n${user.pinjaman?.jenisAngsuran.toString() ?? "0"}\n${user.pinjaman?.tujuanPinjaman.toString() ?? "-"}\n${user.pinjaman?.bunga.toString() ?? "0"}% ",
                                                maxLines: null,
                                                textAlign: TextAlign.right,
                                                style: AppStyle
                                                    .txtPoppinsRegular12Black900))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 15),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray400)),
                              // Align(
                              //     alignment: Alignment.centerLeft,
                              //     child: Padding(
                              //         padding: getPadding(left: 18, top: 17),
                              //         child: Text("Risiko Pendanaan",
                              //             overflow: TextOverflow.ellipsis,
                              //             textAlign: TextAlign.left,
                              //             style: AppStyle
                              //                 .txtPoppinsMedium12Black900))),
                              // Container(
                              //     width: getHorizontalSize(374),
                              //     margin:
                              //         getMargin(left: 18, top: 9, right: 22),
                              //     child: Text(
                              //         "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam rutrum quis nisi quis feugiat. Pellentesque ex tellus, faucibus et dui eu, molestie blandit mi. In neque mauris, volutpat ut magna at, fringilla vehicula lorem. Vestibulum pharetra enim metus, vitae accumsan tellus consequat at. Quisque eu risus leo. Nam neque arcu, suscipit sit amet tortor sed, blandit ullamcorper dolor.",
                              //         maxLines: null,
                              //         textAlign: TextAlign.justify,
                              //         style: AppStyle
                              //             .txtPoppinsRegular11Black900)),
                              // Padding(
                              //     padding:
                              //         getPadding(left: 12, top: 23, right: 21),
                              //     child: Row(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.center,
                              //         children: [
                              //           Padding(
                              //               padding:
                              //                   getPadding(top: 1, bottom: 1),
                              //               child: Text("Crowdfunding",
                              //                   overflow: TextOverflow.ellipsis,
                              //                   textAlign: TextAlign.left,
                              //                   style: AppStyle
                              //                       .txtPoppinsMedium8)),
                              //           Padding(
                              //               padding:
                              //                   getPadding(left: 3, bottom: 1),
                              //               child: Container(
                              //                   height: getVerticalSize(13),
                              //                   width: getHorizontalSize(266),
                              //                   decoration: BoxDecoration(
                              //                       color:
                              //                           ColorConstant.greenA200,
                              //                       borderRadius: BorderRadius.circular(
                              //                           getHorizontalSize(6))),
                              //                   child: ClipRRect(
                              //                       borderRadius:
                              //                           BorderRadius.circular(
                              //                               getHorizontalSize(
                              //                                   6)),
                              //                       child: LinearProgressIndicator(
                              //                           value: 0.55,
                              //                           backgroundColor:
                              //                               ColorConstant
                              //                                   .greenA200,
                              //                           valueColor:
                              //                               AlwaysStoppedAnimation<Color>(
                              //                                   ColorConstant
                              //                                       .greenA700))))),
                              //           Padding(
                              //               padding:
                              //                   getPadding(left: 8, top: 2),
                              //               child: Text("1 Bulan lagi",
                              //                   overflow: TextOverflow.ellipsis,
                              //                   textAlign: TextAlign.left,
                              //                   style:
                              //                       AppStyle.txtPoppinsMedium8))
                              //         ])),
                              // Padding(
                              //     padding:
                              //         getPadding(left: 18, top: 7, right: 18),
                              //     child: Row(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.center,
                              //         children: [
                              //           Container(
                              //               width: getHorizontalSize(52),
                              //               margin: getMargin(bottom: 1),
                              //               padding: getPadding(
                              //                   left: 17,
                              //                   top: 1,
                              //                   right: 17,
                              //                   bottom: 1),
                              //               decoration: AppDecoration
                              //                   .txtFillBlueA200
                              //                   .copyWith(
                              //                       borderRadius:
                              //                           BorderRadiusStyle
                              //                               .txtRoundedBorder5),
                              //               child: Text("-",
                              //                   overflow: TextOverflow.ellipsis,
                              //                   textAlign: TextAlign.left,
                              //                   style: AppStyle
                              //                       .txtPoppinsMedium32)),
                              //           Expanded(
                              //               child: CustomButton(
                              //                   height: getVerticalSize(49),
                              //                   text: "Rp 100.000",
                              //                   margin: getMargin(
                              //                       left: 4, bottom: 1),
                              //                   variant: ButtonVariant
                              //                       .OutlineGray600,
                              //                   padding:
                              //                       ButtonPadding.PaddingAll13,
                              //                   fontStyle: ButtonFontStyle
                              //                       .PoppinsMedium15)),
                              //           Container(
                              //               height: getVerticalSize(49),
                              //               width: getHorizontalSize(52),
                              //               margin: getMargin(left: 4),
                              //               child: Stack(
                              //                   alignment: Alignment.topCenter,
                              //                   children: [
                              //                     Align(
                              //                         alignment:
                              //                             Alignment.center,
                              //                         child: Container(
                              //                             height:
                              //                                 getVerticalSize(
                              //                                     49),
                              //                             width:
                              //                                 getHorizontalSize(
                              //                                     52),
                              //                             decoration: BoxDecoration(
                              //                                 color:
                              //                                     ColorConstant
                              //                                         .blue700,
                              //                                 borderRadius:
                              //                                     BorderRadius.circular(
                              //                                         getHorizontalSize(
                              //                                             3))))),
                              //                     Align(
                              //                         alignment:
                              //                             Alignment.topCenter,
                              //                         child: Text("+",
                              //                             overflow: TextOverflow
                              //                                 .ellipsis,
                              //                             textAlign:
                              //                                 TextAlign.left,
                              //                             style: AppStyle
                              //                                 .txtPoppinsMedium32))
                              //                   ]))
                              //         ])),
                              // Padding(
                              //     padding:
                              //         getPadding(left: 18, top: 12, right: 18),
                              //     child: ListView.separated(
                              //         physics: NeverScrollableScrollPhysics(),
                              //         shrinkWrap: true,
                              //         separatorBuilder: (context, index) {
                              //           return SizedBox(
                              //               height: getVerticalSize(8));
                              //         },
                              //         itemCount: 2,
                              //         itemBuilder: (context, index) {
                              //           return Button();
                              //         }))
                            ])))),
            // bottomNavigationBar: CustomButton(
            //     height: getVerticalSize(34),
            //     text: "Berikan Pendanaan",
            //     margin: getMargin(left: 18, right: 20, bottom: 21),
            //     fontStyle: ButtonFontStyle.PoppinsSemiBold15)
                ));
  }
}

