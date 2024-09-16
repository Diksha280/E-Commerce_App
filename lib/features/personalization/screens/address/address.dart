import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kala_kari/features/personalization/screens/address/add_new_address.dart';
import 'package:kala_kari/features/personalization/screens/address/widgets/single_address.dart';
import 'package:kala_kari/utils/constants/colors.dart';
import 'package:kala_kari/utils/constants/sizes.dart';

import '../../../../common/widgets/appbar/appbar.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: KColors.primary,
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
      child: const Icon(Iconsax.add, color: KColors.white),
        ),
      appBar : KAppBar(
        showBackArrow: true,
        title: Text('Addresses', style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: const SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            children: [
              KSingleAddress(selectedAddress: false),
              KSingleAddress(selectedAddress: true),

            ],
          ),
        ),
      ),

    );
  }
}
