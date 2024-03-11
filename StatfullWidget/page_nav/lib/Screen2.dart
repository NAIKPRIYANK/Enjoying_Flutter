import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen2"),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text("Screen2"),
      ),
    );
  }
}
