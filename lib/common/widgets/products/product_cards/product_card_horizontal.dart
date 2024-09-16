import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kala_kari/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:kala_kari/common/widgets/images/k_rounded_image.dart';
import 'package:kala_kari/common/widgets/texts/k_brand_title_text_with_verified_icon.dart';
import 'package:kala_kari/common/widgets/texts/product_price_text.dart';
import 'package:kala_kari/common/widgets/texts/product_title_text.dart';
import 'package:kala_kari/utils/constants/image_strings.dart';
import 'package:kala_kari/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/k_circular_icon.dart';

class KProductCardHorizontal extends StatelessWidget {
  const KProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    
    return Container(
        width: 310,
        padding: const EdgeInsets.all(1),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(KSizes.productImageRadius),
    color: dark ? KColors.darkerGrey : KColors.softgrey,
    ),
      child: Row(
        children: [
          /// Thumbnail
          KRoundContainer(
            height: 120,
            padding: const EdgeInsets.all(KSizes.sm),
            backgroundColor: dark ? KColors.dark : KColors.light,
            child: Stack(
              children: [
                /// -- Thumbnail Image
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: KRoundedImage(imageUrl: KImages.productImage1, applyImageRadius: true),),

              /// -- Sale Tag
              Positioned(
                top: 12,
                child: KRoundContainer(
                  radius: KSizes.sm,
                  backgroundColor: KColors.secondary.withOpacity(0.8),
                  padding: const EdgeInsets.symmetric(horizontal: KSizes.sm, vertical: KSizes.xs),
                  child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: KColors.black),),
                ),
              ),

              /// -- Favourite Icon Button
              const Positioned(
                  top: 0,
                  right: 0,
                  child: KCircularIcon(icon: Iconsax.heart5, color: Colors.red,)
              ),
              ],
            ),
      ),

          /// Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: KSizes.sm, left: KSizes.sm),
              child: Column(
                children: [
                 const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      KProductTitleText(title: 'iPhone 15 128GB Black', smallSize: true,),
                      SizedBox(height: KSizes.spaceBtwItems / 2),
                      KBrandTitleWithVerifiedIcon(title: 'Apple'),
                    ],
                  ),

                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Pricing
                      const Flexible(child: KProductPriceText(price: '256.0')),

                      /// Add to cart
                      Container(
                        decoration: const BoxDecoration(
                          color: KColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(KSizes.cardRadiusMd),
                            bottomRight: Radius.circular(KSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                            width: KSizes.iconLg * 1.2,
                            height: KSizes.iconLg * 1.2,
                            child: Center(
                                child: Icon(Iconsax.add, color: KColors.white,))),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
              ],
            ),

    );
  }
}
