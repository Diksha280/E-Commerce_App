import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kala_kari/common/widgets/appbar/appbar.dart';
import 'package:kala_kari/common/widgets/appbar/tabbar.dart';
import 'package:kala_kari/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:kala_kari/common/widgets/layouts/grid_layout.dart';
import 'package:kala_kari/common/widgets/brands/brand_card.dart';
import 'package:kala_kari/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:kala_kari/common/widgets/texts/section_heading.dart';
import 'package:kala_kari/features/shop/screens/brand/all_brands.dart';
import 'package:kala_kari/features/shop/screens/store/widgets/category_tab.dart';
import 'package:kala_kari/utils/constants/colors.dart';
import 'package:kala_kari/utils/constants/sizes.dart';
import 'package:kala_kari/utils/helpers/helper_functions.dart';



class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: KAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium,),
          actions: [
            KCartCounterIcon(onPressed: (){})
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled){
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                backgroundColor: KHelperFunctions.isDarkMode(context) ? KColors.black : KColors.white,
                expandedHeight: 440,

                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(KSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// -- Search Bar
                      const SizedBox(height: KSizes.spaceBtwItems,),
                      const KSearchContainer(text: 'Search in Store', showBorder: true, showBackground: false, padding: EdgeInsets.zero,),
                      const SizedBox(height: KSizes.spaceBtwSections,),

                      /// -- Features Brands
                      KSectionHeading(title: 'Featured Brands', showActionButton: true, onPressed: () => Get.to(() => const AllBrandsScreen())),
                      const SizedBox(height: KSizes.spaceBtwItems / 1.5,),

                      /// -- Brands Grid
                      KGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            // In the Backend Tutorial i will pass the Each Brand & onPress Event also.
                        return const KBrandCard(showBorder : false);
                      })
                    ],
                  ),
                ),

                /// Tabs
                bottom: const KTabBar(
                  tabs: [
                  Tab(child: Text('Sports'),),
                  Tab(child: Text('Furniture'),),
                  Tab(child: Text('Electronics'),),
                  Tab(child: Text('Clothes'),),
                  Tab(child: Text('Cosmetics'),),
                  Tab(child: Text('Shoes'),),
                  Tab(child: Text('Toys'),)
                ],),
              )
            ];
          },

          /// -- Body
          body: const TabBarView(
            children: [
              KCategoryTab(), KCategoryTab(), KCategoryTab(), KCategoryTab(), KCategoryTab(), KCategoryTab(), KCategoryTab(),
            ]

              )
          )
        ),

      );
  }
}




