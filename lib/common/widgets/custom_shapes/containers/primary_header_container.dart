import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class KPrimaryHeaderContainer extends StatelessWidget {
  const KPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return KCurvedEdgeWidget(
      child: Container(
        color: KColors.primary,

        /// -- [size.isFinite': is not true] Error -> Read README.md file at [DESIGN ERRORS] # 1
        child: Stack(
          children: [
            /// -- Background Custom Shapes
            Positioned(top: -150, right: -250, child:  KCircularContainer(backgroundColor: KColors.textWhite.withOpacity(0.1),)),
            Positioned(top: 100, right: -300, child: KCircularContainer(backgroundColor: KColors.textWhite.withOpacity(0.1),)),
            child,

          ],
        ),
      ),
    );
  }
}