import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Stack"),
        ),
        body: Container(
          height: 400,
          width: 400,
          child: Stack(
            children: [
              Container(
                height: 300,
                width: 300,
                color: Colors.amber[900],
              ),
              Positioned(
                left: 20,
                top: 20,
                child: Container(
                  height: 300,
                  width: 300,
                  color: const Color.fromARGB(255, 239, 232, 227),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
