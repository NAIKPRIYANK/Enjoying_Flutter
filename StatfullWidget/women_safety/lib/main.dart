import 'package:flutter/material.dart';
import 'package:women_safety/screens/Dashboard.dart';
// import 'package:flutter_blue_plus/flutter_blue_plus.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
