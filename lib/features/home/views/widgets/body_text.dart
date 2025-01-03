import 'package:flutter/material.dart';
import 'package:ntitask/core/style/color_app.dart';
import 'package:ntitask/core/style/size_app.dart';
import 'package:ntitask/core/style/string_app.dart';

Text bodyText() {
  return Text(
    StringApp.noPost,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: ColorApp.colorHintText,
      fontSize: SizeApp.s16,
    ),
  );
}
