import 'dart:math';

import 'package:app_wallet_ays/controllers/credit_card_controller/credit_card_controller.dart';
import 'package:app_wallet_ays/helpers/colors_helper.dart';
import 'package:app_wallet_ays/helpers/images_helper.dart';
import 'package:app_wallet_ays/models/credit_card_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreditCard extends StatelessWidget {
  CreditCard({Key? key, required this.creditCardModel}) : super(key: key);
  CreditCardController cardController = Get.put(CreditCardController());

  CreditCardModel creditCardModel;
  List<LinearGradient> colors = [
    ColorsHelper.firstCirclePerGradient,
    ColorsHelper.secondCirclePerGradient,
    ColorsHelper.thirdCirclePerGradient,
  ];

  void changeIndex() {
    Random rnd = Random();
    cardController.randomColorIndex.value = rnd.nextInt(colors.length);
  }

  @override
  Widget build(BuildContext context) {
    changeIndex();
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        gradient: colors[cardController.randomColorIndex.value],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: Get.width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(ImageHelper.chipImg),
                const SizedBox(width: 10),
                Icon(
                  Icons.wifi_rounded,
                  size: Get.width * 0.08,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Text(
              creditCardModel.cardNumber,
              style: TextStyle(
                  fontSize: Get.width * 0.065, color: ColorsHelper.whiteColor),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'VALID\nTHRU',
                style: TextStyle(
                  fontSize: Get.width * 0.015,
                  color: Colors.grey[200],
                ),
              ),
              const SizedBox(width: 5),
              Text(
                creditCardModel.expirationDate,
                style: TextStyle(
                    fontSize: Get.width * 0.05, color: ColorsHelper.whiteColor),
              ),
            ],
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  creditCardModel.cardHolderName,
                  style: TextStyle(
                    fontSize: Get.width * 0.04,
                    color: ColorsHelper.whiteColor,
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 40,
                  child: Stack(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Positioned(
                        right: 20,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
