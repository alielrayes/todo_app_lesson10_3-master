// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_app_lesson10_1/widgets/todo-card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoApp(),
    );
  }
}

class TodoApp extends StatefulWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class Task {
  String title;
  bool status;
  Task({
    required this.title,
    required this.status,
  });
}

List allTasks = [
  Task(title: "Publish video", status: false),
  Task(title: "Laugh louder", status: true),
  Task(title: "GEM", status: false),
  Task(title: "call mom", status: true),
];

class _TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 0.7),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1),
        title: Text(
          "TO DO APP",
          style: TextStyle(
              fontSize: 33, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Todecard(), 
            ...allTasks.map((item) => Todecard(
              vartitle: item.title,
              doneORnot: item.status,
            ))

           
              
  
          ],
        ),
      ),
    );
  }
}
