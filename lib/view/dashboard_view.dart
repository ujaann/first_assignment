import 'package:first_assignment/widgets/gap.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Assignment"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ElevatedButton(onPressed: (){}, child: const Text("Arithmetic")),
            gap8y,
            ElevatedButton(onPressed: (){}, child: const Text("Simple Interest")),
            gap8y,
            ElevatedButton(onPressed: (){}, child: const Text("Area Of Circle")),
          ],
        ),
      ),
    );
  }
}