import 'package:flutter/material.dart';

class Df05 extends StatefulWidget {
  const Df05({super.key});

  @override
  State<Df05> createState() => _Df05State();
}

class _Df05State extends State<Df05> {
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
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Title-1",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Priyank, how are you"),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        shape: BoxShape.circle,
                        color: Colors.purple.shade200),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
