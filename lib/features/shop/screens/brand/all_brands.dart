import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kala_kari/common/widgets/appbar/appbar.dart';
import 'package:kala_kari/common/widgets/brands/brand_card.dart';
import 'package:kala_kari/common/widgets/layouts/grid_layout.dart';
import 'package:kala_kari/common/widgets/texts/section_heading.dart';
import 'package:kala_kari/features/shop/screens/brand/brand_products.dart';

import '../../../../utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(title: Text('Brand'), showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(KSizes.defaultSpace),
        child: Column(
          children: [
            /// Heading
            const KSectionHeading(title: 'Brands', showActionButton: false),
            const SizedBox(height: KSizes.spaceBtwItems),

            /// -- Brands
            KGridLayout(itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => KBrandCard(showBorder: true,onTap: () => Get.to(() => const BrandProducts()),))
          ],
        ),),
      ),

    );
  }
}
