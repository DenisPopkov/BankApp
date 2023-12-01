import 'package:bank_app/ui/screens/main/widgets/subscription/subscribe_item.dart';
import 'package:flutter/material.dart';

import '../../../../utils/hover.dart';
import '../../model/ModelData.dart';
import '../../model/SubscribeModel.dart';
import '../../resources/color_assets.dart';
import '../../resources/padding_assets.dart';

class SubscribeList extends StatelessWidget {
  const SubscribeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: PaddingAssets.subscribeItemHeight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: MockData.subscribeItems.map((item) {
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
