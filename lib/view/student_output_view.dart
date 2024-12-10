import 'package:first_assignment/model/student.dart';
import 'package:flutter/material.dart';

class StudentOutputView extends StatefulWidget {
   StudentOutputView(this.studentList,{super.key});
  List<Student> studentList;
  @override
  State<StudentOutputView> createState() => _StudentOutputViewState();
}

class _StudentOutputViewState extends State<StudentOutputView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}