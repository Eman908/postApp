import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ntitask/core/style/string_app.dart';
import 'package:ntitask/core/widgets/badge.dart';

BottomNavigationBarItem buttonWithBadge() {
  return BottomNavigationBarItem(
    icon: SizedBox(
      height: 32,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          FaIcon(
            FontAwesomeIcons.commentDots,
          ),
          positioned()
        ],
      ),
    ),
    label: StringApp.messages,
  );
}
