import 'package:flutter/material.dart';

sealed class CustomColors {
  static const Color background = Colors.white;
  static const Color primary = Colors.black;
  static final Color secondary = Colors.black.withOpacity(0.55);
  static const Color imageShadow = Color(0x7A1D1D25);
  static const Color indicator = Color(0xFF068441);
  static const Color cardShadowPrimary = Color(0x114F4F6C);
  static const Color cardShadowSecondary = Color(0x14000000);
}
