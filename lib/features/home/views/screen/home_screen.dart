import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ntitask/features/home/cubit/button_cubit.dart';
import 'package:ntitask/features/home/cubit/button_state.dart';
import 'package:ntitask/core/widgets/bottom_bar.dart';
import 'package:ntitask/features/home/views/widgets/body_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ButtonCubit, ButtonState>(
      listener: (context, state) {},
      builder: (context, state) {
        ButtonCubit cubit = BlocProvider.of(context);

        return Scaffold(
          bottomNavigationBar: BottomBar(
            cubit: cubit,
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 130),
            child: SizedBox(
              width: double.infinity,
              child: bodyText(),
            ),
          ),
        );
      },
    );
  }
}
