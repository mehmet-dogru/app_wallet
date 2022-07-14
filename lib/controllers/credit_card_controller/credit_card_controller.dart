import 'package:app_wallet_ays/models/credit_card_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreditCardController extends GetxController {
  static TextEditingController cardNumController = TextEditingController();
  static TextEditingController cardHolderController = TextEditingController();
  static TextEditingController expirationController = TextEditingController();
  static TextEditingController secCodeController = TextEditingController();

  var creditCardList = [
    CreditCardModel(
      cardNumber: '0000 0000 0000 0000',
      cardHolderName: 'Mehmet Doğru',
      expirationDate: '00/00',
      securityCode: '685',
    ),
    CreditCardModel(
      cardNumber: '5555 4444 3333 2222',
      cardHolderName: 'Zülal Doğru',
      expirationDate: '00/00',
      securityCode: '123',
    ),
    CreditCardModel(
      cardNumber: '5555 5555 5555 5555',
      cardHolderName: 'Tuna Musa Doğru',
      expirationDate: '00/00',
      securityCode: '752',
    ),
  ].obs;

  var randomColorIndex = 0.obs;

  addCard(CreditCardModel cardModel) {
    creditCardList.add(cardModel);
  }
}
