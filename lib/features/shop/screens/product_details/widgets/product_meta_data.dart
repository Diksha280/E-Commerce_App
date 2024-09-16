import 'package:flutter/material.dart';
import 'package:kala_kari/common/widgets/images/k_circular_image.dart';
import 'package:kala_kari/common/widgets/texts/k_brand_title_text_with_verified_icon.dart';
import 'package:kala_kari/common/widgets/texts/product_price_text.dart';
import 'package:kala_kari/common/widgets/texts/product_title_text.dart';
import 'package:kala_kari/utils/constants/enums.dart';
import 'package:kala_kari/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class KProductMetaData extends StatelessWidget {
  const KProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale Tag
            KRoundContainer(
              radius: KSizes.sm,
              backgroundColor: KColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: KSizes.sm, vertical: KSizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: KColors.black),),
            ),
            const SizedBox(width:  KSizes.spaceBtwItems),

            Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width:  KSizes.spaceBtwItems),
            const KProductPriceText(price: '175', isLarge: true,),

          ],
        ),
        const SizedBox(width:  KSizes.spaceBtwItems / 1.5),
        /// Title
        const KProductTitleText(title: 'Black Apple I-Phone'),
        const SizedBox(width:  KSizes.spaceBtwItems / 1.5),

        /// Stock Status
        Row(
          children: [
            const KProductTitleText(title: 'Status'),
            const SizedBox(width:  KSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),

        const SizedBox(width:  KSizes.spaceBtwItems / 1.5),
        /// Brand
        Row(
          children: [
            KCircularImage(image: KImages.electronicsIcon,
            width: 32,
            height: 32,
            overlayColor: dark ? KColors.white : KColors.black),
            const KBrandTitleWithVerifiedIcon(title: 'Apple', brandTextSize: TextSizes.medium,),

          ],
        )

      ],
    );
  }
}
