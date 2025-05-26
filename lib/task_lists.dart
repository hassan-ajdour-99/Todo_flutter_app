import 'package:flutter/material.dart';
import 'package:todo_task_flutter_app/task_tail.dart';
import 'package:todo_task_flutter_app/model/task.dart';

class TaskList extends StatefulWidget {
  const TaskList(this.tasks, {super.key});

  final List<Task> tasks;

  @override
  State<TaskList> createState() => _TaskListsState();
}

class _TaskListsState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          toggelCheckboxState: (bool? currentCheckBoxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
