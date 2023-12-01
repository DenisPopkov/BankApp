import 'package:flutter_svg/svg.dart';

import '../theme/img_assets.dart';
import '../theme/string_assets.dart';
import 'SubscribeModel.dart';

class MockData {
  static final List<String> interestItems = <String>[
    StringAssets.foodChip,
    StringAssets.selfLearnChip,
    StringAssets.techChip,
    StringAssets.homeChip,
    StringAssets.entertainmentChip,
    StringAssets.selfCareChip,
    StringAssets.scienceChip,
  ];

  static Map<String, bool> getTagsMap() {
    return {for (var v in interestItems) v: false};
  }

  static Map<String, bool> interestItemMap = getTagsMap();

  static final List<SubscribeModel> subscribeItems = <SubscribeModel>[
    SubscribeModel(
      title: StringAssets.sberPrimeTitle,
      description: StringAssets.feeTitle,
      costPerMonth: StringAssets.feeSumTitle,
      titleIcon: SvgPicture.asset(
        ImageAssets.sberIcon,
      ),
    ),
    SubscribeModel(
      title: StringAssets.transactionsTitle,
      description: StringAssets.autoSubscriptionTitle,
      costPerMonth: StringAssets.feeSumTitle,
      titleIcon: SvgPicture.asset(
        ImageAssets.roundPercentIcon,
      ),
    ),
  ];
}
