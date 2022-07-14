import 'package:app_wallet_ays/helpers/theme_helper.dart';
import 'package:app_wallet_ays/views/bottom_tabs/bottom_tabs.dart';
import 'package:app_wallet_ays/views/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeHelper,
      home: BottomTabs(),
    );
  }
}
