import 'package:flutter/material.dart';

sealed class TextStyles {
  static const TextStyle profileName = TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w700,
  );
  static const TextStyle tabLabel = TextStyle(
    fontSize: 16,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
  );
}
