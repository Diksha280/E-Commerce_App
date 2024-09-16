import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kala_kari/common/widgets/appbar/appbar.dart';
import 'package:kala_kari/common/widgets/icons/k_circular_icon.dart';
import 'package:kala_kari/common/widgets/layouts/grid_layout.dart';
import 'package:kala_kari/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:kala_kari/features/shop/screens/home/home.dart';
import 'package:kala_kari/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        title: Text('WishList', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          KCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            children: [
              KGridLayout(itemCount: 6, itemBuilder: (_, index) =>const KProductCardVertical())

            ],
          ),
        ),
      ),

    );
  }
}
