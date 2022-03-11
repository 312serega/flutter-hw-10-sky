import 'package:flutter/material.dart';
import 'package:skyvin/constans/sky_colors.dart';

class SkyTextStyle {
  static const TextStyle fontSize18Noraml = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: SkyColors.colorBlue,
  );
  static const TextStyle fontSize18NoramlUnderline = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: SkyColors.colorBlue,
    decoration: TextDecoration.underline,
  );
  static const TextStyle fontSize16Noraml = TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle fontSize16W600 = TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle fontSize18Normal = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle fontSize20W400 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle fontSize20W400Grey = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: Color(0xff888888),
  );
  static const TextStyle fontSize32 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w500,
    color: SkyColors.colorBlue,
  );
}
