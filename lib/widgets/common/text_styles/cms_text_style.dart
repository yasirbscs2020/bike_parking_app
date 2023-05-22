import 'package:bike_parking_app/constants/colors.dart';
import 'package:flutter/material.dart';

var cmsTextStyleErrorMessage = const TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: "Outfit",
    overflow: TextOverflow.ellipsis,
    color: ColorPathConstants.redColor);
var cmsTextStyleWithoutSize = const TextStyle(
  overflow: TextOverflow.ellipsis,
  fontWeight: FontWeight.w400,
  fontFamily: "Outfit",
);

class CmsTextStyle {
  static TextStyle getCustomTextStyle({
    Color color = Colors.black,
    double fontSize = 15.0,
    FontWeight fontWeight = FontWeight.normal,
    TextOverflow? textOverflow,
    TextDecoration? underline,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: "Outfit",
      overflow: textOverflow,
      fontWeight: fontWeight,
      decoration: underline,
    );
  }

  static TextStyle getCustomHintTextStyle({
    Color color = Colors.grey,
    double fontSize = 17.0,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: "Outfit",
    );
  }
}
