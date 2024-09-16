import 'package:flutter/material.dart';
import 'package:kala_kari/common/widgets/texts/section_heading.dart';

import '../../../../../utils/constants/sizes.dart';

class KBillingAddressSection extends StatelessWidget {
  const KBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KSectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: (){}),
        Text('Anil Kotangale', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(width: KSizes.spaceBtwItems / 2),

        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16,),
            const SizedBox(width: KSizes.spaceBtwItems),
            Text('+91-569-5757575',style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(width: KSizes.spaceBtwItems / 2),

        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16,),
            const SizedBox(width: KSizes.spaceBtwItems),
            Text('South Liana, Maine 67854, USA',style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(width: KSizes.spaceBtwItems / 2),

      ],
    );
  }
}

