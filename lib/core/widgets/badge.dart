import 'package:flutter/material.dart';
import 'package:ntitask/core/style/color_app.dart';

Positioned positioned() {
  return Positioned(
    right: -8,
    top: -8,
    child: Container(
      height: 18,
      width: 18,
      decoration: BoxDecoration(
        color: ColorApp.colorHintText,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          '3',
          style: TextStyle(
            color: ColorApp.colorBlack,
            fontSize: 12,
          ),
        ),
      ),
    ),
  );
}
