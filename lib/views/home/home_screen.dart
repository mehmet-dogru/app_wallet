import 'package:app_wallet_ays/controllers/share_controller/share_controller.dart';
import 'package:app_wallet_ays/helpers/colors_helper.dart';
import 'package:app_wallet_ays/helpers/images_helper.dart';
import 'package:app_wallet_ays/models/gdp_data.dart';
import 'package:app_wallet_ays/models/share_model.dart';
import 'package:app_wallet_ays/views/widgets/share_card.dart';
import 'package:app_wallet_ays/views/widgets/view_clipper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ShareContorller _shareContorller = Get.put(ShareContorller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: ListView(
        children: [
          balanceText(),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: Get.height / 8),
                child: ClipPath(
                  clipper: ViewClipper(),
                  child: Container(
                    width: Get.width,
                    decoration: const BoxDecoration(
                      color: ColorsHelper.cardColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(Get.width * 0.025),
                      child: Container(
                          padding: EdgeInsets.only(top: Get.width * 0.15),
                          child: _myTransactionsCardList()),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: Get.width * 0.07,
                left: Get.width * 0.06266,
                child: CircularPercentIndicator(
                  rotateLinearGradient: true,
                  linearGradient: ColorsHelper.firstCirclePerGradient,
                  animation: true,
                  circularStrokeCap: CircularStrokeCap.round,
                  radius: Get.width * 0.25,
                  lineWidth: Get.width * 0.038,
                  percent: 0.13,
                  center: Text(
                    '%13',
                    style: TextStyle(
                      fontSize: Get.width * 0.045,
                      color: ColorsHelper.whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  backgroundColor: ColorsHelper.circlePercentBgColor,
                ),
              ),
              Positioned(
                top: Get.width * 0.07,
                left: Get.width * 0.376,
                child: CircularPercentIndicator(
                  rotateLinearGradient: true,
                  linearGradient: ColorsHelper.secondCirclePerGradient,
                  animation: true,
                  circularStrokeCap: CircularStrokeCap.round,
                  radius: Get.width * 0.25,
                  lineWidth: Get.width * 0.038,
                  percent: 0.61,
                  center: Text(
                    '%61',
                    style: TextStyle(
                      fontSize: Get.width * 0.045,
                      color: ColorsHelper.whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  backgroundColor: ColorsHelper.circlePercentBgColor,
                ),
              ),
              Positioned(
                top: Get.width * 0.07,
                left: Get.width * 0.69,
                child: CircularPercentIndicator(
                  rotateLinearGradient: true,
                  linearGradient: ColorsHelper.thirdCirclePerGradient,
                  animation: true,
                  circularStrokeCap: CircularStrokeCap.round,
                  radius: Get.width * 0.25,
                  lineWidth: Get.width * 0.038,
                  percent: 0.26,
                  center: Text(
                    '%26',
                    style: TextStyle(
                      fontSize: Get.width * 0.045,
                      color: ColorsHelper.whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  backgroundColor: ColorsHelper.circlePercentBgColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  ListView _myTransactionsCardList() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: _shareContorller.shareList.length,
      itemBuilder: (context, index) {
        return ShareCard(shareModel: _shareContorller.shareList[index]);
      },
    );
  }
}

AppBar _appBar() {
  return AppBar(
    toolbarHeight: Get.height * 0.11,
    title: Padding(
      padding: EdgeInsets.only(top: Get.width * 0.02),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: ColorsHelper.circleAvatarGradient,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: EdgeInsets.all(Get.width * 0.006),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  ImageHelper.userImage,
                  height: Get.width * 0.097,
                  width: Get.width * 0.097,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 13),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back !',
                style: TextStyle(
                  fontSize: Get.width * 0.04,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Mehmet Doğru',
                style: TextStyle(
                  fontSize: Get.width * 0.035,
                  fontWeight: FontWeight.w400,
                  color: ColorsHelper.subTitleTextColor,
                ),
              ),
            ],
          ),
        ],
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

Container balanceText() {
  return Container(
    margin: const EdgeInsets.only(top: 50.0),
    child: Column(
      children: [
        Text(
          '£8098,74',
          style: TextStyle(
            color: ColorsHelper.whiteColor,
            fontSize: Get.width * 0.05,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          'Available Balance',
          style: TextStyle(
            color: ColorsHelper.subTitleTextColor,
            fontSize: Get.width * 0.03,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );
}
