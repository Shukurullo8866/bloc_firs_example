import 'package:bloc_firs_example/bloc/areaCalcCubit/area_calc_cubit.dart';
import 'package:bloc_firs_example/bloc/areaCalcCubit/calc_cubit_state.dart';
import 'package:bloc_firs_example/screens/upperCase_screen/upper_case_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator Page"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => UpperCasePage()));
              },
              icon: const Icon(Icons.cached_sharp)),
        ],
      ),
      body: Column(children: [
        BlocBuilder<CalculatorCubit, CalculatorState>(
            builder: (context, state) {
          if (state is CalculateSurface) {
            return Text(
              "This is Addition:${state.calculateSurface}",
              style: const TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            );
          } else if (state is CircleSurfFace) {
            return Text(
              "This is sub:${state.circleSurfFace}",
              style: const TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            );
          }
          return const Text(
            "Initial state",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          );
        }),
        SizedBox(height: 50),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                BlocProvider.of<CalculatorCubit>(context).surfase(15, 55);
              },
              child: Text(
                "Tomonlari a:15 va b:55 bo'lgan \nTo'rtburchakni yuzasini topish ",
                style: TextStyle(fontSize: 22),
              ),
            ),
            TextButton(
              onPressed: () {
                BlocProvider.of<CalculatorCubit>(context).circle(4);
              },
              child: Text(
                "Radius a:15 Doirani yuzasini topish ",
                style: TextStyle(fontSize: 22, color: Colors.green),
              ),
            ),
            TextButton(
              onPressed: () {
                BlocProvider.of<CalculatorCubit>(context).circle(4);
              },
              child: Text(
                "Radius a:15 Doirani yuzasini topish ",
                style: TextStyle(fontSize: 22, color: Colors.green),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
