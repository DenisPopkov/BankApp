import 'package:bank_app/screens/main/profile_tab.dart';
import 'package:bank_app/screens/main/resources/color_assets.dart';
import 'package:bank_app/screens/main/resources/string_assets.dart';
import 'package:bank_app/screens/main/widgets/top/app_bar.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage>
    with TickerProviderStateMixin {
  static const int listLength = 2;

  late TabController _tabController;
  String? selectedChoice;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: listLength, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
      length: listLength,
      child: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppbar(
                tabController: _tabController,
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
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
    ));
  }
}
