import 'package:flutter/material.dart';
import 'package:textfieldassignments/Textfield.dart';
import 'package:textfieldassignments/Textfield1.dart';
import 'package:textfieldassignments/Textfieldscrolling.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: textfeildscroll(),
        ),
      ),
    );
  }
}
