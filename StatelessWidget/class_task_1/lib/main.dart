import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.red,
      //         ),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.amber,
      //         ),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.blue,
      //         )
      //       ],
      //     ),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.red,
      //         ),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.amber,
      //         ),
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.blue,
      //         )
      //       ],
      //     )
      //   ],
      // )

      // body: SizedBox(
      //     child: Container(
      //   color: Colors.amber,
      //   child: const SizedBox(
      //     height: 100,
      //     width: 100,
      //   ),
      // )),

      body: const SizedBox(
        // height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello Core2web"),
          ],
        ),
      )
      // body: Container(
      //   // width: 300,
      //   // height: 300,
      //   color: Colors.amber,
      //   alignment: Alignment.center,
      //   child: const Text("Hello flutter"),
      // ),
    ));
  }
}
