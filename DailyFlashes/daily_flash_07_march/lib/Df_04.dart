import 'package:flutter/material.dart';

class Df04 extends StatelessWidget {
  const Df04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Daily Flash"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3)),
              height: 100,
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 2)),
                    height: 80,
                    width: 100,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 2)),
                    height: 80,
                    width: 100,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      color: Colors.purple,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
