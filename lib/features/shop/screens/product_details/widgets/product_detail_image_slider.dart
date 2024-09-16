import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/k_circular_icon.dart';
import '../../../../../common/widgets/images/k_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class KProductImageSlider extends StatelessWidget {
  const KProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return KCurvedEdgeWidget(
      child: Container(
        color: dark ? KColors.darkerGrey : KColors.light,
        child: Stack(
          children: [
            /// Main Large Image
            const SizedBox(
                height: 400,
                child: Padding(
                  padding:
                  EdgeInsets.all(KSizes.productImageRadius * 2),
                  child: Center(
                      child: Image(
                          image: AssetImage(KImages.productImage1))),
                )),

            /// Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: KSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                    itemCount: 6,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    separatorBuilder: (_, __) => const SizedBox(
                      width: KSizes.spaceBtwItems,
                    ),

                    itemBuilder: (_, index) => KRoundedImage(
                        width: 80,
                        backgroundColor:
                        dark ? KColors.dark : KColors.white,
                        border: Border.all(color: KColors.primary),
                        padding: const EdgeInsets.all(KSizes.sm),
                        imageUrl: KImages.productImage4)),
              ),
            ),

            /// Appbar Icons
            const KAppBar(
              showBackArrow: true,
              actions: [
                KCircularIcon(icon: Iconsax.heart5, color: Colors.red,)
              ],
            )
          ],
        ),
      ),
    );
  }
}