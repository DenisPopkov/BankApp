import 'package:bank_app/screens/main/resources/color_assets.dart';
import 'package:bank_app/screens/main/resources/padding_assets.dart';
import 'package:flutter/material.dart';

import '../resources/fonts_assets.dart';

class SubscribeItem extends StatelessWidget {
  final Widget titleIcon;
  final String title;
  final String description;
  final String costPerMonth;

  const SubscribeItem({
    required this.titleIcon,
    required this.title,
    required this.description,
    required this.costPerMonth,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(PaddingAssets.smallPadding),
      child: Container(
        width: 216,
        height: 130,
        padding: EdgeInsets.all(PaddingAssets.mediumPadding),
        decoration: BoxDecoration(
          color: ColorAssets.whiteColor,
          borderRadius: BorderRadius.circular(PaddingAssets.mediumRadius),
          boxShadow: [
            BoxShadow(
              color:
                  ColorAssets.blackColor.withOpacity(ColorAssets.lightOpacity),
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
                titleIcon,
                SizedBox(width: PaddingAssets.mediumSize),
                Text(
                  title,
                  style: TextStyle(
                      color: ColorAssets.blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: FontAssets.bigFontSize16),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  description,
                  style: TextStyle(
                    fontFamily: FontAssets.sfProTextBold,
                    color: ColorAssets.blackColor
                        .withOpacity(ColorAssets.mediumOpacity),
                    fontSize: FontAssets.mediumFontSize14,
                  ),
                ),
              ],
            ),
            SizedBox(height: PaddingAssets.slightSize),
            Row(
              children: [
                Text(
                  costPerMonth,
                  style: TextStyle(
                    fontFamily: FontAssets.sfProTextMedium,
                    color: ColorAssets.blackColor
                        .withOpacity(ColorAssets.mediumOpacity),
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
