import 'package:first_assignment/widgets/gap.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => first = int.parse(value),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "First number",
              ),
              keyboardType: TextInputType.number,
            ),
            gap8y,
            TextField(
              onChanged: (value) => second = int.parse(value),
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
    );
  }
}
