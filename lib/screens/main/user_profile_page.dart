import 'package:bank_app/screens/main/resources/color_assets.dart';
import 'package:bank_app/screens/main/resources/fonts_assets.dart';
import 'package:bank_app/screens/main/resources/padding_assets.dart';
import 'package:bank_app/screens/main/resources/string_assets.dart';
import 'package:bank_app/screens/main/widgets/interest_chip.dart';
import 'package:bank_app/screens/main/widgets/subscription/subscribe_list.dart';
import 'package:bank_app/screens/main/widgets/tariff/tariffs_and_limits.dart';
import 'package:bank_app/screens/main/widgets/top/title_section.dart';
import 'package:bank_app/screens/main/widgets/top/top_section.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);
  static const int initialIndex = 0;
  static const int listLength = 2;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: ColorAssets.whiteColor,
        child: SingleChildScrollView(
          child: SafeArea(
            left: false,
            right: false,
            bottom: false,
            child: Column(
              children: [
                const TopSection(),
                SizedBox(
                  height: 1000,
                  child: DefaultTabController(
                    initialIndex: initialIndex,
                    length: listLength,
                    child: Scaffold(
                      appBar: AppBar(
                        toolbarHeight: PaddingAssets.mediumRadius,
                        elevation: ColorAssets.lightElevation,
                        backgroundColor: ColorAssets.whiteColor,
                        bottom: TabBar(
                          labelColor: ColorAssets.blackColor,
                          labelStyle: TextStyle(
                            fontFamily: FontAssets.sfProTextMedium,
                            fontSize: FontAssets.bigFontSize16,
                            fontWeight: FontWeight.w500,
                          ),
                          indicatorColor: ColorAssets.tabIndicator,
                          tabs: [
                            Tab(text: StringAssets.profileTitle),
                            Tab(text: StringAssets.settingsTitle),
                          ],
                        ),
                      ),
                      body: TabBarView(
                        children: [
                          const ProfileTab(),
                          Container(
                            color: ColorAssets.containerColor,
                            alignment: Alignment.center,
                            child: Text(StringAssets.settingsTitle),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class ProfileTab extends StatelessWidget {
  const ProfileTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: ColorAssets.containerColor,
        // padding: EdgeInsets.all(PaddingAssets.mediumPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: PaddingAssets.titlePadding),
            Padding(
              padding: EdgeInsets.only(
                  left: PaddingAssets.mediumPadding,
                  right: PaddingAssets.mediumPadding),
              child: TitleSection(
                title: StringAssets.subscriptionTitle,
                subTitle: StringAssets.subscriptionsTitle,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: PaddingAssets.normalPadding,
                  right: PaddingAssets.smallPadding),
              child: const SubscribeList(),
            ),
            SizedBox(height: PaddingAssets.largePadding),
            Padding(
              padding: EdgeInsets.only(
                  left: PaddingAssets.mediumPadding,
                  right: PaddingAssets.mediumPadding),
              child: TitleSection(
                title: StringAssets.limitsAndSubscriptionsTitle,
                subTitle: StringAssets.onlySberTitle,
              ),
            ),
            TariffsAndLimits(),
            SizedBox(height: PaddingAssets.largePadding),
            Padding(
              padding: EdgeInsets.only(
                  left: PaddingAssets.mediumPadding,
                  right: PaddingAssets.mediumPadding),
              child: TitleSection(
                title: StringAssets.interestTitle,
                subTitle: StringAssets.historyCaption,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: PaddingAssets.mediumPadding,
                right: PaddingAssets.mediumPadding,
              ),
              child: const TagsBlock(),
            ),
            SizedBox(height: PaddingAssets.bottomPadding),
          ],
        ),
      ),
    );
  }
}
