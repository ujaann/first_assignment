import 'package:flutter/material.dart';

class RichTextView extends StatelessWidget {
  const RichTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RichText(
            text: const TextSpan(
               
                text: "H",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                ),
                children: [
              TextSpan(
                text: "ello",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              TextSpan(
                  text: " bold",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                    fontSize: 30,
                  )),
              TextSpan(
                  text: " world",
                  style: TextStyle(
                    fontSize: 30,
                  )),
            ])),
      ),
    );
  }
}
