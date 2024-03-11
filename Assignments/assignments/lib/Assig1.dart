import 'package:flutter/material.dart';

class Assig1 extends StatelessWidget {
  const Assig1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FLutter"),
        backgroundColor: Colors.blueAccent,
        actions: const [
          Icon(
            Icons.favorite_rounded,
            color: Colors.red,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.notification_add,
            color: Colors.black,
          ),
          SizedBox(width: 10),
        ],
      ),

    );
  }
}
