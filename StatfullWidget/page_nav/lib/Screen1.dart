import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen1"),
        backgroundColor: Colors.orange,
      ),
      body: const Center(
        child: Text("Screen1"),
      ),
    );
  }
}
