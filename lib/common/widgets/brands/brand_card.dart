import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import '../images/k_circular_image.dart';
import '../texts/k_brand_title_text_with_verified_icon.dart';

class KBrandCard extends StatelessWidget {
  const KBrandCard(
      {
        super.key,
        required this.showBorder,
        this.onTap
      });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = KHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      /// Container Design
      child: KRoundContainer(
        padding: const EdgeInsets.all(KSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// -- Icon
            Flexible(
              child: KCircularImage(
                isNetworkImage: false,
                image: KImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: isDark ? KColors.white : KColors.black,
              ),
            ),
            const SizedBox(width: KSizes.spaceBtwItems / 2),

            /// -- Text
            // [Expanded] & Column [MainAxisSize.min] is important to keep the elements in the vrtical center and also
            // to keep text inside the boundaries.
            Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const KBrandTitleWithVerifiedIcon(
                      title: 'Nike',
                      brandTextSize: TextSizes.large,
                    ),
                    Text(
                      '25 products',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
