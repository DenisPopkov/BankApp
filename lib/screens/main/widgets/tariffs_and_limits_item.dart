import 'package:bank_app/screens/main/resources/color_assets.dart';
import 'package:bank_app/screens/main/resources/fonts_assets.dart';
import 'package:bank_app/screens/main/resources/img_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/padding_assets.dart';

class TariffAndLimitsItem extends StatelessWidget {
  final String pathToImage;
  final String title;
  final String subtitle;
  final Function onTab;

  const TariffAndLimitsItem({
    required this.pathToImage,
    required this.title,
    required this.subtitle,
    required this.onTab,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: PaddingAssets.tarriffItemHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            pathToImage,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: PaddingAssets.mediumPadding),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: PaddingAssets.strokeWidth,
                    color: ColorAssets.blackColor
                        .withOpacity(ColorAssets.lightOpacity),
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: FontAssets.sfProTextMedium,
                      fontSize: FontAssets.bigFontSize16,
                      fontWeight: FontWeight.w500,
                      color: ColorAssets.blackColor,
                    ),
                  ),
                  if (subtitle.isNotEmpty) ...[
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontFamily: FontAssets.sfProTextMedium,
                        fontSize: FontAssets.bigFontSize16,
                        fontWeight: FontWeight.w500,
                        color: ColorAssets.blackColor
                            .withOpacity(ColorAssets.mediumOpacity),
                      ),
                    )
                  ]
                ],
              ),
            ),
          ),
          // Spacer(),
          Container(
            padding: EdgeInsets.only(bottom: PaddingAssets.bigPadding),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: PaddingAssets.strokeWidth,
                  color: ColorAssets.blackColor
                      .withOpacity(ColorAssets.lightOpacity),
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  ImageAssets.arrowIcon,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
