import 'package:first_assignment/common/gap.dart';
import 'package:flutter/material.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  int first = 0;
  int second = 0;
  int result = 0;

  final _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value){
                  if(value!.isEmpty){
                    return "Enter a number";
                  }return null;
                },
                onChanged: (value) => first = int.tryParse(value)??0,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "First number",
                ),
                keyboardType: TextInputType.number,
              ),
              gap8y,
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter a number";
                  }return null;
                },
                onChanged: (value) => second = int.tryParse(value)??0,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Second number",
                ),
                keyboardType: TextInputType.number,
              ),
              gap8y,
              Text(
                "Result: $result",
                style: const TextStyle(fontSize: 22),
              ),
              gap8y,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result = first + second;
                      });
                    },
                    child: const Text("Addition")),
              ),
              gap8y,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result = first - second;
                      });
                    },
                    child: const Text("Subtraction")),
              ),
              gap8y,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result = first * second;
                      });
                    },
                    child: const Text("Multiplication")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
