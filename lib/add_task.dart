import 'package:flutter/material.dart';
import 'package:todo_task_flutter_app/model/task_data.dart';
import "package:provider/provider.dart";

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = "";

    // Use listen: as false here
    final taskData = Provider.of<TaskData>(context, listen: false);

    return Container(
      color: const Color.fromARGB(0, 146, 120, 120),
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Add task", textAlign: TextAlign.center),
            TextField(
              style: TextStyle(backgroundColor: Colors.lightBlueAccent),
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (textValue) => {newTaskTitle = textValue},
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed:
                  () => {
                    taskData.addNewTask(newTaskTitle),
                    Navigator.pop(context),
                  },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                foregroundColor: Colors.white,
                backgroundColor: Colors.lightBlueAccent,
              ),
              child: Text("add Task", style: TextStyle(fontSize: 22)),
            ),
          ],
        ),
      ),
    );
  }
}
