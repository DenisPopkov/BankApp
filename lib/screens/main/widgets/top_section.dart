import 'package:bank_app/screens/main/resources/color_assets.dart';
import 'package:bank_app/screens/main/resources/fonts_assets.dart';
import 'package:bank_app/screens/main/resources/padding_assets.dart';
import 'package:bank_app/screens/main/resources/string_assets.dart';
import 'package:bank_app/screens/utils/hover.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/img_assets.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: PaddingAssets.superLargePadding,
        left: PaddingAssets.bigPadding,
        right: PaddingAssets.bigPadding,
        bottom: PaddingAssets.zeroPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HoverBuilder(
            foregroundColor: Colors.green,
            paddingSize: EdgeInsets.all(PaddingAssets.lightPadding),
            builder: (isHovered) {
              return SvgPicture.asset(ImageAssets.closeIcon);
            },
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                ImageAssets.userImage,
                width: PaddingAssets.imageSize,
                height: PaddingAssets.imageSize,
              ),
              SizedBox(height: PaddingAssets.headerPadding),
              Text(
                StringAssets.userName,
                style: TextStyle(
                    fontFamily: FontAssets.sfProDisplayBold,
                    color: ColorAssets.blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: FontAssets.largeFontSize24),
              ),
              SizedBox(height: PaddingAssets.bigPadding),
            ],
          ),
          HoverBuilder(
            foregroundColor: Colors.green,
            paddingSize: EdgeInsets.all(PaddingAssets.lightPadding),
            builder: (isHovered) {
              return SvgPicture.asset(ImageAssets.exitIcon);
            },
          ),
        ],
      ),
    );
  }
}
