import 'package:bank_app/screens/main/resources/string_assets.dart';
import 'package:flutter/material.dart';

import '../../utils/hover.dart';
import '../resources/color_assets.dart';
import '../resources/fonts_assets.dart';
import '../resources/padding_assets.dart';

class Interest extends StatelessWidget {
  const Interest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = <String>[
      StringAssets.foodChip,
      StringAssets.selfLearnChip,
      StringAssets.techChip,
      StringAssets.homeChip,
      StringAssets.entertainmentChip,
      StringAssets.selfCareChip,
      StringAssets.scienceChip,
    ];
    return Wrap(
      spacing: PaddingAssets.smallSpacing,
      runSpacing: PaddingAssets.smallSpacing,
      children: items
          .map((label) => HoverBuilder(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(PaddingAssets.mediumPadding),
                    side: BorderSide(
                        color: Colors.transparent,
                        width: PaddingAssets.zeroPadding)),
                foregroundColor: ColorAssets.chipContainer,
                builder: (isHovered) {
                  return InterestItem(label);
                },
              ))
          .toList(),
    );
  }
}

class InterestItem extends StatelessWidget {
  final String label;

  const InterestItem(
    this.label, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: PaddingAssets.mediumSpacing,
          vertical: PaddingAssets.smallSpacing),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(ColorAssets.slightOpacity),
        borderRadius: BorderRadius.circular(PaddingAssets.mediumPadding),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontFamily: FontAssets.sfProTextMedium,
          color: ColorAssets.blackColor,
          fontWeight: FontWeight.w500,
          fontSize: FontAssets.mediumFontSize14,
        ),
      ),
    );
  }
}
