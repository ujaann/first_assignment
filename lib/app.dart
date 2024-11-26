import 'package:first_assignment/view/dashboard_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "First Assigment",
        home: DashboardView(),
    );
  }
}