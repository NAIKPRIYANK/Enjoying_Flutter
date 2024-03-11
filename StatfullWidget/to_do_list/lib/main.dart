import 'package:flutter/material.dart';
import 'package:to_do_list/ToDoAppV1.dart';
import 'package:to_do_list/ToDoAppV2.dart';
import 'package:to_do_list/TodoPage.dart';
import 'package:to_do_list/practice.dart';
import 'package:to_do_list/practice2.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       // home: ToDoAppV1(),
//       home: TodoAppV2(),
//     );
//   }
// }



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: ToDoAppV1(),
      home: const TodoAppV2(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor:  Colors.purple,
              background: Colors.grey,
              primary:const Color.fromRGBO(111, 81, 255, 1))
      ),
    );
  }
}
