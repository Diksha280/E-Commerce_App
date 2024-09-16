import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/k_rounded_image.dart';
import '../../texts/k_brand_title_text_with_verified_icon.dart';
import '../../texts/product_title_text.dart';

class KCartItem extends StatelessWidget {
  const KCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Image
        KRoundedImage(
          imageUrl: KImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(KSizes.sm),
          backgroundColor: KHelperFunctions.isDarkMode(context) ? KColors.darkerGrey : KColors.light,
        ),
        const SizedBox(width: KSizes.spaceBtwItems,),

        /// Title, Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const KBrandTitleWithVerifiedIcon(title: 'Apple'),
              const Flexible(child: KProductTitleText(title: 'Black Apple I-Phone ', maxLines: 1,)),

              /// Attributes
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'Green ', style: Theme.of(context).textTheme.bodyLarge),
                        TextSpan(text: 'Size ', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: '5.3 Inch ', style: Theme.of(context).textTheme.bodyLarge),
                      ]
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}