import 'package:daily_flash_12_march/Df_01.dart';
import 'package:daily_flash_12_march/Df_02.dart';
import 'package:daily_flash_12_march/Df_03.dart';
import 'package:daily_flash_12_march/Df_04.dart';
import 'package:daily_flash_12_march/Df_05.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Df05()
    );
  }
}
