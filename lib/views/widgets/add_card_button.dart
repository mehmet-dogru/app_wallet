import 'package:app_wallet_ays/controllers/credit_card_controller/credit_card_controller.dart';
import 'package:app_wallet_ays/helpers/colors_helper.dart';
import 'package:app_wallet_ays/models/credit_card_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddCardButton extends StatelessWidget {
  AddCardButton({Key? key}) : super(key: key);

  CreditCardController creditCardController = Get.put(CreditCardController());

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        creditCardController.addCard(
          CreditCardModel(
            cardNumber: CreditCardController.cardNumController.text,
            cardHolderName: CreditCardController.cardHolderController.text,
            expirationDate: CreditCardController.expirationController.text,
            securityCode: CreditCardController.secCodeController.text,
          ),
        );

        CreditCardController.cardNumController.clear();
        CreditCardController.cardHolderController.clear();
        CreditCardController.expirationController.clear();
        CreditCardController.secCodeController.clear();
      },
      child: Container(
        width: Get.width / 3,
        decoration: BoxDecoration(
          gradient: ColorsHelper.addCardButtonColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(Get.width * 0.035),
            child: const Text(
              'Add Card',
              style: TextStyle(
                color: ColorsHelper.whiteColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
