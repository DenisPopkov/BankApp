import 'package:bank_app/screens/main/resources/color_assets.dart';
import 'package:bank_app/screens/main/resources/padding_assets.dart';
import 'package:bank_app/screens/main/resources/string_assets.dart';
import 'package:bank_app/screens/main/theme/theme_app.dart';
import 'package:bank_app/screens/main/widgets/interest.dart';
import 'package:bank_app/screens/main/widgets/subscribe_list.dart';
import 'package:bank_app/screens/main/widgets/tariffs_and_limits.dart';
import 'package:bank_app/screens/main/widgets/title_section.dart';
import 'package:bank_app/screens/main/widgets/top_section.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            const TopSection(),
            Expanded(
              child: DefaultTabController(
                initialIndex: 0,
                length: 2,
                child: Scaffold(
                  appBar: AppBar(
                    toolbarHeight: PaddingAssets.mediumRadius,
                    elevation: 1,
                    backgroundColor: Colors.white,
                    // foregroundColor: Colors.black,
                    bottom: TabBar(
                      labelColor: Colors.black,
                      indicatorColor: const Color(ThemeApp.tabIndicatorColor),
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
                        color: const Color(ThemeApp.backgroundColor),
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
    );
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
        color: ColorAssets.blackColor.withOpacity(ColorAssets.lightOpacity),
        padding: EdgeInsets.all(PaddingAssets.mediumPadding),
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleSection(
              title: StringAssets.subscriptionTitle,
              subTitle: StringAssets.subscriptionsTitle,
            ),
            const SubscribeList(),
            SizedBox(height: PaddingAssets.largePadding),
            TitleSection(
              title: StringAssets.limitsAndSubscriptionsTitle,
              subTitle: StringAssets.onlySberTitle,
            ),
            const TariffsAndLimits(),
            SizedBox(height: PaddingAssets.bottomPadding),
            TitleSection(
              title: StringAssets.interestTitle,
              subTitle: StringAssets.historyCaption,
            ),
            SizedBox(height: PaddingAssets.mediumRadius),
            const Interest(),
          ],
        ),
      ),
    );
  }
}
