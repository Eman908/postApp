import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ntitask/core/style/color_app.dart';
import 'package:ntitask/features/post/views/screen/create_post.dart';

BottomNavigationBarItem middleButton(BuildContext context) {
  return BottomNavigationBarItem(
    icon: InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => CreatePost()));
      },
      child: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          color: ColorApp.colorWhite,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: FaIcon(
            FontAwesomeIcons.solidSquarePlus,
            color: ColorApp.colorBlack,
          ),
        ),
      ),
    ),
    label: '',
  );
}
