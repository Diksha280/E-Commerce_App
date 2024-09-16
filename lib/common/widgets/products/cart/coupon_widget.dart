import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../custom_shapes/containers/rounded_container.dart';

class KCouponCode extends StatelessWidget {
  const KCouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return KRoundContainer(
      showBorder: true,
      backgroundColor:  dark ? KColors.dark : KColors.white,
      padding: const EdgeInsets.only(top: KSizes.sm, bottom: KSizes.sm, right: KSizes.sm, left: KSizes.md),
      child: Row(
        children: [
          /// TextFiled
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Have a promo code? Enter here',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none

              ),
            ),
          ),
          /// Button
          SizedBox(
              width: 80,
              child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: dark ? KColors.white.withOpacity(0.5) : KColors.dark.withOpacity(0.5),
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      side: BorderSide(color: Colors.grey.withOpacity(0.1))
                  ),
                  child: const Text('Apply'))
          )

        ],
      ),
    );
  }
}
