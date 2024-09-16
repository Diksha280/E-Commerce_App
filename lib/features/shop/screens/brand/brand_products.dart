import 'package:flutter/material.dart';
import 'package:kala_kari/common/widgets/appbar/appbar.dart';
import 'package:kala_kari/common/widgets/brands/brand_card.dart';
import 'package:kala_kari/common/widgets/products/sortable/sortable_products.dart';
import 'package:kala_kari/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: KAppBar(title: Text('Apple')),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(KSizes.defaultSpace),
        child: Column(
          children: [
            /// Brand Detail
            KBrandCard(showBorder: true),
            SizedBox(height: KSizes.spaceBtwSections,),
            KSortableProducts(),
          ],
        ),),
      ),

    );
  }
}
