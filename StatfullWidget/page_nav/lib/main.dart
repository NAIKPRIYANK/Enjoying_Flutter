import 'package:flutter/material.dart';
import 'package:page_nav/Screen1.dart';
import 'package:page_nav/Screen2.dart';
import 'package:page_nav/Screen3.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<Widget> myWidget = [Screen1(), Screen2(), Screen3()];
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: myWidget[myIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                myIndex = value;
              });
            },
            currentIndex: myIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.music_note), label: "Music"),
              BottomNavigationBarItem(icon: Icon(Icons.near_me), label: "Next"),
            ]),
      ),
    );
  }
}
