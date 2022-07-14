import 'package:app_wallet_ays/helpers/colors_helper.dart';
import 'package:app_wallet_ays/helpers/fonts_helper.dart';
import 'package:flutter/material.dart';

final ThemeHelper = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: ColorsHelper.bgColor,
    elevation: 0,
  ),
  scaffoldBackgroundColor: ColorsHelper.bgColor,
  backgroundColor: ColorsHelper.bgColor,
  fontFamily: FontHelper.helvetica,
);
