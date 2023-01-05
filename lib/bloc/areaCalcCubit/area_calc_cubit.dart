import 'dart:math';

import 'package:bloc_firs_example/bloc/areaCalcCubit/calc_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(InitialState(a: 10, b: 15));
  surfase(int a, int b) {
    emit(CalculateSurface(
      a * b,
    ));
  }

  circle(int a) {
    emit(CircleSurfFace((a * a) * pi));
  }
}
