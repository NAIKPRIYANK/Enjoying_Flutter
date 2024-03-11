import 'package:flutter/material.dart';

class Df04 extends StatelessWidget {
  const Df04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        
        backgroundColor: Colors.black,
        splashColor: Colors.green,
        focusColor: Colors.red,
        hoverColor: Colors.orange.withOpacity(0.5),
        child: const Icon(Icons.add),
      ),
    );
  }
}
