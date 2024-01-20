import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:taskify/models/task_data.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemCount: taskData.taskCount,
        itemBuilder: (context, index) {
          return TaskTile(
            isChecked: taskData.tasks[index].isDone,
            taskTitle: taskData.tasks[index].name,
            checkboxCallback: (checkboxState) {
              taskData.updateTask(taskData.tasks[index]);
            },
            longPressCallback: () {
              taskData.deleteTask(taskData.tasks[index]);
            },
          );
        },
      ),
    );
  }
}
