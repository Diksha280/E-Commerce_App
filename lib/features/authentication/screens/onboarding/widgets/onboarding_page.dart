import 'package:flutter/material.dart';
import 'package:kala_kari/utils/constants/sizes.dart';
import 'package:kala_kari/utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(KSizes.defaultSpace),
      child: Column(
        children: [
          Image(
              width: KHelperFunctions.screenWidth() *
                  0.8, //helpers (width 80% of screen)
              height: KHelperFunctions.screenHeight() * 0.6,
              image: AssetImage(image)),
          Text(title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center),
          const SizedBox(
            height: KSizes.spaceBtwItems,
          ), //constants, sizes
          Text(subTitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}