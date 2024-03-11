import 'package:flutter/material.dart';

class Df04 extends StatefulWidget {
  const Df04({super.key});

  @override
  State<Df04> createState() => _Df04State();
}

class _Df04State extends State<Df04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(50, 110, 200, 1),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        title: const Text("AppBar"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.blue,
            border: Border.all(width: 4,
              color:const Color.fromRGBO(255, 10, 10, 1))),
          
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
