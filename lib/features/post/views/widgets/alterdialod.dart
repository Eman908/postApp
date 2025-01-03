import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ntitask/core/style/color_app.dart';
import 'package:ntitask/core/style/size_app.dart';
import 'package:ntitask/features/post/views/widgets/text_style.dart';

AlertDialog alertDialog() {
  return AlertDialog(
    backgroundColor: ColorApp.colorBlack,
    title: Center(
      child: Row(
        children: [
          Image.asset('assets/party.png'),
          Expanded(
            child: Center(
              child: FaIcon(
                FontAwesomeIcons.solidCircleCheck,
                size: 60,
                color: ColorApp.colorWhite,
              ),
            ),
          ),
          Image.asset('assets/party2.png'),
        ],
      ),
    ),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        Text(
          'Uploaded',
          style: textStyle(size: SizeApp.s24, spacing: -0.1),
        ),
        Text(
          'Keep posting & Share with your Friends',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: SizeApp.s16,
            color: ColorApp.colorHintText,
          ),
        )
      ],
    ),
  );
}
