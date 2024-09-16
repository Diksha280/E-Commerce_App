import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../icons/k_circular_icon.dart';

class KProductQuantityWithAddRemoveButton extends StatelessWidget {
  const KProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min,
      children: [
        KCircularIcon(icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: KSizes.md,
          color: KHelperFunctions.isDarkMode(context) ? KColors.white : KColors.black,
          backgroundColor: KHelperFunctions.isDarkMode(context) ? KColors.darkerGrey : KColors.light,
        ),
        const SizedBox(width: KSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: KSizes.spaceBtwItems),
        const KCircularIcon(icon: Iconsax.add,
          width: 32,
          height: 32,
          size: KSizes.md,
          color: KColors.white,
          backgroundColor: KColors.primary,
        ),
      ],
    );
  }
}