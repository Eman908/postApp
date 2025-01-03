import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ntitask/core/style/color_app.dart';

class SplashText extends StatelessWidget {
  const SplashText({
    super.key,
    required this.text,
    required this.size,
  });
  final String text;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.dmSans(
        fontSize: size,
        letterSpacing: -1,
        color: ColorApp.colorWhite,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
