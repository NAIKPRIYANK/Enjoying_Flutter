import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Tiranga extends StatelessWidget {
  const Tiranga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Happy Republic Day",
          style: TextStyle(
              fontFamily: 'Billabong',
              fontWeight: FontWeight.w900,
              fontSize: 40.0),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color.fromARGB(255, 213, 81, 10),
              Color.fromARGB(255, 227, 106, 45),
              Color.fromARGB(255, 228, 151, 83),
              Color.fromARGB(300, 239, 221, 228),
              Color.fromARGB(150, 21, 69, 210),
              Color.fromARGB(300, 239, 221, 228),
              Color.fromARGB(255, 91, 241, 148),
              Color.fromARGB(255, 19, 111, 50),
              Color.fromARGB(255, 3, 96, 52),
            ], // Gradient from https://learnui.design/tools/gradient-generator.html
            tileMode: TileMode.mirror,
          ),
        ),
        padding: const EdgeInsets.only(top: 10),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 550,
                      width: 12,
                      color: const Color.fromARGB(255, 49, 60, 69),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 50,
                      width: 220,
                      color: Colors.orange,
                    ),
                    Container(
                      height: 50,
                      width: 220,
                      color: Colors.white,
                      child: Image.network(
                          "https://imgs.search.brave.com/nfADkXQkMIZ5PzVc9zazWbt9NTiZQqEe-GX0xqsLcGk/rs:fit:500:0:0/g:ce/aHR0cHM6Ly93d3cu/cG5nYXJ0cy5jb20v/ZmlsZXMvMTMvQXNo/b2thLUNoYWtyYS1Q/TkctSW1hZ2UtQmFj/a2dyb3VuZC5wbmc"),
                    ),
                    Container(
                      height: 50,
                      width: 220,
                      color: Colors.green,
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2.0),
                          color: Colors.grey[500]),
                      margin: const EdgeInsets.only(left: 10),
                      alignment: Alignment.center,
                      height: 40,
                      width: 60,
                      // color: Colors.grey[600],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2.0),
                          color: Colors.grey[500]),
                      margin: const EdgeInsets.only(left: 10),
                      height: 40,
                      width: 120,
                      // color: Colors.grey[600],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2.0),
                          color: Colors.grey[500]),
                      margin: const EdgeInsets.only(left: 10),
                      height: 40,
                      width: 160,
                      // color: Colors.grey[600],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
