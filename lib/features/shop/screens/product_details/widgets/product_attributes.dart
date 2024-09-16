import 'package:flutter/material.dart';
import 'package:kala_kari/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:kala_kari/common/widgets/texts/product_price_text.dart';
import 'package:kala_kari/common/widgets/texts/product_title_text.dart';
import 'package:kala_kari/common/widgets/texts/section_heading.dart';
import 'package:kala_kari/utils/constants/colors.dart';
import 'package:kala_kari/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../utils/constants/sizes.dart';

class KProductAttributes extends StatelessWidget {
  const KProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// -- Selected Attribute Pricing & Description
        KRoundContainer(
          padding: const EdgeInsets.all(KSizes.md),
          backgroundColor: dark ? KColors.darkerGrey : KColors.grey,
          child: Column(
            children: [
              /// Title, Price and Stock Status
              Row(
                children: [
                  const KSectionHeading(title: 'Variation', showActionButton: false,),
                  const SizedBox(width: KSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const KProductTitleText(title: 'Price : ', smallSize: true,),
                          const SizedBox(width: KSizes.spaceBtwItems),
                          /// Actual Price
                          Text('\$25',
                          style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: KSizes.spaceBtwItems),

                          /// Sale Price
                          const KProductPriceText(price: '20')
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const KProductTitleText(title: 'Stock : ', smallSize: true),
                          Text('In Stock', style: Theme.of(context).textTheme.titleSmall),
                        ],
                      )
                    ],
                  )
                ],
              ),
              /// Variation Description
              const KProductTitleText(title: 'This is the Description of the Product and it can go upto max 4 lines',
                smallSize: true,
                maxLines: 4,)
            ],
          ),
        ),
        const SizedBox(height: KSizes.spaceBtwItems),

        /// -- Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            KSectionHeading(title: 'Colors', showActionButton: false,),
            SizedBox(height: KSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
                 children: [
                     KChoiceChip(text: 'Green', selected: true, onSelected: (value){}),
                     KChoiceChip(text: 'Blue', selected: false, onSelected: (value){}),
                     KChoiceChip(text: 'Yellow', selected: false, onSelected: (value){}),
                 ],
            )
          ],
        ),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              KSectionHeading(title: 'Size', showActionButton: false,),
              SizedBox(height: KSizes.spaceBtwItems / 2),
              Wrap(
                spacing: 8,
                children: [
                  KChoiceChip(text: 'EU 34', selected: true, onSelected: (value){}), 
                  KChoiceChip(text: 'EU 36', selected: false, onSelected: (value){}),
                  KChoiceChip(text: 'EU 38', selected: false, onSelected: (value){}),
                ],
              )



            ],
          )

      ],
    );
  }
}

