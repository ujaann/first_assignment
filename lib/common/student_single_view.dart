import 'package:first_assignment/model/student.dart';
import 'package:flutter/material.dart';

class StudentSingleView extends StatelessWidget {
  const StudentSingleView({super.key, required this.student});
  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Fname:\t${student.fname}",
              style: const TextStyle(fontSize: 28),
            ),
            Text(
              "Lname:\t${student.lname}",
              style: const TextStyle(fontSize: 28),
            ),
            Text(
              "City:\t${student.city}",
              style: const TextStyle(fontSize: 28),
            ),
          ],
        ),
      ),
    );
  }
}
