import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kala_kari/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:kala_kari/utils/constants/colors.dart';
import 'package:kala_kari/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/sizes.dart';

class KOrderListItem extends StatelessWidget {
  const KOrderListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return ListView.separated(
      separatorBuilder: (_, __) => SizedBox(height: KSizes.spaceBtwItems),
      itemCount: 8,
      shrinkWrap: true,
      itemBuilder: (_, index) => KRoundContainer(
        showBorder: true,
        padding: const EdgeInsets.all(KSizes.md),
        backgroundColor: dark ? KColors.dark : KColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// -- Row 1
            Row(
              children: [

                /// 1 - Icon
                Icon(Iconsax.ship),
                SizedBox(width: KSizes.spaceBtwItems / 2),

                /// 2 - Status & Date
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Processing',
                      style: Theme.of(context).textTheme.bodyLarge!.apply(color: KColors.primary, fontWeightDelta: 1),
                    ),
                    Text('07 Nov 2024', style: Theme.of(context).textTheme.headlineSmall,)
                  ],
                ),),

                /// 3 - Icon
                IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_34, size: KSizes.iconSm,))
              ],
            ),

            SizedBox(height: KSizes.spaceBtwItems),

            /// -- Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                  children: [

                    /// 1 - Icon
                    Icon(Iconsax.tag),
                    SizedBox(width: KSizes.spaceBtwItems / 2),

                    /// 2 - Status & Date
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Order',
                            style: Theme.of(context).textTheme.labelMedium),
                        Text('[#256f2]', style: Theme.of(context).textTheme.titleMedium)
                      ],
                    ),),
                  ],
                ),),


                Expanded(
                  child: Row(
                    children: [

                      /// 1 - Icon
                      Icon(Iconsax.calendar),
                      SizedBox(width: KSizes.spaceBtwItems / 2),

                      /// 2 - Status & Date
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Shipping Date',
                              style: Theme.of(context).textTheme.labelMedium),
                          Text('03 Feb 2025', style: Theme.of(context).textTheme.titleMedium)
                        ],
                      ),),
                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
