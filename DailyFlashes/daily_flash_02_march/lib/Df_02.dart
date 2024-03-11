import 'package:flutter/material.dart';

class Df02 extends StatelessWidget {
  const Df02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(22),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.blue.shade200,
              // borderRadius: BorderRadius.all(Radius.circular(20)),
              border:
                  const Border(left: BorderSide(color: Colors.blue, width: 5))),
          child: const Text(
            "Super-X",
          ),
        ),
      ),
    );
  }
}
