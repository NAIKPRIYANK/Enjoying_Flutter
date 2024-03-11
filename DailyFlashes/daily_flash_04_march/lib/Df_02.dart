import 'package:flutter/material.dart';

class Df02 extends StatelessWidget {
  const Df02({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
              "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg"),
          Center(
            child: Container(
              height: 300,
              width: 300,
              color: Colors.white,
              child: const Center(
                child: Text("Hey"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
