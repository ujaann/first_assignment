import 'package:flutter/material.dart';

class GridViewView extends StatelessWidget {
  const GridViewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        children: [
          for (int i = 1; i < 11; i++) ...{
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 40,
                  color: Colors.blueGrey,
                  child: Center(
                      child: Text(
                    "$i",
                    style: const TextStyle(color: Colors.white, fontSize: 24),
                  )),
                ))
          }
        ],
      ),
    );
  }
}
