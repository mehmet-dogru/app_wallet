import 'package:app_wallet_ays/views/account/account_screen.dart';
import 'package:app_wallet_ays/views/home/home_screen.dart';
import 'package:app_wallet_ays/views/insight/insight_screen.dart';
import 'package:app_wallet_ays/views/wallet/wallet_screen.dart';
import 'package:get/get.dart';

class BottomTabsController extends GetxController {
  var currentIndex = 0.obs;

  var screens = [
    HomeScreen(),
    WalletScreen(),
    InsightScreen(),
    AccountScreen(),
  ].obs;
}
