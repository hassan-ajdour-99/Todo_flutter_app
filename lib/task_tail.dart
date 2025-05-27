import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    required this.taskTitle,
    required this.isChecked,
    required this.toggelCheckboxState,
    required this.longPressCallback,
    super.key,
  });

  final String taskTitle;
  final bool isChecked;
  final void Function(bool?) toggelCheckboxState;
  final void Function() longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
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
