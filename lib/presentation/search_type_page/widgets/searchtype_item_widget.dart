import '../models/searchtype_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hotelapp/core/app_export.dart';

// ignore: must_be_immutable
class SearchtypeItemWidget extends StatelessWidget {
  SearchtypeItemWidget(
    this.searchtypeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchtypeItemModel searchtypeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 2.v,
            ),
            child: Text(
              searchtypeItemModelObj.amsterdamNetherlands!,
              style: CustomTextStyles.titleMediumGray40001,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgAutoLayoutHorizontal,
            height: 28.adaptSize,
            width: 28.adaptSize,
            margin: EdgeInsets.only(left: 152.h),
          ),
        ],
      ),
    );
  }
}
