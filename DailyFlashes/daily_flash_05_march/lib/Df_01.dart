import 'package:flutter/material.dart';

class Df01 extends StatelessWidget {
  const Df01({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shadowColor: Colors.red, elevation: 10),
            child: Text("Elevatedconst ")),
      ),
    );
  }
}
