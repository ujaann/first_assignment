import 'package:flutter/material.dart';

class FlexibleExpandedView extends StatelessWidget {
  const FlexibleExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible Expanded View"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              // width: double.infinity,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(

              // width: double.infinity,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
