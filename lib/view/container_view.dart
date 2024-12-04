import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        title: const Text("Container"),
      ),
      body: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.deepOrange[200],
            border: Border.all(),
          ),
          alignment: Alignment.center,
          // color: Colors.amber[50],
          child: const Text("I am a container"),
        ),
      ),
    );
  }
}
