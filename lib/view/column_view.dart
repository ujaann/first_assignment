import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column"),
      ),
      body: Container(
        color: Colors.yellow,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(Icons.star,size: 50,),
            Icon(Icons.star,size: 50,),
            Spacer(),
            Icon(Icons.star,size: 50,),
          ],
        ),
      ),
    );
  }
}