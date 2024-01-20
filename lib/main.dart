import 'package:flutter/material.dart';
import 'package:taskify/screens/task_screen.dart';
import 'package:provider/provider.dart';
import 'models/task_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: const MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
