import 'package:flutter/material.dart';
import 'package:sber_screen/static/custom_colors.dart';

sealed class TextStyles {
  static const TextStyle profileName = TextStyle(
    color: CustomColors.primary,
    fontSize: 24,
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w700,
  );
  static const TextStyle tabLabel = TextStyle(
    fontSize: 16,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    letterSpacing: -0.40,
  );
  static const TextStyle title = TextStyle(
    color: CustomColors.primary,
    fontSize: 20,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w700,
    letterSpacing: -0.70,
  );
  static final TextStyle subtitle = TextStyle(
    color: CustomColors.secondary,
    fontSize: 14,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    letterSpacing: -0.42,
  );
  static const TextStyle cardName = TextStyle(
    color: CustomColors.primary,
    fontSize: 16,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    letterSpacing: -0.40,
  );
  static const TextStyle cardTitle = TextStyle(
    color: CustomColors.primary,
    fontSize: 14,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    letterSpacing: -0.41,
  );
  static final TextStyle cardSubtitle = TextStyle(
    color: CustomColors.secondary,
    fontSize: 14,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    letterSpacing: -0.41,
  );
}
