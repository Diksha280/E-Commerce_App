import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kala_kari/utils/constants/colors.dart';
import 'package:kala_kari/utils/constants/sizes.dart';
import 'package:kala_kari/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';

class KSingleAddress extends StatelessWidget {
  const KSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return KRoundContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(KSizes.md),
      backgroundColor: selectedAddress ? KColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : dark ? KColors.darkerGrey : KColors.grey,
      margin: const EdgeInsets.only(bottom: KSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress ? dark ? KColors.light : KColors.dark.withOpacity(0.6) : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('John Doe',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: KSizes.sm / 2,),
              const Text('(+123) 456 7890', maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: KSizes.sm / 2,),
              const Text('34245 Timmy Coves, South Liana, Maine, 56744, USA', softWrap: true,)
            ],
          )
        ],
      ),
    );
  }
}
