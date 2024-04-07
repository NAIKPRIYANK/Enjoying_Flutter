import 'package:flutter/material.dart';

class Df04 extends StatefulWidget {
  const Df04({super.key});

  @override
  State<Df04> createState() => _Df04State();
}

class _Df04State extends State<Df04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dailflash"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextField(
            decoration: InputDecoration(
                fillColor: Colors.purple,
                filled: true,
                hintText: "Enter you DOB",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Submit"))
        ],
      ),
    );
  }
}
