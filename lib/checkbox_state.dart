import 'package:flutter/material.dart';

class TaskCheckBox extends StatelessWidget {
  const TaskCheckBox({
    required this.isChecked,
    required this.toggelCheckboxState,
    super.key,
  });

  final bool isChecked;

  final void Function(bool?) toggelCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: toggelCheckboxState,
    );
  }
}
