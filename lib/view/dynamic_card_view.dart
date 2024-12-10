import 'package:first_assignment/common/my_card.dart';
import 'package:flutter/material.dart';

class DynamicCardView extends StatelessWidget {
  const DynamicCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card View"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            for(int i=1;i<20;i++)...{
              (i%2)==0?MyCard(text: "Card $i",color:Colors.amber,):MyCard(text: "Card $i",color:Colors.green,)
            }
          ],
        ),
      ),
    );
  }
}
