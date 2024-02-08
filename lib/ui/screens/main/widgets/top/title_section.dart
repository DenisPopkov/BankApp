import 'package:flutter/material.dart';

import '../../theme/color_assets.dart';
import '../../theme/fonts_assets.dart';
import '../../theme/padding_assets.dart';

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
              fontFamily: FontAssets.sfProTextBold,
              color: ColorAssets.blackColor,
              fontWeight: FontWeight.bold,
              fontSize: FontAssets.bigFontSize20),
        ),
        SizedBox(height: PaddingAssets.smallPadding),
        if (subTitle != null && subTitle!.isNotEmpty) ...[
          Text(
            subTitle!,
            style: TextStyle(
                fontFamily: FontAssets.sfProTextMedium,
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
