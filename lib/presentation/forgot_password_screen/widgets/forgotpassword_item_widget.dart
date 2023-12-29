import '../models/forgotpassword_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hotelapp/core/app_export.dart';

// ignore: must_be_immutable
class ForgotpasswordItemWidget extends StatelessWidget {
  ForgotpasswordItemWidget(
    this.forgotpasswordItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ForgotpasswordItemModel forgotpasswordItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(21.h),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          Container(
            height: 80.adaptSize,
            width: 80.adaptSize,
            padding: EdgeInsets.all(26.h),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder40,
            ),
            child: CustomImageView(
              imagePath: forgotpasswordItemModelObj?.viaSMS,
              height: 26.adaptSize,
              width: 26.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 15.v,
              bottom: 15.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  forgotpasswordItemModelObj.viaSMS1!,
                  style: CustomTextStyles.titleSmallGray400,
                ),
                SizedBox(height: 11.v),
                Text(
                  forgotpasswordItemModelObj.oneHundredElevenThousandOneHun!,
                  style: CustomTextStyles.titleMedium16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
