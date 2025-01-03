import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ntitask/features/home/cubit/button_cubit.dart';
import 'package:ntitask/core/style/color_app.dart';
import 'package:ntitask/core/style/size_app.dart';
import 'package:ntitask/core/style/string_app.dart';
import 'package:ntitask/core/widgets/badge_button.dart';
import 'package:ntitask/core/widgets/bottom_item.dart';
import 'package:ntitask/core/widgets/middle_button.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
    required this.cubit,
  });
  final ButtonCubit cubit;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: BottomNavigationBar(
        currentIndex: cubit.currentIndex,
        onTap: (value) {
          cubit.changeIndex(value);
        },
        backgroundColor: ColorApp.colorBlack,
        selectedItemColor: ColorApp.colorWhite,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: SizeApp.s10,
        ),
        unselectedItemColor: ColorApp.colorHintText,
        unselectedLabelStyle: TextStyle(
          fontSize: SizeApp.s10,
        ),
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          bottomItem(
            icon: FontAwesomeIcons.solidCompass,
            label: StringApp.dicover,
          ),
          bottomItem(
            icon: FontAwesomeIcons.circlePlay,
            label: StringApp.videos,
          ),
          middleButton(context),
          buttonWithBadge(),
          bottomItem(
            icon: FontAwesomeIcons.user,
            label: StringApp.profile,
          ),
        ],
      ),
    );
  }
}
