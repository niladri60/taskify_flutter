import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?)? checkboxCallback;
  final Function()? longPressCallback;
  const TaskTile(
      {super.key,
      required this.isChecked,
      required this.taskTitle,
      this.checkboxCallback,
      this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
      title: Row(
        children: [
          Text(
            taskTitle,
            style: TextStyle(
              fontSize: 20.0,
              decoration: isChecked ? TextDecoration.lineThrough : null,
            ),
          ),
          const Spacer(), // Adds space between Text and Checkbox
          Checkbox(
            activeColor: const Color(0xFF006064),
            value: isChecked,
            onChanged: checkboxCallback,
          ),
        ],
      ),
    );
  }
}
