import 'package:flutter/material.dart';
import 'package:kala_kari/utils/constants/sizes.dart';

class KSpacingStyle  {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: KSizes.appBarHeight,
    left: KSizes.defaultSpace,
    bottom: KSizes.defaultSpace,
    right: KSizes.defaultSpace,
  );
}