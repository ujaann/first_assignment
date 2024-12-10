import 'package:first_assignment/common/my_card.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card View"),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            MyCard(text: "Card 1"),
            MyCard(text: "Card 2",color: Colors.cyan,),
            MyCard(text: "Card 3",color: Colors.deepOrange,),
            MyCard(text: "Card 4",color: Colors.yellowAccent,),
            MyCard(text: "Card 5",color: Colors.green,),
          ],
        ),
      ),
    );
  }
}