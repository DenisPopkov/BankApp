import 'package:bank_app/screens/main/resources/color_assets.dart';
import 'package:bank_app/screens/main/resources/img_assets.dart';
import 'package:bank_app/screens/main/resources/padding_assets.dart';
import 'package:flutter/material.dart';

class FlagIcon extends StatelessWidget {
  const FlagIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.all(PaddingAssets.lightPadding),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(ColorAssets.lightOpacity),
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          ImageAssets.userImage,
          height: PaddingAssets.smallIcon,
          width: PaddingAssets.smallIcon,
        ),
      );
}
