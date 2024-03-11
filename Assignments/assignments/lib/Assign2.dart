import 'package:flutter/material.dart';

class Assig2 extends StatelessWidget {
  const Assig2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FLutter"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 68, 211, 255),
        actions: const [
          Icon(
            Icons.comment_outlined,
            color: Color.fromARGB(255, 72, 69, 69),
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
