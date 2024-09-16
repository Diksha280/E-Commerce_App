import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kala_kari/common/widgets/success_screen/success_screen.dart';
import 'package:kala_kari/features/authentication/screens/login/login.dart';
import 'package:kala_kari/utils/constants/text_strings.dart';
import 'package:kala_kari/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //to hide back arrow
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          // Padding to Give Default Equal Space on all sides in all screens
          padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(image: const AssetImage(KImages.deliveredEmailIllustration),
              width: KHelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: KSizes.spaceBtwSections,),

              /// Title & SubTitle
              Text(KTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: KSizes.spaceBtwItems,),
              Text('support@kalakari.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              const SizedBox(height: KSizes.spaceBtwItems,),
              Text(KTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: KSizes.spaceBtwSections,),


              /// Buttons
              SizedBox(width: double.infinity,
                child: ElevatedButton(
                onPressed: ()=> Get.to(() => SuccessScreen(
                image: KImages.staticSuccessIllustration,
                title: KTexts.yourAccountCreatedTitle,
                subTitle: KTexts.yourAccountCreatedSubTitle,
                onPressed: () => Get.to(() => const LoginScreen()),
              ),),
              child: const Text(KTexts.kContinue),),
              ),
              const SizedBox(height: KSizes.spaceBtwItems),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(KTexts.resendEmail),),),

            ],
          ),
        ),
      ),
    );
  }
}
