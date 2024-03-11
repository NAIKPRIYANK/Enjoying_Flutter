import 'package:flutter/material.dart';

class Df05 extends StatelessWidget {
  const Df05({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        
        backgroundColor: Colors.black,
        // highlightElevation: 10,
        focusColor: Colors.blueAccent,
        hoverColor: Colors.orange.withOpacity(0.5),
        child: const Icon(Icons.add),
      ),
    );
  }
}