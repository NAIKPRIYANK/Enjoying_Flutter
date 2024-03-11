import 'package:daily_flash_08_march/Df_01.dart';
import 'package:daily_flash_08_march/Df_02.dart';
import 'package:daily_flash_08_march/Df_03.dart';
import 'package:daily_flash_08_march/Df_04.dart';
import 'package:daily_flash_08_march/Df_05.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Df05(),
    );
  }
}
