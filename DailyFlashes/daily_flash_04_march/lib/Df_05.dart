import 'package:flutter/material.dart';

class Df05 extends StatelessWidget {
  const Df05({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.5, 0.5],
                  colors: [Colors.red, Colors.blue])),
        ),
      ),
    );
  }
}
