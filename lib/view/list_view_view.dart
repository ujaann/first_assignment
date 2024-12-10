import 'package:first_assignment/common/gap.dart';
import 'package:first_assignment/common/student_list_view.dart';
import 'package:first_assignment/model/student.dart';
import 'package:first_assignment/view/student_output_view.dart';
import 'package:flutter/material.dart';

class ListViewView extends StatefulWidget {
  const ListViewView({super.key});

  @override
  State<ListViewView> createState() => _ListViewViewState();
}

class _ListViewViewState extends State<ListViewView> {
  final items = [
    const DropdownMenuItem(value: 'Kathmandu', child: Text("Kathmandu")),
    const DropdownMenuItem(value: "Pokhara", child: Text("Pokhara")),
    const DropdownMenuItem(value: "Chitwan", child: Text("Chitwan")),
  ];

  List<Student> studentList = [];

  String? city;

  final _fnameController = TextEditingController();
  final _lnameController = TextEditingController();

@override
  void dispose() {
    _fnameController.dispose();
    _lnameController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _fnameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter first name",
              ),
            ),
            gap8y,
            TextField(
              controller: _lnameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter last name ",
              ),
            ),
            gap8y,
            DropdownButtonFormField(
              icon: const Icon(Icons.arrow_downward),
              items: items,
              onChanged: (value) {
                setState(() {
                  city = value;
                });
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            gap8y,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Student std = Student(
                        fname: _fnameController.text.trim(),
                        lname: _lnameController.text.trim(),
                        city: city ?? "");
                    setState(() {
                      studentList.add(std);
                    });
                  },
                  child: const Text("Add Students")),
            ),
            gap8y,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => StudentOutputView(studentList)));
                  }, child: const Text("View Students")),
            ),
            (studentList.isEmpty)
                ? const Text("No data..")
                : StudentListView(studentList: studentList),
          ],
        ),
      ),
    );
  }
}

