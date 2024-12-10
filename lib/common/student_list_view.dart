import 'package:first_assignment/common/student_single_view.dart';
import 'package:first_assignment/model/student.dart';
import 'package:flutter/material.dart';

class StudentListView extends StatelessWidget {
  const StudentListView({
    super.key,
    required this.studentList,
  });

  final List<Student> studentList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  StudentSingleView(student:studentList[index])
              ));
            },
            leading: const Icon(Icons.person),
            title: Text(studentList[index].fname),
            subtitle: Text(studentList[index].city),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.delete)),
          );
        },
        itemCount: studentList.length,
      ));
  }
}
