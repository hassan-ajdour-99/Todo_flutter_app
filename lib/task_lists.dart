import 'package:flutter/material.dart';
import 'package:todo_task_flutter_app/task_tail.dart';

class TaskLists extends StatelessWidget {
  const TaskLists({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [TaskTile(), TaskTile(), TaskTile(), TaskTile()]);
  }
}
