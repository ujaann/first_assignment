import 'package:flutter/material.dart';

class RowView extends StatelessWidget {
  const RowView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column"),
      ),
      body: Container(
        // width: double.infinity,
        color: Colors.amberAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(onPressed: (){}, child: const Text("button 1"),),
            ElevatedButton(onPressed: (){}, child: const Text("button 2"),),
            ElevatedButton(onPressed: (){}, child: const Text("button 3"),),
          ],
        ),
      ),
    );
  }
}