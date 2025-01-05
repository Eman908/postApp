import 'package:flutter/material.dart';
import 'package:ntitask/core/style/color_app.dart';
import 'package:ntitask/core/style/size_app.dart';
import 'package:ntitask/core/style/string_app.dart';
import 'package:ntitask/features/home/views/screen/home_screen.dart';
import 'package:ntitask/features/splash/views/widgets/splash_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 5),
      () => {
        if (mounted)
          {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            )
          }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SplashText(
              text: StringApp.splashTitle,
              size: SizeApp.s48,
            ),
            SplashText(
              text: StringApp.splashSubTitle,
              size: SizeApp.s16,
            ),
            const SizedBox(
              height: 90,
            ),
            CircularProgressIndicator(
              color: ColorApp.colorLoader,
              backgroundColor: ColorApp.colorWhite.withAlpha(40),
            )
          ],
        ),
      ),
    );
  }
}
