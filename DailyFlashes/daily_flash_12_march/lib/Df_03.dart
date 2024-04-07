import 'package:flutter/material.dart';

class Df03 extends StatelessWidget {
  const Df03({super.key});

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
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                  colors: [Colors.green, Colors.orange],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.5, 0.5])),
        ),
      ),
    );
  }
}
