import 'package:app_wallet_ays/helpers/colors_helper.dart';
import 'package:app_wallet_ays/models/share_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ShareCard extends StatelessWidget {
  ShareModel shareModel;
  ShareCard({Key? key, required this.shareModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(Get.width * 0.07),
        decoration: BoxDecoration(
          color: ColorsHelper.bgColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    shareModel.companyLogo,
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: Get.width * 0.05),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shareModel.companyName,
                      style: TextStyle(
                        color: ColorsHelper.whiteColor,
                        fontSize: Get.width * 0.045,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      DateFormat('MMM, d/y').format(shareModel.date),
                      style: TextStyle(
                        color: ColorsHelper.whiteColor,
                        fontSize: Get.width * 0.030,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: ColorsHelper.blueColor, width: 1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '-£' + shareModel.interestPrice.toString(),
                  style: TextStyle(
                    color: ColorsHelper.whiteColor,
                    fontSize: Get.width * 0.030,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
