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
          padding: EdgeInsets.only(top: PaddingAssets.titlePadding),
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
        padding: EdgeInsets.only(top: PaddingAssets.titlePadding),
        icon: HoverBuilder(
          foregroundColor: Colors.green,
          paddingSize: EdgeInsets.all(PaddingAssets.lightPadding),
          builder: (isHovered) {
            return SvgPicture.asset(ImageAssets.closeIcon);
          },
        ),
        onPressed: () {},
      ),
      bottom: TabBar(
        controller: tabController,
        indicatorColor: Colors.green,
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.black,
        tabs: <Widget>[
          Tab(
            child: Text(
              StringAssets.profileTitle,
              style: TextStyle(
                fontSize: FontAssets.bigFontSize16,
                fontFamily: FontAssets.sfProTextMedium,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Tab(
            child: Text(StringAssets.settingsTitle,
                style: TextStyle(
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: PaddingAssets.bottomPadding,
                ),
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
