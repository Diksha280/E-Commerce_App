import 'package:flutter/material.dart';
import 'package:kala_kari/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:kala_kari/utils/constants/sizes.dart';
import 'package:kala_kari/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: KDeviceUtils.getAppBarHeight(),
        right: KSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: (const Text('Skip'))
        ));
  }
}