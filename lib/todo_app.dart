import 'package:flutter/material.dart';
import 'package:todo_task_flutter_app/start_screen.dart';
import 'package:todo_task_flutter_app/tasks_screen.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StartScreen());
  }
}
