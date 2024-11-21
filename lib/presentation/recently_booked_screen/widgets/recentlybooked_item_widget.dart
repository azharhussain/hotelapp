import '../models/recentlybooked_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hotelapp/core/app_export.dart';

// ignore: must_be_immutable
class RecentlybookedItemWidget extends StatelessWidget {
  RecentlybookedItemWidget(
    this.recentlybookedItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RecentlybookedItemModel recentlybookedItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18.v),
      decoration: AppDecoration.outlineBlackC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: recentlybookedItemModelObj?.martinezCannes,
            height: 100.adaptSize,
            width: 100.adaptSize,
            radius: BorderRadius.circular(
              16.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recentlybookedItemModelObj.presidentHotel!,
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 18.v),
                Text(
                  recentlybookedItemModelObj.parisFrance!,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 12.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgStarYellowA700,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        recentlybookedItemModelObj.fortyEight!,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 1.v,
                      ),
                      child: Text(
                        recentlybookedItemModelObj.reviews!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  recentlybookedItemModelObj.price!,
                  style: CustomTextStyles.headlineSmallPrimary,
                ),
                SizedBox(height: 2.v),
                Text(
                  recentlybookedItemModelObj.night!,
                  style: theme.textTheme.labelMedium,
                ),
                SizedBox(height: 16.v),
                CustomImageView(
                  imagePath: ImageConstant.imgBookmarkPrimary,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
