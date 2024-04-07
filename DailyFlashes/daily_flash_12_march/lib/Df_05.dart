import 'package:flutter/material.dart';

class Df05 extends StatelessWidget {
  const Df05({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Flash"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [BoxShadow(color: Colors.red, offset: Offset(10, 10))],
            // borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple, Colors.green],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              // stops: [0.2, 0.5]
            ),
          ),
        ),
      ),
    );
  }
}
