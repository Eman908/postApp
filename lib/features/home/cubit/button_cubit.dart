import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ntitask/features/home/cubit/button_state.dart';

class ButtonCubit extends Cubit<ButtonState> {
  ButtonCubit() : super(ButtonInitial());
  int currentIndex = 0;
  void changeIndex(value) {
    currentIndex = value;

    emit(UpdateCurrentIndex());
  }
}
