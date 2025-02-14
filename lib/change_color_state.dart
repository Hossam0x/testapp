import 'package:flutter/material.dart';

abstract class ChangecolorState {}

class colorInitial extends ChangecolorState {}

class colorloaded extends ChangecolorState {
  final Color? color;

  colorloaded({required this.color});
}
