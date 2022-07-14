import 'package:app_wallet_ays/helpers/colors_helper.dart';
import 'package:app_wallet_ays/helpers/images_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: ListView(
        children: [
          Column(
            children: [],
          ),
        ],
      ),
    );
  }
}

AppBar _appBar() {
  return AppBar(
    toolbarHeight: Get.height * 0.11,
    title: Padding(
      padding: EdgeInsets.only(top: Get.width * 0.02),
      child: Text(
        'Account',
        style: TextStyle(
          fontSize: Get.width * 0.05,
          fontWeight: FontWeight.w700,
          color: ColorsHelper.whiteColor,
        ),
      ),
    ),
    actions: [
      Padding(
        padding: EdgeInsets.only(
          right: Get.width * 0.05,
          top: Get.width * 0.02,
        ),
        child: ImageIcon(
          const AssetImage(ImageHelper.editIcon),
          size: Get.width * 0.1,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
          right: Get.width * 0.05,
          top: Get.width * 0.02,
        ),
        child: ImageIcon(
          const AssetImage(ImageHelper.menuIcon),
          size: Get.width * 0.012,
        ),
      ),
    ],
  );
}
