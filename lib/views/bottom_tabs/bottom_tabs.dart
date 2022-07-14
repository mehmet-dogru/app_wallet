import 'package:app_wallet_ays/controllers/bottom_tabs/bottom_tabs_controller.dart';
import 'package:app_wallet_ays/helpers/colors_helper.dart';
import 'package:app_wallet_ays/helpers/images_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomTabs extends StatelessWidget {
  BottomTabs({Key? key}) : super(key: key);

  final BottomTabsController _bottomTabsController =
      Get.put(BottomTabsController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: _bottomTabsController
            .screens[_bottomTabsController.currentIndex.value],
        bottomNavigationBar: Container(
          width: Get.width,
          height: Get.height * 0.1,
          decoration: const BoxDecoration(
            gradient: ColorsHelper.bottomTabsGradient,
            border: Border(
              top: BorderSide(
                color: Color(0xFF19173D),
                width: 0.1,
              ),
            ),
          ),
          child: BottomNavigationBar(
            elevation: 0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Colors.transparent,
            selectedItemColor: ColorsHelper.bottomTabsActiveColor,
            unselectedItemColor: ColorsHelper.whiteColor,
            type: BottomNavigationBarType.fixed,
            currentIndex: _bottomTabsController.currentIndex.value,
            onTap: (value) {
              _bottomTabsController.currentIndex.value = value;
            },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ImageIcon(
                  const AssetImage(ImageHelper.bottomTabsHomeIcon),
                  size: Get.width * 0.06,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(ImageHelper.bottomTabsWalletIcon),
                  size: Get.width * 0.06,
                ),
                label: 'Wallet',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(ImageHelper.bottomTabsInsightIcon),
                  size: Get.width * 0.06,
                ),
                label: 'Insight',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(ImageHelper.bottomTabsUserIcon),
                  size: Get.width * 0.06,
                ),
                label: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
