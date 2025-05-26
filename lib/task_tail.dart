import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    required this.taskTitle,
    required this.isChecked,
    required this.toggelCheckboxState,
    super.key,
  });

  final String taskTitle;
  final bool isChecked;
  final void Function(bool?) toggelCheckboxState;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggelCheckboxState,
      ),
    );
  }
}
