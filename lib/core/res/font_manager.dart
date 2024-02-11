import 'package:flutter/material.dart';

/// `FontManager` is a utility class that provides a centralized place to manage font families used in the application.
///
/// Currently, it only defines one font family: "Almarai".
/// The commented out line shows how you might add additional font families in the future.
class FontManager {
  // The primary font family used throughout the application.
  static const String fontFamily = "Almarai";

  // An example of how you might add a second font family.
  // static const String interFontFamily = "Inter";
}

/// `FontWeightManager` is a utility class that provides a centralized place to manage font weights used in the application.
///
/// It defines six font weights: light, regular, medium, semiBold, bold, and strongBold.
class FontWeightManager {
  // The light font weight (FontWeight.w300).
  static FontWeight light = FontWeight.w300;

  // The regular font weight (FontWeight.w400).
  static FontWeight regular = FontWeight.w400;

  // The medium font weight (FontWeight.w500).
  static FontWeight medium = FontWeight.w500;

  // The semi-bold font weight (FontWeight.w600).
  static FontWeight semiBold = FontWeight.w600;

  // The bold font weight (FontWeight.w700).
  static FontWeight bold = FontWeight.w700;

  // The strong bold font weight (FontWeight.w800).
  static FontWeight strongBold = FontWeight.w800;
}
