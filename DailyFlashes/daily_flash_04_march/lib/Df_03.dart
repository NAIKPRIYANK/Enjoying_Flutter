import 'package:flutter/material.dart';

class Df03 extends StatefulWidget {
  const Df03({super.key});

  @override
  State<Df03> createState() => _Df03State();
}

class _Df03State extends State<Df03> {
  bool borderColor = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              borderColor = !borderColor;
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.amber[300],
                border: Border.all(
                    color: borderColor ? Colors.red : Colors.green, width: 5)),
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
