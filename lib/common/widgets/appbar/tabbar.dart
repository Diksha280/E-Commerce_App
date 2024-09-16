import 'package:flutter/material.dart';
import 'package:kala_kari/utils/constants/colors.dart';
import 'package:kala_kari/utils/device/device_utility.dart';
import 'package:kala_kari/utils/helpers/helper_functions.dart';

class KTabBar extends StatelessWidget implements PreferredSizeWidget {
  /// If we want to add the background color to tabs you have to wrap them in Material widget.
  /// To do that we need [PreferredSized] Widget and that's why created custom class. [PreferredSizeWidget]
  const KTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? KColors.black : KColors.white,
      child: TabBar(
        isScrollable: true,
        indicatorColor: KColors.primary,
        unselectedLabelColor: KColors.darkerGrey,
        labelColor: KHelperFunctions.isDarkMode(context)
            ? KColors.white
            : KColors.primary,
        tabs: tabs,
        // isScrollable: true,
        // indicatorColor: KColors.primary,
        // labelColor: dark ? KColors.white : KColors.primary,
        // unselectedLabelColor: KColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(KDeviceUtils.getAppBarHeight());
}
