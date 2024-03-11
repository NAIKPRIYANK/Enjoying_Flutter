import 'package:flutter/material.dart';

class Assign6 extends StatelessWidget {
  const Assign6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 100,
              width: 100,
              color: Colors.grey,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 100,
              width: 100,
              color: Colors.purple,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 100,
              width: 100,
              color: Colors.pink,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 100,
              width: 100,
              color: Colors.deepOrange,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 100,
              width: 100,
              color: Colors.green,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 100,
              width: 100,
              color: Colors.redAccent,
            ),
          ],
        ),
      )),
    );
  }
}
