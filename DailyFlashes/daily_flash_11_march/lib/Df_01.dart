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
      title:const Text("Daily Flash"),
      backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            height: 60,
            width: 60,
            color: Colors.red,
          ),
           Container(
            margin: const EdgeInsets.all(5),
            height: 60,
            width: 60,
            color: Colors.red,
          ), Container(
            margin: const EdgeInsets.all(5),
            height: 60,
            width: 60,
            color: Colors.red,
          ), Container(
            margin: const EdgeInsets.all(5),
            height: 60,
            width: 60,
            color: Colors.red,
          ),
           Container(
            margin: const EdgeInsets.all(5),
            height: 60,
            width: 60,
            color: Colors.red,
          )


        ],)
    );
  }
}