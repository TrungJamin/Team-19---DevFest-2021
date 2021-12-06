import 'package:flutter/material.dart';

class ScreenSize {
  ScreenSize._();

  // Gets the size of the screen
  static late MediaQueryData _mediaQueryData;
  static late double width;
  static late double height;
  static double? defaultSize;
  static Orientation? orientation;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    width = _mediaQueryData.size.width;
    height = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }

  static getScreenSize(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return size;
  }
}

// Get the proportionate height as per screen size
double designHeight(double inputHeight) {
  double screenHeight = ScreenSize.height;
// 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double designWidth(double inputWidth) {
  double screenWidth = ScreenSize.width;
// 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}
