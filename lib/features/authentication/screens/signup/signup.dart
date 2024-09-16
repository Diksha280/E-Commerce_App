import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kala_kari/features/authentication/screens/signup/widgets/signup_form.dart';

import 'package:kala_kari/utils/constants/sizes.dart';
import 'package:kala_kari/utils/constants/text_strings.dart';

import '../../../../common/widgets/login_signup/login_form_divider.dart';
import '../../../../common/widgets/login_signup/login_social_buttons.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                KTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: KSizes.spaceBtwSections,
              ),

              /// Form
              const KSignupForm(),
              const SizedBox(height: KSizes.spaceBtwSections,),
              /// Divider
              KFormDivider(dividerText: KTexts.orSignInWith.capitalize!),
              const SizedBox(height: KSizes.spaceBtwSections,),

              /// Social Buttons
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


