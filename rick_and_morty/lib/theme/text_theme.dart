import 'package:flutter/material.dart';
import 'package:rick_and_morty/theme/color_theme.dart';

class MainTextTheme {
  static var stateTextGreen = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 10,
    color: ColorPallete.stateTextGreen,
  );
  static var stateTextRed = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 10,
    color: ColorPallete.stateTextRed,
  );
  static var nameTextList = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: Colors.white,
  );
  static var somethingText = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: ColorPallete.lightGray,
  );
  static var subtitle_1 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 16,
    color: Colors.black,
  );
  static var caption = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 12,
    color: Colors.black,
  );
  static var body_2 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 14,
    color: Colors.black,
  );
  static var button = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Colors.black,
  );
}
