import 'package:bank_app/screens/main/resources/img_assets.dart';
import 'package:bank_app/screens/main/resources/padding_assets.dart';
import 'package:bank_app/screens/main/resources/string_assets.dart';
import 'package:bank_app/screens/main/widgets/subscribe_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/hover.dart';
import '../model/SubscribeModel.dart';
import '../resources/color_assets.dart';

class SubscribeList extends StatelessWidget {
  const SubscribeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = <SubscribeModel>[
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
          ImageAssets.percentIcon,
        ),
      ),
    ];

    return SizedBox(
      height: PaddingAssets.subscribeItemHeight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: items.map((item) {
            return Padding(
              padding: EdgeInsets.zero,
              child: HoverBuilder(
                foregroundColor: ColorAssets.chipContainer,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(PaddingAssets.mediumPadding),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: PaddingAssets.zeroPadding,
                  ),
                ),
                builder: (isHovered) {
                  return SubscribeItem(
                    subscribeModel: SubscribeModel(
                      title: item.title,
                      description: item.description,
                      costPerMonth: item.costPerMonth,
                      titleIcon: item.titleIcon,
                    ),
                  );
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
