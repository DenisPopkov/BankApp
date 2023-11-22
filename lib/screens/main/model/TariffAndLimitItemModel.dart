import 'package:flutter/cupertino.dart';

class TariffAndLimitItemModel {
  final String title;
  final String subtitle;
  final String pathToImage;
  final bool isLastItem;

  TariffAndLimitItemModel({
    required this.title,
    required this.subtitle,
    required this.pathToImage,
    required this.isLastItem,
  });
}

class SubscribeModel {
  final Widget titleIcon;
  final String title;
  final String description;
  final String costPerMonth;

  SubscribeModel({
    required this.titleIcon,
    required this.title,
    required this.description,
    required this.costPerMonth,
  });
}
