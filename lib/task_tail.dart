import 'package:flutter/material.dart';
import 'package:todo_task_flutter_app/checkbox_state.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({super.key});

  @override
  State<TaskTile> createState() => _TaskTailState();
}

// taskTailState
class _TaskTailState extends State<TaskTile> {
  bool isCheckedBox = false;

  void checkBoxCallBack(bool? currentCheckBoxState) {
    setState(() {
      isCheckedBox = currentCheckBoxState!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "this is a task 1",
        style: TextStyle(
          decoration: isCheckedBox ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
        isChecked: isCheckedBox,
        toggelCheckboxState: checkBoxCallBack,
      ),
    );
  }
}
