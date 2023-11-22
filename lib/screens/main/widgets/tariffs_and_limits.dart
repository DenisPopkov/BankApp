import 'package:bank_app/screens/main/resources/img_assets.dart';
import 'package:bank_app/screens/main/resources/padding_assets.dart';
import 'package:bank_app/screens/main/resources/string_assets.dart';
import 'package:bank_app/screens/main/widgets/tariffs_and_limits_item.dart';
import 'package:flutter/material.dart';

import '../../utils/hover.dart';
import '../model/TariffAndLimitItemModel.dart';
import '../resources/color_assets.dart';

class TariffsAndLimits extends StatelessWidget {
  TariffsAndLimits({Key? key}) : super(key: key);

  final items = <TariffAndLimitItemModel>[
    TariffAndLimitItemModel(
      title: StringAssets.changeLimitTitle,
      subtitle: StringAssets.transactionsAndFeeTitle,
      pathToImage: ImageAssets.limitIcon,
      isLastItem: false,
    ),
    TariffAndLimitItemModel(
      title: StringAssets.transactionsWithoutExtraTitle,
      subtitle: StringAssets.showBalanceTitle,
      pathToImage: ImageAssets.percentIcon,
      isLastItem: false,
    ),
    TariffAndLimitItemModel(
      title: StringAssets.limitInformationTitle,
      subtitle: '',
      pathToImage: ImageAssets.transferIcon,
      isLastItem: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((item) {
        return Column(
          children: [
            HoverBuilder(
              foregroundColor: ColorAssets.chipContainer,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(PaddingAssets.zeroPadding),
                  side: BorderSide(
                      color: Colors.transparent,
                      width: PaddingAssets.zeroPadding)),
              builder: (isHovered) {
                return TariffAndLimitsItem(
                  tariffAndLimitModel: TariffAndLimitItemModel(
                    title: item.title,
                    subtitle: item.subtitle,
                    pathToImage: item.pathToImage,
                    isLastItem: item.isLastItem,
                  ),
                );
              },
            ),
            SizedBox(height: PaddingAssets.mediumRadius),
          ],
        );
      }).toList(),
    );
  }
}
