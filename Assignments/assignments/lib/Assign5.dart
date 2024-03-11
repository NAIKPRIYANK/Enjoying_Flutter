import 'package:flutter/material.dart';

class Assign5 extends StatelessWidget {
  const Assign5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/img/qrr.jpg',
                  height: 100,
                  width: 100,
                ),
                Image.asset(
                  'assets/img/qrr.jpg',
                  height: 100,
                  width: 100,
                ),
                Image.asset(
                  'assets/img/qrr.jpg',
                  height: 100,
                  width: 100,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
