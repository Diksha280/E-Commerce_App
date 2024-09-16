import 'package:flutter/material.dart';
import 'package:kala_kari/utils/helpers/helper_functions.dart';


import '../../../utils/constants/colors.dart';


class KFormDivider extends StatelessWidget {
  const KFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? KColors.darkGrey : KColors.grey, thickness: 0.5, indent: 60, endIndent: 5,)),
        Text(dividerText, style:  Theme.of(context).textTheme.labelMedium,),
        Flexible(child: Divider(color: dark ? KColors.darkGrey : KColors.grey, thickness: 0.5, indent: 5, endIndent: 60,)),
      ],
    );
  }
}