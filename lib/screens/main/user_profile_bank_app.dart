import 'package:bank_app/screens/main/user_profile_page.dart';
import 'package:flutter/material.dart';

class UserProfileBankApp extends StatelessWidget {
  const UserProfileBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserProfilePage(),
    );
  }
}
