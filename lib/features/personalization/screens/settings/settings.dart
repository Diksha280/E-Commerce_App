import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kala_kari/common/widgets/appbar/appbar.dart';
import 'package:kala_kari/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:kala_kari/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:kala_kari/common/widgets/texts/section_heading.dart';
import 'package:kala_kari/features/personalization/screens/address/address.dart';
import 'package:kala_kari/features/shop/screens/cart/cart.dart';
import 'package:kala_kari/features/shop/screens/order/order.dart';
import 'package:kala_kari/utils/constants/colors.dart';
import 'package:kala_kari/utils/constants/sizes.dart';

import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../profile/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header
            KPrimaryHeaderContainer(
                child: Column(
                  children: [

                    /// AppBar
                    KAppBar(
                      title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: KColors.white),),
                    ),

                    /// User Profile Card
                    KUserProfileTile(onPressed: () => Get.to(() => const ProfileScreen())),
                    const SizedBox(height: KSizes.spaceBtwSections,),
                  ],)),

            /// -- Body
            Padding(
              padding: const EdgeInsets.all(KSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Account Settings
                  const KSectionHeading(title: 'Account Settings', showActionButton: false,),
                  const SizedBox(height: KSizes.spaceBtwItems),
                  
                  KSettingsMenuTile(icon: Iconsax.safe_home, title: 'My Addresses',
                      subtitle: 'Set shopping delivery address',
                      onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  KSettingsMenuTile(icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subtitle: 'Add, remove products and move to checkout',
                    onTap: () => Get.to(() => const CartScreen()),
                  ),
                  KSettingsMenuTile(icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subtitle: 'In-progress and Completed Orders',
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  const KSettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subtitle: 'Withdraw balance to registered bank account'),
                  const KSettingsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subtitle: 'List of all the discounted coupons'),
                  const KSettingsMenuTile(icon: Iconsax.notification, title: 'Notifications', subtitle: 'Set any kind of notification message'),
                  const KSettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subtitle: 'Managed data usage and Cloud Firebase'),

                  /// -- App Settings
                  const SizedBox(height: KSizes.spaceBtwSections),
                  const KSectionHeading(title: 'App Settings', showActionButton: false,),
                  const SizedBox(height: KSizes.spaceBtwItems),
                  const KSettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subtitle: 'Upload Data to Your Cloud Firebase'),
                  KSettingsMenuTile(icon: Iconsax.location, title: 'Geolocation', subtitle: 'Set recommendation based on location', trailing: Switch(value: true, onChanged: (value){},),),
                  KSettingsMenuTile(icon: Iconsax.security_user, title: 'Safe Mode', subtitle: 'Search result is safe for all ages', trailing: Switch(value: false, onChanged: (value){}),),
                  KSettingsMenuTile(icon: Iconsax.image, title: 'HD Image Quality', subtitle: 'Set image quality to be seen', trailing: Switch(value: false, onChanged: (value){}),),


                  /// -- Logout Button
                  const SizedBox(height: KSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: KSizes.spaceBtwSections * 2.5),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


