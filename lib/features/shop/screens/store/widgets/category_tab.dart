import 'package:flutter/material.dart';
import 'package:kala_kari/common/widgets/layouts/grid_layout.dart';
import 'package:kala_kari/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:kala_kari/common/widgets/texts/section_heading.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class KCategoryTab extends StatelessWidget {
  const KCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [Padding(
          padding: const EdgeInsets.all(KSizes.defaultSpace),
      child: Column(
      children: [
      /// -- Brands
      const KBrandShowcase(images: [KImages.productImage1, KImages.productImage2,KImages.productImage3],),
        const SizedBox(height: KSizes.spaceBtwItems),

      /// -- Products
        KSectionHeading(title: 'You might like', onPressed: (){}),
        const SizedBox(height: KSizes.spaceBtwItems),

        KGridLayout(itemCount: 6, itemBuilder: (_, index) => const KProductCardVertical()),
        const SizedBox(height: KSizes.spaceBtwSections),

      ],
      ),
      ),]
    );
  }
}
