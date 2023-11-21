import 'package:bank_app/screens/main/resources/color_assets.dart';
import 'package:bank_app/screens/main/resources/fonts_assets.dart';
import 'package:bank_app/screens/main/resources/padding_assets.dart';
import 'package:bank_app/screens/main/resources/string_assets.dart';
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
        bottom: 0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            ImageAssets.closeIcon,
            width: PaddingAssets.smallIcon,
            height: PaddingAssets.smallIcon,
          ),
          Padding(
            padding: EdgeInsets.only(top: PaddingAssets.smallPadding),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  ImageAssets.userImage,
                  width: PaddingAssets.imageSize,
                  height: PaddingAssets.imageSize,
                ),
                Text(
                  StringAssets.userName,
                  style: TextStyle(
                      fontFamily: FontAssets.sfProDisplayBold,
                      color: ColorAssets.blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: FontAssets.largeFontSize24),
                )
              ],
            ),
          ),
          SvgPicture.asset(
            ImageAssets.exitIcon,
            width: PaddingAssets.smallIcon,
            height: PaddingAssets.smallIcon,
          ),
        ],
      ),
    );
  }
}
