import 'package:flutter/material.dart';
import 'file:///C:/Users/YUN/AndroidStudioProjects/flutter-test1/lib/todoey/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:testing_app/todoey/model/taskData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
