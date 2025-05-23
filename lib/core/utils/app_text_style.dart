import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle textSize12({
    Color? color = Colors.black,
    FontWeight fontWeight = FontWeight.w400,
    TextDecoration? decoration = TextDecoration.none,
  }) {
    return TextStyle(
      fontSize: 12,
      color: color,
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  

  static TextStyle textSize18({
    Color? color = Colors.black,
    FontWeight fontWeight = FontWeight.w400,
    TextDecoration? decoration = TextDecoration.none,
  }) {
    return TextStyle(
      fontSize: 18,
      color: color,
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  static TextStyle textSize25({
    Color? color = Colors.black,
    FontWeight fontWeight = FontWeight.w400,
    TextDecoration? decoration = TextDecoration.none,
  }) {
    return TextStyle(
      fontSize: 25,
      color: color,
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  static TextStyle textSize30({
    Color? color = Colors.black,
    FontWeight fontWeight = FontWeight.w400,
    TextDecoration? decoration = TextDecoration.none,
  }) {
    return TextStyle(
      fontSize: 30,
      color: color,
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }
}
