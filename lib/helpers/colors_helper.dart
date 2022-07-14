import 'package:flutter/material.dart';

class ColorsHelper {
  static const Color bgColor = Color(0xFF19173D);
  static const Color cardColor = Color(0xFF262450);

  static const Color pinkColor = Color(0xFFA858EE);
  static const Color purpleColor = Color(0xFF6C40D9);
  static const Color greenColor = Color(0xFF00A6C2);
  static const Color blueColor = Color(0xFF1544DF);
  static const Color greenCardColor = Color(0xFF70E77E);
  static const Color bottomTabsActiveColor = Color(0xFF00A6C2);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color subTitleTextColor = Color(0xFFCAC9DF);
  static const Color circlePercentBgColor = Color(0xFF2D2E53);

  static const LinearGradient addCardButtonColor = LinearGradient(colors: [
    Color(0xFF00A6C2),
    Color(0xFF1544DF),
  ]);

  static const LinearGradient bottomTabsGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Color(0xFF262450),
      Color(0xFF19173D),
    ],
  );
  static const LinearGradient circleAvatarGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Color(0xFFA858EE),
      Color(0xFF1544DF),
    ],
  );

  static const LinearGradient firstCirclePerGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Color(0xFF6C40D9),
      Color(0xFFA858EE),
    ],
  );

  static const LinearGradient secondCirclePerGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Color(0xFF1544DF),
      Color(0xFF00A6C2),
    ],
  );

  static const LinearGradient thirdCirclePerGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Color(0xFF00A6C2),
      Color(0xFF70E77E),
    ],
  );
}
