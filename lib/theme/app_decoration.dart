import 'package:flutter/material.dart';
import 'package:hotelapp/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray900,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray700,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green60019,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red40019,
      );

  // Gradient decorations
  static BoxDecoration get gradient => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.gray80000,
            appTheme.blueGray90059,
            appTheme.gray900.withOpacity(0.59),
          ],
        ),
      );
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, -0.78),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.gray80000,
            appTheme.gray900,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack9000c => BoxDecoration(
        color: appTheme.blueGray900,
        boxShadow: [
          BoxShadow(
            color: appTheme.black9000c.withOpacity(0.08),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlackC => BoxDecoration(
        color: appTheme.blueGray900,
        boxShadow: [
          BoxShadow(
            color: appTheme.black9000c,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.blueGray900,
        border: Border.all(
          color: appTheme.gray700,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineIndigoA => BoxDecoration(
        color: appTheme.cyan900,
        boxShadow: [
          BoxShadow(
            color: appTheme.indigoA20014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.blueGray900,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 3.h,
        ),
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get circleBorder40 => BorderRadius.circular(
        40.h,
      );
  static BorderRadius get circleBorder60 => BorderRadius.circular(
        60.h,
      );
  static BorderRadius get circleBorder70 => BorderRadius.circular(
        70.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL36 => BorderRadius.vertical(
        bottom: Radius.circular(36.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder36 => BorderRadius.circular(
        36.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    