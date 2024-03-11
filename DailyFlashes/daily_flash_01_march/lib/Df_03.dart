import 'package:flutter/material.dart';

class Df03 extends StatefulWidget {
  const Df03({super.key});

  @override
  State<Df03> createState() => _Df03State();
}

class _Df03State extends State<Df03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(50, 177, 150, 1),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        title: const Text("AppBar"),
      ),
    );
  }
}
