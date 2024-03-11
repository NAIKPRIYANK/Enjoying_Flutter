import 'package:flutter/material.dart';

class Df01 extends StatelessWidget {
  const Df01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Daily Flash"),
      ),
    body: Row(
      children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.amber,
        ),
        Container(
          height: 80,
          width: 80,
          color: Colors.red,
        ),
        Container(
          height: 70,
          width: 80,
          color: Colors.blue,
        )
      ],
    ),
    );
  }
}