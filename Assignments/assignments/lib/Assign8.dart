import 'package:flutter/material.dart';

class Assign8 extends StatelessWidget {
  const Assign8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Margin & Padding"),
        backgroundColor: Color.fromARGB(255, 194, 61, 246),
        
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.horizontal(
                left: Radius.elliptical(30, 40),
                right: Radius.elliptical(30, 40))),
      ),
      body: Center(
          child: Container(
        color: Colors.black,
        child: Container(
          color: const Color.fromARGB(255, 90, 3, 211),
          margin: const EdgeInsets.all(20),
          child: Container(
            color: Colors.red,
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              color: Colors.blue,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.yellow,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                child: Image.network(
                    "https://png.pngtree.com/png-clipart/20200309/ourmid/pngtree-gold-number-1-png-image_2158836.jpg"),
              ),
            ),
          ),
        ),
      )),
    );
  }
}
