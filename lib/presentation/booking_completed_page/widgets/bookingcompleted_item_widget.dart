import '../models/bookingcompleted_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hotelapp/core/app_export.dart';
import 'package:hotelapp/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class BookingcompletedItemWidget extends StatelessWidget {
  BookingcompletedItemWidget(
    this.bookingcompletedItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BookingcompletedItemModel bookingcompletedItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.outlineBlackC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 89.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: bookingcompletedItemModelObj?.bulgariResort,
                  height: 100.adaptSize,
                  width: 100.adaptSize,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 5.v,
                    bottom: 6.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bookingcompletedItemModelObj.bulgariResort1!,
                        style: CustomTextStyles.titleLargeSemiBold,
                      ),
                      SizedBox(height: 9.v),
                      Text(
                        bookingcompletedItemModelObj.parisFrance!,
                        style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(height: 11.v),
                      CustomElevatedButton(
                        height: 24.v,
                        width: 72.h,
                        text: "lbl_completed".tr,
                        buttonStyle: CustomButtonStyles.fillTeal,
                        buttonTextStyle: CustomTextStyles.labelMediumCyan300,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Divider(),
          SizedBox(height: 19.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillGreen.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkPrimary18x18,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 9.h,
                    top: 5.v,
                  ),
                  child: Text(
                    bookingcompletedItemModelObj.yeayyouhavecompletedit!,
                    style: CustomTextStyles.labelMediumCyan200,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
