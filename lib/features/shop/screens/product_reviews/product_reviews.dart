import 'package:flutter/material.dart';
import 'package:kala_kari/common/widgets/appbar/appbar.dart';
import 'package:kala_kari/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:kala_kari/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:kala_kari/utils/constants/sizes.dart';

import '../../../../common/widgets/products/ratings/rating_indicator.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- Appbar
      appBar: const KAppBar(title: Text('Reviews & Ratings'), showBackArrow: true,),

      ///  -- Body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(KSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Ratings and reviews are verified and are from people who use the same type of device that you use."),
            const SizedBox(height: KSizes.spaceBtwItems),

            /// Overall Product Ratings
            const KOverallProductRating(),
            const KRatingBarIndicator(rating: 3.8),
            Text("12,611", style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: KSizes.spaceBtwSections,),

            /// User Reviews List
            const UserReviewCard(),
            const SizedBox(height: KSizes.spaceBtwItems),
            const UserReviewCard()

          ],
        ),

      ),
    );
  }
}






