import 'package:flutter/material.dart';
import 'package:kala_kari/common/widgets/appbar/appbar.dart';
import 'package:kala_kari/features/shop/screens/order/widgets/orders_list.dart';
import 'package:kala_kari/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- AppBar
      appBar: KAppBar(
        title: Text('My Orders', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: const Padding(padding: EdgeInsets.all(KSizes.defaultSpace),

        /// -- Orders
        child: KOrderListItem(),
      ),
    );
  }
}
