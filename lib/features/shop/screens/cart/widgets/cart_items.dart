import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class KCartItems extends StatelessWidget {
  const KCartItems({
    super.key,
  this.showAddRemoveButtons = true,
  });


  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (_, __) => const SizedBox(height: KSizes.spaceBtwSections,),
        itemCount: 4,
        itemBuilder: (_, index) => Column(
          children: [
            /// Cart Item
            KCartItem(),
            if (showAddRemoveButtons) const SizedBox(height: KSizes.spaceBtwItems),

            /// Add Remove Button Row with total price
            if(showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    /// Extra Space
                    SizedBox(width: 70),

                    /// Add Remove Buttons
                    KProductQuantityWithAddRemoveButton(),
                  ],
                ),

                /// -- Product total price
                KProductPriceText(price: '250'),
              ],
            )
          ],
        )
    );
  }
}
