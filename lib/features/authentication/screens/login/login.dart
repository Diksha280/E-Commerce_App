import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:kala_kari/common/styles/spacing_styles.dart';
import 'package:kala_kari/features/authentication/screens/login/widgets/login_form.dart';

import 'package:kala_kari/features/authentication/screens/login/widgets/login_header.dart';

import '../../../../common/widgets/login_signup/login_form_divider.dart';
import '../../../../common/widgets/login_signup/login_social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: KSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              const KLoginHeader(),

              /// Form
              const KLoginForm(),

              /// Divider
              KFormDivider(dividerText: KTexts.orSignInWith.capitalize!),
              const SizedBox(height: KSizes.spaceBtwSections,),

              /// Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}











