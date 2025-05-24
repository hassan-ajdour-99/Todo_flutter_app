import 'package:flutter/material.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TaskScreenState();
}

// ignore: non_constant_identifier_names
class _TaskScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Text("Task Screen");
  }
}
