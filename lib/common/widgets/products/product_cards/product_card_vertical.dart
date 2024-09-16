import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kala_kari/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:kala_kari/common/widgets/images/k_rounded_image.dart';
import 'package:kala_kari/common/widgets/texts/k_brand_title_text_with_verified_icon.dart';
import 'package:kala_kari/common/widgets/texts/product_price_text.dart';
import 'package:kala_kari/features/shop/screens/product_details/product_detail.dart';
import 'package:kala_kari/utils/constants/colors.dart';
import 'package:kala_kari/utils/constants/image_strings.dart';
import 'package:kala_kari/utils/constants/sizes.dart';
import 'package:kala_kari/utils/helpers/helper_functions.dart';

import '../../../styles/shadows.dart';
import '../../icons/k_circular_icon.dart';
import '../../texts/product_title_text.dart';

class KProductCardVertical extends StatelessWidget {
  const KProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =  KHelperFunctions.isDarkMode(context);


    /// Container with side paddings, color, edges, radius and shadow.
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [KShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(KSizes.productImageRadius),
          color: dark ? KColors.darkerGrey : KColors.white
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Thumbnail, Wishlist Button, Discount Tag
            KRoundContainer(
              height: 180,
              padding: const EdgeInsets.all(KSizes.sm),
              backgroundColor: dark ? KColors.dark : KColors.light,
              child: Stack(
                children: [
                  /// -- Thumbnail Image
                  const KRoundedImage(imageUrl: KImages.productImage1, applyImageRadius: true,),

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
            const SizedBox(height: KSizes.spaceBtwItems / 2,),

            /// -- Details
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: KSizes.sm),
              // Only reason to use the [SizedBox] here is to make Column full width
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    KProductTitleText(title: 'Classy LipStick-Set', smallSize: true,),
                    SizedBox(height: KSizes.spaceBtwItems / 2,),
                    KBrandTitleWithVerifiedIcon(title: 'Apple',),
                  ],
                ),
              ),
            ),

            // Use Spacer() to utilize all the space to set the price and the cart button at the bottom.
            // This usually happens when Product title is in single line or 2 lines (Max)

            const Spacer(),

            /// Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                const Padding(
                  padding: EdgeInsets.only(left: KSizes.sm),
                  child: KProductPriceText(price: '35.0'),
                ),

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
            ),

            /// -- Details

          ],
        ),
      ),
    );
  }
}




