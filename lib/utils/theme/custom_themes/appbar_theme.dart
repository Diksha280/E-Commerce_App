import 'package:flutter/material.dart';
import 'package:kala_kari/utils/constants/colors.dart';
import 'package:kala_kari/utils/constants/sizes.dart';

class KAppBarTheme{
  KAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: KColors.black, size: KSizes.iconMd),
    actionsIconTheme: IconThemeData(color: KColors.black, size: KSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: KColors.black),
  );

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: KColors.black, size: KSizes.iconMd),
    actionsIconTheme: IconThemeData(color: KColors.white, size: KSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: KColors.white),
  );
}