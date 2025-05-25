import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("this is a task 1"),
      trailing: Checkbox(
        value: false,
        onChanged: (bool? newValue) {
          // Handle checkbox state change here
        },
      ),
    );
  }
}
