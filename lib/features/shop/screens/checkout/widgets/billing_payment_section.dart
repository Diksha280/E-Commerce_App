import 'package:flutter/material.dart';
import 'package:kala_kari/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:kala_kari/common/widgets/texts/section_heading.dart';
import 'package:kala_kari/utils/constants/colors.dart';
import 'package:kala_kari/utils/constants/image_strings.dart';
import 'package:kala_kari/utils/constants/sizes.dart';
import 'package:kala_kari/utils/helpers/helper_functions.dart';

class KBillingPaymentSection extends StatelessWidget {
  const KBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        KSectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: (){}),
        const SizedBox(height: KSizes.spaceBtwItems / 2),
        Row(
          children: [
            KRoundContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? KColors.light : KColors.white,
              padding: const EdgeInsets.all(KSizes.sm),
              child: const Image(image: AssetImage(KImages.paypal), fit: BoxFit.contain,),
            ),
            const SizedBox(height: KSizes.spaceBtwItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),

          ],
        )


      ],
    );
  }
}
