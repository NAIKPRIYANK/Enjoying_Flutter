import 'package:flutter/material.dart';

class Df03 extends StatelessWidget {
  const Df03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Daily Flash"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 5),
                        spreadRadius: 5,
                        blurRadius: 5)
                  ],
                  color: Colors.amber,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(10)),
                  border:
                      Border(bottom: BorderSide(color: Colors.red, width: 5))),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 5),
                        spreadRadius: 5,
                        blurRadius: 5)
                  ],
                  color: Colors.amber,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(10)),
                  border:
                      Border(bottom: BorderSide(color: Colors.red, width: 5))),
            )
          ],
        ),
      ),
    );
  }
}
