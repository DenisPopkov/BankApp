import 'package:bank_app/ui/screens/main/widgets/tariff/tariffs_and_limits_item.dart';
import 'package:flutter/material.dart';

import '../../../../utils/hover.dart';
import '../../model/TariffAndLimitItemModel.dart';
import '../../theme/color_assets.dart';
import '../../theme/img_assets.dart';
import '../../theme/padding_assets.dart';
import '../../theme/string_assets.dart';

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
              paddingSize: EdgeInsets.only(
                  top: PaddingAssets.smallPadding,
                  bottom: PaddingAssets.smallPadding),
              foregroundColor: ColorAssets.chipContainer,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(PaddingAssets.zeroPadding),
                  side: BorderSide(
                      color: Colors.transparent,
                      width: PaddingAssets.zeroPadding)),
              builder: (isHovered) {
                return Padding(
                  padding: EdgeInsets.only(left: PaddingAssets.mediumPadding),
                  child: TariffAndLimitsItem(
                    tariffAndLimitModel: TariffAndLimitItemModel(
                      title: item.title,
                      subtitle: item.subtitle,
                      pathToImage: item.pathToImage,
                      isLastItem: item.isLastItem,
                    ),
                  ),
                );
              },
            ),
          ],
        );
      }).toList(),
    );
  }
}
