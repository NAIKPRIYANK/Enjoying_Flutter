import 'package:flutter/material.dart';

class Df01 extends StatelessWidget {
  const Df01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.red),
          ),
          child: const Center(
            child: Text(
              "Core2Web",
            ),
          ),
        ),
      ),
    );
  }
}
