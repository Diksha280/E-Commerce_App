import 'package:flutter/material.dart';
import 'package:kala_kari/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:kala_kari/common/widgets/products/ratings/rating_indicator.dart';
import 'package:kala_kari/utils/constants/colors.dart';
import 'package:kala_kari/utils/constants/image_strings.dart';
import 'package:kala_kari/utils/constants/sizes.dart';
import 'package:kala_kari/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(KImages.userProfileImage1),),
                const SizedBox(width: KSizes.spaceBtwItems),
                Text('James Timothy', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: KSizes.spaceBtwItems),
        
        /// Review
        Row(
          children: [
            const KRatingBarIndicator(rating: 4),
            const SizedBox(width: KSizes.spaceBtwItems),
            Text('01 Jan, 2024', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: KSizes.spaceBtwItems),
        const ReadMoreText('The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Greatjob!',
        trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: KColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: KColors.primary),
        ),
        const SizedBox(height: KSizes.spaceBtwItems),

        /// Company Review
        KRoundContainer(
          backgroundColor: dark ? KColors.darkGrey : KColors.grey,
          child: Padding(padding: EdgeInsets.all(KSizes.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Kala-kari's Store", style: Theme.of(context).textTheme.titleMedium),
                  Text("02 Nov, 2023", style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              const SizedBox(height: KSizes.spaceBtwItems),
              const ReadMoreText('The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Greatjob!',
                trimLines: 1,
                trimMode: TrimMode.Line,
                trimExpandedText: ' show less',
                trimCollapsedText: ' show more',
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: KColors.primary),
                lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: KColors.primary),
              ),

            ],
          ),
          ),
        )
      ],

    );
  }
}
