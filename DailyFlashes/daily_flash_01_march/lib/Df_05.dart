import 'package:flutter/material.dart';

class Df05 extends StatefulWidget {
  const Df05({super.key});

  @override
  State<Df05> createState() => _Df05State();
}

class _Df05State extends State<Df05> {
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
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    color: Colors.red,
                    offset: Offset(10, 30),
                    blurRadius: 9,
                    spreadRadius: 2)
              ]),
        ),
      ),
    );
  }
}
