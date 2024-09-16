
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kala_kari/common/widgets/texts/section_heading.dart';
import 'package:kala_kari/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:kala_kari/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:kala_kari/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:kala_kari/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:kala_kari/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:kala_kari/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:kala_kari/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const KBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            const KProductImageSlider(),

            /// 2 - Product Details
            Padding(padding: const EdgeInsets.only(right: KSizes.defaultSpace, left: KSizes.defaultSpace, bottom: KSizes.defaultSpace),
              child: Column(
                children: [
                  /// - Rating & Share Button
                  const KRatingAndShare(),

                  /// - Price, Title, Stack, & Brand
                  const KProductMetaData(),

                  /// -- Attributes
                  const KProductAttributes(),
                  const SizedBox(height: KSizes.spaceBtwSections),

                  /// -- Checkout Button
                  SizedBox(
                    width: double.infinity,
                      child: ElevatedButton(onPressed: (){}, child: const Text('Checkout'))),
                  const SizedBox(height: KSizes.spaceBtwSections),

                  /// - Description
                  const KSectionHeading(title: 'Description', showActionButton: false,),
                  const SizedBox(height: KSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a Product description for Black Apple I-Phone. There are more things that can be added so i will add later',
                        trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// - Reviews
                  const Divider(),
                  const SizedBox(height: KSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const KSectionHeading(title: 'Reviews(199)', showActionButton: false),
                      IconButton(onPressed: () => Get.to(() => const ProductReviewsScreen()), icon: const Icon(Iconsax.arrow_right_3, size: 18,))
                    ],
                  ),
                  const SizedBox(height: KSizes.spaceBtwSections),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}




