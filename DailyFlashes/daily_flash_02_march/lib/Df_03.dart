import 'package:flutter/material.dart';

class Df03 extends StatelessWidget {
  const Df03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(22),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.purple.shade100,
              borderRadius:
                  const BorderRadius.only(topRight: Radius.circular(20)),
              border: Border.all(color: Colors.purple.shade900)),
        ),
      ),
    );
  }
}
