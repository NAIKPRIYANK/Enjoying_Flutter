import 'package:flutter/material.dart';
import 'package:practice_assignment/coverAllwidget.dart';
import 'package:practice_assignment/multiColor.dart';
// import 'package:practice_assignment/multiColor.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: AllWidget());
  }
}
