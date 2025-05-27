import 'package:flutter/material.dart';
import 'package:todo_task_flutter_app/model/task_data.dart';
import 'package:todo_task_flutter_app/task_screen.dart';
import "package:provider/provider.dart";

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(home: TaskScreen()),
    );
  }
}
