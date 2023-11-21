import 'package:bank_app/screens/main/resources/img_assets.dart';
import 'package:bank_app/screens/main/resources/padding_assets.dart';
import 'package:bank_app/screens/main/resources/string_assets.dart';
import 'package:bank_app/screens/main/widgets/subscribe_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'flag_icon.dart';

class SubscribeList extends StatelessWidget {
  const SubscribeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: PaddingAssets.subscribeItemHeight,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SubscribeItem(
            title: StringAssets.sberPrimeTitle,
            description: StringAssets.feeTitle,
            costPerMonth: StringAssets.feeSumTitle,
            titleIcon: const FlagIcon(),
          ),
          SubscribeItem(
            title: StringAssets.transactionsTitle,
            description: StringAssets.autoSubscriptionTitle,
            costPerMonth: StringAssets.feeSumTitle,
            titleIcon: SvgPicture.asset(
              ImageAssets.percentIcon,
              height: PaddingAssets.mediumIcon,
              width: PaddingAssets.mediumIcon,
            ),
          ),
          SubscribeItem(
            title: StringAssets.sberPrimeTitle,
            description: StringAssets.feeTitle,
            costPerMonth: StringAssets.feeSumTitle,
            titleIcon: Image.asset(
              ImageAssets.sberIcon,
              height: PaddingAssets.smallIcon,
              width: PaddingAssets.smallIcon,
            ),
          ),
        ],
      ),
    );
  }
}
