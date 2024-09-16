import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kala_kari/features/shop/screens/cart/cart.dart';
import 'package:kala_kari/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
// import 'package:badges/badges.dart' as badges;


class KCartCounterIcon extends StatelessWidget {
  const KCartCounterIcon({
    super.key,
    this.iconColor,
    required this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(onPressed: () => Get.to(() => const CartScreen()), icon: Icon(Iconsax.shopping_bag, color: iconColor)),
        Positioned(
          right: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: KColors.black.withOpacity(0.6),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('2',
                style: Theme.of(context).textTheme.labelLarge!.apply(color: KColors.white, fontSizeFactor: 1.0),),),
          ),
        ),
      ],
    );
  }
}

/// Using Badges
// Padding(
//   padding: const EdgeInsets.only(right: 12.0),
//   child: badges.Badge(
//     position: badges.BadgePosition.topEnd(top: -8, end: -2),
//     showBadge: true,
//     ignorePointer: false,
//     badgeContent: const Text('0', style: TextStyle(color: KColors.white, ),),
//     badgeAnimation: const badges.BadgeAnimation.rotation(
//       animationDuration: Duration(milliseconds: 300),
//     ),
//     child: IconButton(onPressed: (){}, icon: const Icon(Iconsax.shopping_bag), color: KColors.white,),
//   ),
// ),