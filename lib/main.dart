import 'package:bloc_firs_example/screens/calculator_screen/calculatorPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/TextMakerCubitga/text_maker_cubitga.dart';
import 'bloc/areaCalcCubit/area_calc_cubit.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      create: (context) => CalculatorCubit(),
    ),
    BlocProvider(
      create: (context) => TextMakerCubit(""),
    ),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CalculatorPage(),
    );
  }
}
