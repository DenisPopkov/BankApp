import 'package:bank_app/screens/main/resources/color_assets.dart';
import 'package:bank_app/screens/main/resources/fonts_assets.dart';
import 'package:bank_app/screens/main/resources/padding_assets.dart';
import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  final String title;
  final String? subTitle;

  const TitleSection({
    required this.title,
    this.subTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontFamily: FontAssets.sfProDisplayBold,
              color: ColorAssets.blackColor,
              fontWeight: FontWeight.bold,
              fontSize: FontAssets.largeFontSize24),
        ),
        SizedBox(height: PaddingAssets.smallPadding),
        if (subTitle != null && subTitle!.isNotEmpty) ...[
          Text(
            subTitle!,
            style: TextStyle(
                color: ColorAssets.blackColor
                    .withOpacity(ColorAssets.mediumOpacity),
                fontWeight: FontWeight.w500,
                fontSize: FontAssets.mediumFontSize14),
          ),
          SizedBox(height: PaddingAssets.smallIcon),
        ] else ...[
          const SizedBox.shrink()
        ],
      ],
    );
  }
}
