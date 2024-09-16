import 'package:flutter/material.dart';
import 'package:kala_kari/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:kala_kari/utils/constants/colors.dart';
import 'package:kala_kari/utils/constants/sizes.dart';
import 'package:kala_kari/utils/device/device_utility.dart';
import 'package:kala_kari/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = KHelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: KDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: KSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? KColors.light : KColors.dark,
              dotHeight: 6),
        ));
  }
}