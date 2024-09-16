import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import 'brand_card.dart';

class KBrandShowcase extends StatelessWidget {
  const KBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return KRoundContainer(
      showBorder: true,
      padding: const EdgeInsets.all(KSizes.md),
      borderColor: KColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: KSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with Products Count
          const KBrandCard(showBorder: false),
          const SizedBox(height: KSizes.spaceBtwItems),

          /// Brand Top 3 Product Images
          Row(
              children: images.map((image) => brandTopProductImageWidget(image, context)).toList()
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
        child: KRoundContainer(
          height: 100,
          padding: const EdgeInsets.all(KSizes.md),
          margin: const EdgeInsets.only(right: KSizes.sm),
          backgroundColor: KHelperFunctions.isDarkMode(context) ? KColors.darkGrey : KColors.light,
          child: Image(fit: BoxFit.contain, image: AssetImage(image),),

        )
    );
  }
}