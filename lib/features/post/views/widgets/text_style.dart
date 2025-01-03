import 'package:flutter/material.dart';
import 'package:ntitask/core/style/color_app.dart';

TextStyle textStyle({required double size, required double spacing}) {
  return TextStyle(
    color: ColorApp.colorWhite,
    fontSize: size,
    fontWeight: FontWeight.bold,
    letterSpacing: spacing,
  );
}
