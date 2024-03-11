import 'package:flutter/material.dart';

class Assign10 extends StatelessWidget {
  const Assign10({super.key});

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
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                  border: Border.all(color: Colors.red, width: 20)),
            )
          ],
        ),
      ),
    );
  }
}
