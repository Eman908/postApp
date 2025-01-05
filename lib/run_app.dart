import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ntitask/core/style/color_app.dart';
import 'package:ntitask/features/home/cubit/button_cubit.dart';
import 'package:ntitask/features/splash/views/screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ButtonCubit(),
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: ColorApp.colorBlack,
          textTheme: GoogleFonts.interTextTheme(),
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
      ),
    );
  }
}
