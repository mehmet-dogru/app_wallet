import 'package:app_wallet_ays/helpers/images_helper.dart';
import 'package:app_wallet_ays/models/share_model.dart';
import 'package:get/get.dart';

class ShareContorller extends GetxController {
  var shareList = <ShareModel>[
    ShareModel(
      companyName: 'Shell',
      companyLogo: ImageHelper.shellLogo,
      date: DateTime.now(),
      interestPrice: 87.41,
    ),
    ShareModel(
      companyName: 'Apple',
      companyLogo: ImageHelper.appleLogo,
      date: DateTime.now(),
      interestPrice: 142.80,
    ),
    ShareModel(
      companyName: 'Amazon',
      companyLogo: ImageHelper.amazonLogo,
      date: DateTime.now(),
      interestPrice: 328.00,
    ),
    ShareModel(
      companyName: 'Carrefour',
      companyLogo: ImageHelper.carrefourLogo,
      date: DateTime.now(),
      interestPrice: 112.43,
    ),
  ].obs;
}
