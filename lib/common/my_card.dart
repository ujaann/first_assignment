import 'package:first_assignment/common/mysnackbar.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.text,
    this.color
  });

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () => showSnackBar(text: "$text liked",context),
      child: SizedBox(
        width: double.infinity,
        height: 200,
        child: Card(
          color: color??Colors.blue[300],
          elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Text(
            text,
            style:const TextStyle(fontSize: 30),
          )),
        ),
      ),
    );
  }
}
