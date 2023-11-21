import 'package:bank_app/screens/main/resources/img_assets.dart';
import 'package:bank_app/screens/main/resources/padding_assets.dart';
import 'package:bank_app/screens/main/resources/string_assets.dart';
import 'package:bank_app/screens/main/widgets/tariffs_and_limits_item.dart';
import 'package:flutter/material.dart';

class TariffsAndLimits extends StatelessWidget {
  const TariffsAndLimits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TariffAndLimitsItem(
          title: StringAssets.changeLimitTitle,
          subtitle: StringAssets.transactionsAndFeeTitle,
          pathToImage: ImageAssets.limitIcon,
          onTab: () {},
        ),
        SizedBox(height: PaddingAssets.mediumRadius),
        TariffAndLimitsItem(
          title: StringAssets.transactionsWithoutExtraTitle,
          subtitle: StringAssets.showBalanceTitle,
          pathToImage: ImageAssets.notFillPercentIcon,
          onTab: () {},
        ),
        SizedBox(height: PaddingAssets.mediumRadius),
        TariffAndLimitsItem(
          title: StringAssets.limitInformationTitle,
          subtitle: '',
          pathToImage: ImageAssets.transferIcon,
          onTab: () {},
        ),
      ],
    );
  }
}
