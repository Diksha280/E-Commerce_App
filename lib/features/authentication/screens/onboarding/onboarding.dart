import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kala_kari/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:kala_kari/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:kala_kari/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:kala_kari/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';

import 'package:kala_kari/utils/constants/text_strings.dart';

import '../../../../utils/constants/image_strings.dart';
import 'widgets/onboarding_next_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: KImages.onBoardingImage1,
                title: KTexts.onBoardingTitle1,
                subTitle: KTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: KImages.onBoardingImage2,
                title: KTexts.onBoardingTitle2,
                subTitle: KTexts.onBoardingSubTitle3,
              ),
              OnBoardingPage(
                image: KImages.onBoardingImage3,
                title: KTexts.onBoardingTitle3,
                subTitle: KTexts.onBoardingSubTitle3,
              )
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}




