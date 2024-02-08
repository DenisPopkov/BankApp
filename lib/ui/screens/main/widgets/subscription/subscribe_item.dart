import 'package:flutter/material.dart';

import '../../model/SubscribeModel.dart';
import '../../theme/color_assets.dart';
import '../../theme/fonts_assets.dart';
import '../../theme/padding_assets.dart';

class SubscribeItem extends StatelessWidget {
  final SubscribeModel subscribeModel;

  const SubscribeItem({
    required this.subscribeModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(PaddingAssets.lightPadding),
      child: Container(
        width: PaddingAssets.subscribeItemWidth,
        height: PaddingAssets.subscribeItemHeight,
        padding: EdgeInsets.all(PaddingAssets.mediumPadding),
        decoration: BoxDecoration(
          color: ColorAssets.whiteColor,
          borderRadius: BorderRadius.circular(PaddingAssets.mediumRadius),
          boxShadow: [
            BoxShadow(
              color:
                  ColorAssets.blackColor.withOpacity(ColorAssets.slightOpacity),
              spreadRadius: ColorAssets.spreadRadius,
              blurRadius: ColorAssets.blurRadius,
              offset: Offset(ColorAssets.shadowX, ColorAssets.shadowY),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                subscribeModel.titleIcon,
                SizedBox(width: PaddingAssets.mediumSize),
                Text(
                  subscribeModel.title,
                  style: TextStyle(
                      fontFamily: FontAssets.sfProTextMedium,
                      color: ColorAssets.blackColor,
                      fontWeight: FontWeight.w500,
                      fontSize: FontAssets.bigFontSize16),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  subscribeModel.description,
                  style: TextStyle(
                    fontFamily: FontAssets.sfProTextMedium,
                    color: ColorAssets.blackColor,
                    fontWeight: FontWeight.w500,
                    fontSize: FontAssets.mediumFontSize14,
                  ),
                ),
              ],
            ),
            SizedBox(height: PaddingAssets.slightSize),
            Row(
              children: [
                Text(
                  subscribeModel.costPerMonth,
                  style: TextStyle(
                    fontFamily: FontAssets.sfProTextMedium,
                    color: ColorAssets.blackColor
                        .withOpacity(ColorAssets.mediumOpacity),
                    fontWeight: FontWeight.w500,
                    fontSize: FontAssets.mediumFontSize14,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
