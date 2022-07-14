import 'package:app_wallet_ays/helpers/colors_helper.dart';
import 'package:app_wallet_ays/helpers/images_helper.dart';
import 'package:app_wallet_ays/views/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InsightScreen extends StatelessWidget {
  const InsightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: ListView(
        children: [],
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
        'Insight',
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
          const AssetImage(ImageHelper.menuIcon),
          size: Get.width * 0.012,
        ),
      )
    ],
  );
}
