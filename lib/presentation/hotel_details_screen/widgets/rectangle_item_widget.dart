import '../models/rectangle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hotelapp/core/app_export.dart';

// ignore: must_be_immutable
class RectangleItemWidget extends StatelessWidget {
  RectangleItemWidget(
    this.rectangleItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RectangleItemModel rectangleItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.h,
      child: CustomImageView(
        imagePath: rectangleItemModelObj?.rectangle,
        height: 100.v,
        width: 140.h,
        radius: BorderRadius.circular(
          16.h,
        ),
      ),
    );
  }
}
