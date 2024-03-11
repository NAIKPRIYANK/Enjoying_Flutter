import 'package:flutter/material.dart';

class Df01 extends StatefulWidget {
  const Df01({super.key});

  @override
  State<Df01> createState() => _Df01State();
}

class _Df01State extends State<Df01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        centerTitle: true,
        title: const Text("Appbar"),
        leading: const Icon(Icons.more_vert),
        actions:const [
          Icon(Icons.notifications)
        ],
      ),
    );
  }
}
