import 'package:flutter/material.dart';

class Assign9 extends StatelessWidget {
  const Assign9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 20)),
            )
          ],
        ),
      ),
    );
  }
}
