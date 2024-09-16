import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/k_circular_image.dart';

class KUserProfileTile extends StatelessWidget {
   const KUserProfileTile({
    super.key,
      required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const KCircularImage(image: KImages.user, width: 50, height: 50, padding: 0,),
      title: Text('Neel Kotangale', style: Theme.of(context).textTheme.headlineSmall!.apply(color: KColors.white)),
      subtitle: Text('diksha@gmail.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: KColors.white),),
      trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit, color: KColors.white),),

    );
  }
}