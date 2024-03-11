import 'package:flutter/material.dart';

class Df02 extends StatelessWidget {
  const Df02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Daily Flash"),
      ),
      body: Center(
        child: Container(
          height: 50,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: const Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.orange,
                size: 40,
              ),
              Text(
                "Rating:4.5",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
