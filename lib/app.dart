
import 'package:first_assignment/view/card_view.dart';
import 'package:first_assignment/view/classwork_view.dart';
import 'package:first_assignment/view/dynamic_card_view.dart';
import 'package:first_assignment/view/grid_view_view.dart';
import 'package:first_assignment/view/list_view_view.dart';
import 'package:first_assignment/view/snack_bar_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "First Assigment",
        home: GridViewView(),
    );
  }
}