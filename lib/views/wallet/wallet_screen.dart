import 'dart:ui';

import 'package:app_wallet_ays/controllers/credit_card_controller/credit_card_controller.dart';
import 'package:app_wallet_ays/helpers/colors_helper.dart';
import 'package:app_wallet_ays/helpers/images_helper.dart';
import 'package:app_wallet_ays/views/widgets/add_card_button.dart';
import 'package:app_wallet_ays/views/widgets/credit_card.dart';
import 'package:app_wallet_ays/views/widgets/input_field.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletScreen extends StatelessWidget {
  WalletScreen({Key? key}) : super(key: key);

  CreditCardController cardController = Get.put(CreditCardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: _appBar(),
      body: ListView(
        children: [
          Column(
            children: [
              Text(
                'Cards',
                style: TextStyle(
                  fontSize: Get.width * 0.04,
                  color: Colors.grey[400],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: Get.width,
                  height: 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: ColorsHelper.cardColor,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: Get.height * 0.04),
          Obx(
            () => CarouselSlider(
              items: cardController.creditCardList
                  .map(
                    (element) => CreditCard(
                      creditCardModel: element,
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                enableInfiniteScroll: false,
                autoPlay: false,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
            ),
          ),
          balanceText(),
          SizedBox(height: Get.height * 0.03),
          formCard(),
        ],
      ),
    );
  }
}

formCard() {
  return Padding(
    padding: EdgeInsets.all(Get.width * 0.06),
    child: Container(
      width: Get.width * 0.1,
      decoration: BoxDecoration(
        color: ColorsHelper.whiteColor.withOpacity(.08),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
          child: Padding(
            padding: EdgeInsets.all(Get.width * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: Get.width * 0.03, left: Get.width * 0.03, bottom: 5),
                  child: Text(
                    '+ Add Card',
                    style: TextStyle(
                      color: ColorsHelper.whiteColor,
                      fontSize: Get.width * 0.06,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: Get.width * 0.03),
                  child: Text(
                    'Add your credit / debit card',
                    style: TextStyle(
                      color: ColorsHelper.whiteColor,
                      fontSize: Get.width * 0.04,
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.05),
                MyInputField(
                  isCardField: true,
                  hint: 'Card Number',
                  controller: CreditCardController.cardNumController,
                ),
                MyInputField(
                  isCardField: false,
                  hint: 'Cardholder Name',
                  controller: CreditCardController.cardHolderController,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: MyInputField(
                        isCardField: false,
                        hint: 'Expiration Date',
                        controller: CreditCardController.expirationController,
                      ),
                    ),
                    Expanded(
                      child: MyInputField(
                        isCardField: false,
                        hint: 'Security Code',
                        controller: CreditCardController.secCodeController,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.035),
                Center(child: AddCardButton()),
                SizedBox(height: Get.height * 0.035),
              ],
            ),
          ),
        ),
      ),
    ),
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

AppBar _appBar() {
  return AppBar(
    toolbarHeight: Get.height * 0.11,
    title: Padding(
      padding: EdgeInsets.only(top: Get.width * 0.02),
      child: Text(
        'Wallet',
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
