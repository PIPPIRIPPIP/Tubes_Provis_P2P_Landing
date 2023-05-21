import 'package:flutter/material.dart';

import 'package:myapp/app_export.dart';
import 'package:myapp/models/user_model.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  Button();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: getHorizontalSize(
            78,
          ),
          padding: getPadding(
            left: 9,
            top: 7,
            right: 9,
            bottom: 7,
          ),
          decoration: AppDecoration.txtOutlineGray400.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder5,
          ),
          child: Text(
            "Rp 500 Ribu",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsMedium12,
          ),
        ),
        Container(
          width: getHorizontalSize(
            78,
          ),
          padding: getPadding(
            left: 17,
            top: 7,
            right: 17,
            bottom: 7,
          ),
          decoration: AppDecoration.txtOutlineGray400.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder5,
          ),
          child: Text(
            "Rp 1 Jt",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsMedium12,
          ),
        ),
        Container(
          width: getHorizontalSize(
            78,
          ),
          padding: getPadding(
            left: 16,
            top: 7,
            right: 16,
            bottom: 7,
          ),
          decoration: AppDecoration.txtOutlineGray400.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder5,
          ),
          child: Text(
            "Rp 5 Jt",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsMedium12,
          ),
        ),
        Container(
          width: getHorizontalSize(
            78,
          ),
          padding: getPadding(
            left: 27,
            top: 6,
            right: 27,
            bottom: 6,
          ),
          decoration: AppDecoration.txtOutlineGray400.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder5,
          ),
          child: Text(
            "Rp 10 Jt",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsMedium12,
          ),
        ),
      ],
    );
  }
}
