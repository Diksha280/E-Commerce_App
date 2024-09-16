import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kala_kari/common/widgets/appbar/appbar.dart';
import 'package:kala_kari/common/widgets/images/k_rounded_image.dart';
import 'package:kala_kari/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:kala_kari/common/widgets/texts/section_heading.dart';
import 'package:kala_kari/utils/constants/sizes.dart';

import '../../../../utils/constants/image_strings.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(
        title: Text('Sports'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(KSizes.defaultSpace),
        child: Column(
          children: [
            /// Banner
            const KRoundedImage(
              width: double.infinity,
                imageUrl: KImages.promoBanner1,
              applyImageRadius: true,
            ),
            const SizedBox(height: KSizes.spaceBtwSections),

            /// Sub-categories
            Column(
              children: [
                /// Heading
                KSectionHeading(title: 'Sports shirts', onPressed: (){}),
                const SizedBox(height: KSizes.spaceBtwItems / 2),

                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    itemCount: 4,
                      scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => const SizedBox(width: KSizes.spaceBtwItems),
                      itemBuilder: (context, index) => const KProductCardHorizontal(), ),
                ),

              ],
            )
          ],
        ),),
      ),

    );
  }
}
