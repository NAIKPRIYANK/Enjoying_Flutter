import 'package:flutter/material.dart';

class Df05 extends StatefulWidget {
  const Df05({super.key});

  @override
  State<Df05> createState() => _Df05State();
}

class _Df05State extends State<Df05> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
  flag =!flag;
});
          },
          child: Container(
            padding: const EdgeInsets.all(22),
            height: 100,
            width: 300,
            decoration: BoxDecoration(
                color: flag ? Colors.pink.shade100 : Colors.blue,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                border: Border.all(color: Colors.pink.shade900)),
            child:  Center(child:flag?const Text("Click me"):const Text("Container Tapped")),
          ),
        ),
      ),
    );
  }
}
