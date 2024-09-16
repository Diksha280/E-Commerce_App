import 'package:flutter/material.dart';
import 'package:kala_kari/utils/constants/sizes.dart';

class KBillingAmountSection extends StatelessWidget {
  const KBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          /// SubTotal
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
              Text('\$250', style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
          const SizedBox(height: KSizes.spaceBtwItems / 2),

          /// Shipping Fee
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
              Text('\$6.0', style: Theme.of(context).textTheme.labelLarge),
            ],
          ),
          const SizedBox(height: KSizes.spaceBtwItems / 2),

          /// Tax Fee
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium),
              Text('\$6.0', style: Theme.of(context).textTheme.labelLarge),
            ],
          ),
          const SizedBox(height: KSizes.spaceBtwItems / 2),

          /// Order Total
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order Total', style: Theme.of(context).textTheme.bodyMedium),
                Text('\$6.0', style: Theme.of(context).textTheme.titleMedium),
              ]
          ),
        ]
    );
  }
}