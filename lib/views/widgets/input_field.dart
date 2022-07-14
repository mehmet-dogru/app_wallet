import 'package:app_wallet_ays/helpers/card_number_formatter.dart';
import 'package:app_wallet_ays/helpers/colors_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MyInputField extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;
  final Widget? widget;
  final bool? isCardField;

  const MyInputField({
    Key? key,
    required this.hint,
    this.widget,
    this.controller,
    this.isCardField,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isCardField!) {
      return Container(
        margin: EdgeInsets.all(Get.width * 0.03),
        height: Get.height * 0.07,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: Get.width * 0.035),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  maxLength: 19,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    CardNumberFormatter(),
                  ],
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: ColorsHelper.whiteColor),
                  cursorColor: ColorsHelper.whiteColor,
                  controller: controller,
                  decoration: InputDecoration(
                    counterText: "",
                    hintStyle: TextStyle(
                      color: ColorsHelper.whiteColor,
                      fontSize: Get.width * 0.035,
                    ),
                    hintText: hint,
                    border: InputBorder.none,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.all(Get.width * 0.03),
        height: Get.height * 0.07,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: Get.width * 0.035),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  style: const TextStyle(color: ColorsHelper.whiteColor),
                  cursorColor: ColorsHelper.whiteColor,
                  controller: controller,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      color: ColorsHelper.whiteColor,
                      fontSize: Get.width * 0.035,
                    ),
                    hintText: hint,
                    border: InputBorder.none,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }
  }
}
