import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/hover.dart';
import '../../resources/color_assets.dart';
import '../../resources/fonts_assets.dart';
import '../../resources/img_assets.dart';
import '../../resources/padding_assets.dart';
import '../../resources/string_assets.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key, required this.tabController}) : super(key: key);

  final tabController;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: ColorAssets.whiteColor,
      elevation: PaddingAssets.elevation,
      pinned: true,
      floating: false,
      expandedHeight: PaddingAssets.expandedHeight,
      actions: [
        IconButton(
          icon: HoverBuilder(
            foregroundColor: Colors.green,
            paddingSize: EdgeInsets.all(PaddingAssets.lightPadding),
            builder: (isHovered) {
              return SvgPicture.asset(ImageAssets.exitIcon);
            },
          ),
          onPressed: () {},
        )
      ],
      leading: IconButton(
        icon: HoverBuilder(
          foregroundColor: Colors.green,
          paddingSize: EdgeInsets.all(PaddingAssets.lightPadding),
          builder: (isHovered) {
            return SvgPicture.asset(ImageAssets.closeIcon);
          },
        ),
        onPressed: () {},
      ),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: FontAssets.bigFontSize16,
        fontFamily: FontAssets.sfProTextMedium,
        fontWeight: FontWeight.w500,
      ),
      bottom: TabBar(
        controller: tabController,
        indicatorColor: Colors.green,
        tabs: <Widget>[
          Tab(
            child: Text(
              StringAssets.profileTitle,
              style: TextStyle(
                color: Colors.black,
                fontSize: FontAssets.bigFontSize16,
                fontFamily: FontAssets.sfProTextMedium,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Tab(
            child: Text(StringAssets.settingsTitle,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: FontAssets.bigFontSize16,
                  fontFamily: FontAssets.sfProTextMedium,
                  fontWeight: FontWeight.w500,
                )),
          ),
        ],
      ),
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  ImageAssets.userImage,
                  width: PaddingAssets.imageSize,
                  height: PaddingAssets.imageSize,
                ),
                SizedBox(
                  height: PaddingAssets.mediumPadding,
                ),
                Text(
                  StringAssets.userName,
                  style: TextStyle(
                      fontFamily: FontAssets.sfProDisplayBold,
                      color: ColorAssets.blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: FontAssets.largeFontSize24),
                ),
                SizedBox(
                  height: PaddingAssets.mediumPadding,
                ),
              ]),
        ),
      ),
    );
  }
}
