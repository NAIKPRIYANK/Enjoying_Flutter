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
        title: const Text("Daily Flash"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.circle,
                        color: Colors.blue.shade200),
                  ),
                 const SizedBox(
                    width: 20,
                  ),
                  const Text("Priyank")
                ],
              ),
            );
          }),
    );
  }
}
