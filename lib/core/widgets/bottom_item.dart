import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

BottomNavigationBarItem bottomItem(
    {required IconData icon, required String label}) {
  return BottomNavigationBarItem(
    icon: SizedBox(
      height: 32,
      child: FaIcon(
        icon,
      ),
    ),
    label: label,
  );
}
