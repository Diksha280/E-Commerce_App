import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kala_kari/common/widgets/appbar/appbar.dart';
import 'package:kala_kari/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:kala_kari/common/widgets/success_screen/success_screen.dart';
import 'package:kala_kari/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:kala_kari/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:kala_kari/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:kala_kari/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:kala_kari/navigation_menu.dart';
import 'package:kala_kari/utils/constants/colors.dart';
import 'package:kala_kari/utils/constants/image_strings.dart';
import 'package:kala_kari/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../../../../utils/constants/sizes.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: KAppBar(
        showBackArrow: true, title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            children: [
              /// Items in Cart
              const KCartItems(showAddRemoveButtons: false),
              const SizedBox(height: KSizes.spaceBtwSections),

              /// -- Coupon TextFiled
              const KCouponCode(),
              const SizedBox(height: KSizes.spaceBtwSections),

              /// Billing Section
              KRoundContainer(
                showBorder: true,
                padding: const EdgeInsets.all(KSizes.md),
                backgroundColor:  dark ? KColors.black: KColors.white,
                child: const Column(
                  children: [
                    /// Pricing
                    KBillingAmountSection(),
                    SizedBox(height: KSizes.spaceBtwItems),

                    /// Divider
                    Divider(),
                    SizedBox(height: KSizes.spaceBtwSections),

                    /// Payment Methods
                    KBillingPaymentSection(),
                    SizedBox(height: KSizes.spaceBtwItems),

                    /// Address
                    KBillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(KSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => SuccessScreen(
            image: KImages.successfulPaymentIcon,
            title: 'Payment Success!',
            subTitle: 'Your items will be shipped soon!',
          onPressed: () => Get.offAll(() => const NavigationMenu()),
        )),
            child: const Text('Checkout \$256.0')),
      ),
    );
  }
}

