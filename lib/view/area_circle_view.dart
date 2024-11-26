import 'package:first_assignment/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class AreaCircleView extends StatefulWidget {
  const AreaCircleView({super.key});

  @override
  State<AreaCircleView> createState() => _AreaCircleViewState();
}

class _AreaCircleViewState extends State<AreaCircleView> {
  double radius=0;
  double area=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
           TextField(
            onChanged: (value) => radius=double.parse(value),
            decoration:const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Radius:",
            ),
            keyboardType: TextInputType.number,
          ),
          gap8y,
          Text("Area of Circle is: ${area.toStringAsFixed(3)}"),
          gap8y,
          ElevatedButton(onPressed: () {
            setState(() {
              area=pi*radius*radius;
            });
          }, child: const Text("Calculate")),
        ],
      ),
    );
  }
}