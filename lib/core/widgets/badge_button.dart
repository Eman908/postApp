import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ntitask/core/style/color_app.dart';
import 'package:ntitask/core/style/string_app.dart';

BottomNavigationBarItem buttonWithBadge() {
  return BottomNavigationBarItem(
    icon: SizedBox(
      height: 32,
      child: Badge(
        backgroundColor: ColorApp.colorHintText,
        label: Text(
          '3',
          style: TextStyle(color: ColorApp.colorBlack),
        ),
        child: const FaIcon(
          FontAwesomeIcons.commentDots,
        ),
      ),
    ),
    label: StringApp.messages,
  );
}
