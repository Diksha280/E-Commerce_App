import 'package:flutter/material.dart';
import 'package:kala_kari/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:kala_kari/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

/// -- Most of the Styling is already defined in the Utils -> Themes -> ChipTheme.dart
class KChoiceChip extends StatelessWidget {
   const KChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = KHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? KColors.white : null),
        avatar: isColor ? KCircularContainer(width: 50, height: 50, backgroundColor: KHelperFunctions.getColor(text)!) : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null, //Make icon in the center
        padding: isColor ? const EdgeInsets.all(0) : null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: isColor ? KHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
