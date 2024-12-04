import 'package:first_assignment/common/mysnackbar.dart';
import 'package:flutter/material.dart';

class SnackBarView extends StatefulWidget {
  const SnackBarView({super.key});

  @override
  State<SnackBarView> createState() => _SnackBarViewState();
}

class _SnackBarViewState extends State<SnackBarView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBarView"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {
            showSnackBar(context,text: "Show message 1");
          }, child: const Text("Show message 1")),
          ElevatedButton(onPressed: () {
            showSnackBar(context,text: "Show message 2", color:Colors.blue);
          }, child: const Text("Show message 2")),
        ],
      ),
    );
  }
}
