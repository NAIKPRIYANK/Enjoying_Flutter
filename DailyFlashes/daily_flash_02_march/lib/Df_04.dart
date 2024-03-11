import 'package:flutter/material.dart';

class Df04 extends StatelessWidget {
  const Df04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(22),
          height: 100,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.pink.shade100,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              border: Border.all(color: Colors.pink.shade900)),
          child: const Text("Priyank"),
        ),
      ),
    );
  }
}
