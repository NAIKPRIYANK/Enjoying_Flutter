import 'package:flutter/material.dart';

class Df01 extends StatelessWidget {
  const Df01({super.key});

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
                colors: [Colors.red, Colors.blue],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                // stops: [0.2,0.5]
              )),
        ),
      ),
    );
  }
}
