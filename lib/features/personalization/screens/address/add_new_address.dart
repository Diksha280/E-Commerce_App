import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kala_kari/common/widgets/appbar/appbar.dart';

import '../../../../utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(
        showBackArrow: true,
        title: Text('Add New Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: 'Name'
                  ),
                ),
                const SizedBox(height: KSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.mobile),
                      labelText: 'Phone Number'
                  ),
                ),
                const SizedBox(height: KSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.building_31),
                          labelText: 'Street'
                      ),
                    ),),
                    const SizedBox(width: KSizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.code),
                            labelText: 'Postal Code'
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: KSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.building),
                          labelText: 'City'
                      ),
                    ),),
                    const SizedBox(width: KSizes.spaceBtwInputFields),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.activity),
                            labelText: 'State'
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: KSizes.spaceBtwInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.global),
                      labelText: 'Country'
                  ),
                ),
                const SizedBox(height: KSizes.defaultSpace),
                SizedBox(width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){}, child: Text('Save'),
                ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
