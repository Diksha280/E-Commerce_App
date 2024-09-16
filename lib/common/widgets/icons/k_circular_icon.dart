import 'package:flutter/material.dart';
import 'package:kala_kari/utils/constants/sizes.dart';
import 'package:kala_kari/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class KCircularIcon extends StatelessWidget {
  /// A Custom Circular Icon widget with a background color.
  ///
  /// Properties are:
  /// Container [width], [height], & [backgroundColor].
  ///
  /// Icon's [size], [color] & [onPressed]
  const KCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = KSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,

  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor! :
        KHelperFunctions.isDarkMode(context)
            ? KColors.black.withOpacity(0.9)
        : KColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),

      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size),),

    );
  }
}