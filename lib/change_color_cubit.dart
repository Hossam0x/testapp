import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/change_color_state.dart';

class ChangeColorCubit extends Cubit<ChangecolorState> {
  ChangeColorCubit() : super(colorInitial());

  void changeColor() {
    emit(colorloaded(color: Colors.blue));
  }
}
