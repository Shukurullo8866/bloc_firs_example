import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/TextMakerCubitga/text_maker_cubitga.dart';

class UpperCasePage extends StatefulWidget {
  const UpperCasePage({Key? key}) : super(key: key);

  @override
  State<UpperCasePage> createState() => _UpperCasePageState();
}

class _UpperCasePageState extends State<UpperCasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UpperCase Screen"),
      ),
      body: Column(
        children: [
          SizedBox(height: 70),
          BlocBuilder<TextMakerCubit, String>(builder: (context, state) {
            return Text(
              "This is Addition:${state}",
              style: const TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            );
          }),
          SizedBox(height: 50),
          TextField(
            onChanged: (value) {
              BlocProvider.of<TextMakerCubit>(context)
                  .upparCase(value.toString());
            },
            decoration: const InputDecoration(
              labelText: 'Text Kiriting',
              labelStyle: TextStyle(fontSize: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                borderSide: BorderSide(
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.black),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
