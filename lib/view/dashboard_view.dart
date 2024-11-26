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
            const SizedBox(height: 8,),
            ElevatedButton(onPressed: (){}, child: const Text("Simple Interest")),
            const SizedBox(height: 8,),
            ElevatedButton(onPressed: (){}, child: const Text("Area Of Circle")),
          ],
        ),
      ),
    );
  }
}