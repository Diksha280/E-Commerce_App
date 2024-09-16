import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kala_kari/common/widgets/appbar/appbar.dart';
import 'package:kala_kari/common/widgets/images/k_circular_image.dart';
import 'package:kala_kari/common/widgets/texts/section_heading.dart';
import 'package:kala_kari/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:kala_kari/utils/constants/image_strings.dart';
import 'package:kala_kari/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      /// -- Body
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(KSizes.defaultSpace),
        child: Column(
          children: [
            /// Profile Picture
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const KCircularImage(image: KImages.user, width: 80, height: 80,),
                  TextButton(onPressed: (){}, child: const Text('Change Profile Picture'))
                ],
              ),
            ),

            /// Details
            const SizedBox(height: KSizes.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: KSizes.spaceBtwItems),

            /// Heading Profile Info
            const KSectionHeading(title: 'Profile Information', showActionButton: false,),
            const SizedBox(height: KSizes.spaceBtwItems),

            KProfileMenu(onPressed: () {}, title: 'Name', value: 'Anil Kotangale'),
            KProfileMenu(onPressed: () {}, title: 'Username', value: 'Anil'),

            const SizedBox(height: KSizes.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: KSizes.spaceBtwItems),

            /// Heading Personal Info
            const KSectionHeading(title: 'Personal Information', showActionButton: false,),
            const SizedBox(height: KSizes.spaceBtwItems),

            KProfileMenu(onPressed: () {}, title: 'User ID', value: '23456', icon: Iconsax.copy,),
            KProfileMenu(onPressed: () {}, title: 'E-mail', value: 'anil@gmail.com'),
            KProfileMenu(onPressed: () {}, title: 'Phone Number', value: '+91-9876543221'),
            KProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
            KProfileMenu(onPressed: () {}, title: 'Date of Birth', value: '3 Jan 1997'),

            const Divider(),
            const SizedBox(height: KSizes.spaceBtwItems),

            Center(
              child: TextButton(
                onPressed: (){},
                child: const Text('Close Account', style: TextStyle(color: Colors.red)),
              ),
            )


          ],
        ),),
      ),
    );
  }
}


