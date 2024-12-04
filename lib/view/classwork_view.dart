import 'package:flutter/material.dart';

class ClassworkView extends StatelessWidget {
  const ClassworkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rows and Column"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,

      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: double.infinity,
                    color: Colors.blue,
                    child: const Text("Container 1",style:TextStyle(color: Colors.white)),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: double.infinity,
                    color: Colors.red,
                    child: const Text("Container 2",style:TextStyle(color: Colors.white)),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: double.infinity,
                    color: Colors.blue,
                    child: const Text("Container 3",style:TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              color: Colors.blue[900],
              child: const Text("Container 1",style:TextStyle(color: Colors.white)),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              color: Colors.blue,
              child: const Text("Container 2",style:TextStyle(color: Colors.white)),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              color: Colors.blue[900],
              child: const Text("Container 3",style:TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
