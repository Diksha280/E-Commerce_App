import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kala_kari/common/widgets/appbar/appbar.dart';
import 'package:kala_kari/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:kala_kari/features/shop/screens/checkout/checkout.dart';

import '../../../../utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const Padding(
        padding: EdgeInsets.all(KSizes.defaultSpace),

        /// -- Items in Cart
        child: KCartItems()
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(KSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()),child: const Text('Checkout \$256.0')),
      ),
    );
  }
}




