import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Df05 extends StatefulWidget {
  const Df05({super.key});

  @override
  State<Df05> createState() => _Df05State();
}

class _Df05State extends State<Df05> {
  bool conColor = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  conColor = true;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: !conColor ? Colors.white : Colors.red,
                    border: Border.all(color: Colors.black)),
                height: 100,
                width: 200,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.black)),
              height: 100,
              width: 200,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.black)),
              height: 100,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
