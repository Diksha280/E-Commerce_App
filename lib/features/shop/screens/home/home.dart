import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kala_kari/features/shop/screens/all_products/all_products.dart';
import 'package:kala_kari/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:kala_kari/features/shop/screens/home/widgets/home_categories.dart';
import 'package:kala_kari/features/shop/screens/home/widgets/promo_slider.dart';

import 'package:kala_kari/utils/constants/image_strings.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const KPrimaryHeaderContainer(
                child: Column(
              children: [
                /// -- Appbar --
                KHomeAppBar(),
                SizedBox(
                  height: KSizes.spaceBtwSections,
                ),

                /// -- Searchbar --
                KSearchContainer(
                  text: 'Search in Store',
                ),
                SizedBox(
                  height: KSizes.spaceBtwSections,
                ),

                /// -- Categories --
                Padding(
                  padding: EdgeInsets.only(left: KSizes.defaultSpace),
                  child: Column(
                    children: [
                      /// -- Heading
                      KSectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: KSizes.spaceBtwItems,
                      ),

                      /// Categories
                      KHomeCategories(),
                    ],
                  ),
                ),
                SizedBox(height: KSizes.spaceBtwSections,)
              ],
            )),


            /// Body

            Padding(
              padding: const EdgeInsets.all(KSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Promo Slider --
                  const KPromoSlider(banners:
                  [KImages.promoBanner1, KImages.promoBanner2, KImages.promoBanner3]),
                  const SizedBox(
                    height: KSizes.spaceBtwSections,
                  ),

                  /// -- Heading
                  KSectionHeading(title: 'Popular Products', onPressed: () => Get.to(() => const AllProducts()),),
                  const SizedBox(
                    height: KSizes.spaceBtwItems,
                  ),


                  /// -- Popular Products
                  KGridLayout(itemCount: 4, itemBuilder: (_, index) => const KProductCardVertical(),),


                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}








