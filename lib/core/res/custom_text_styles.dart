import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'font_manager.dart';

/// Helper function to create a [TextStyle] with the given parameters.
///
/// [fontSize] is the size of the text. It defaults to 12 if not provided.
/// [fontWeight] is the weight of the font.
/// [color] is the color of the text. It can be null.
/// [height] is the height of the text. If not provided, it defaults to 1.h.
TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color? color, double? height) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: FontManager.fontFamily,
      color: color,
      fontWeight: fontWeight,
      height: height ?? 1.h);
}

/// Returns a [TextStyle] with regular weight.
///
/// [fontSize], [color], and [height] are optional parameters.
TextStyle getRegularStyle({double fontSize = 12, Color? color, double? height}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color, height);
}

/// Returns a [TextStyle] with medium weight.
///
/// [fontSize], [color], and [height] are optional parameters.
TextStyle getMediumStyle({double fontSize = 12, Color? color, double? height}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color, height);
}

/// Returns a [TextStyle] with light weight.
///
/// [fontSize], [color], and [height] are optional parameters.
TextStyle getLightStyle({double fontSize = 12, Color? color, double? height}) {
  return _getTextStyle(fontSize, FontWeightManager.light, color, height);
}

/// Returns a [TextStyle] with bold weight.
///
/// [fontSize], [color], and [height] are optional parameters.
TextStyle getBoldStyle({double fontSize = 12, Color? color, double? height}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color, height);
}

/// Returns a [TextStyle] with semi-bold weight.
///
/// [fontSize], [color], and [height] are optional parameters.
TextStyle getSemiBoldStyle({double fontSize = 12, Color? color, double? height}) {
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color, height);
}