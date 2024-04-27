import 'package:flutter/material.dart';

class CryptoColors {
  static const primaryColor = Color(0xFF30D95E);
  static const pureWhite = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const textColor = Color(0xFFA7AEBF);
  static const textLightColor = Color(0xffBAC2CC);
  static const secondaryColor = Color(0xFF1C252C);
  static const backgroundColor = Color(0xFF16171D);
  static const errorColor = Color(0xffFF403B);
  static const successColor = Color(0xFF00C566);
  static const neutralColor2 = Color(0xFF494D58);
  static const neutralColor1 = Color(0xff16171D);
  static const neutralColor4 = Color(0xFFA7AEBF);
  static const neutralColor3 = Color(0xff787A8D);
  static const twitterColor = Color(0xff1D9BF0);

  static LinearGradient scaffoldGradientColors = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      backgroundColor,
      backgroundColor,
      Color(0xff17252D),
    ],
  );
}
