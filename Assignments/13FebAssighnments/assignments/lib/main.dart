import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
          // body: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,

          //     // Assign1

          //     // child: Container(
          //     //   height: 200,
          //     //   width: 200,
          //     //   color: Colors.red,
          //     // ),

          //     // Assign2

          //     children: [
          //       Container(
          //         color: Colors.blue,
          //         height: 200,
          //         width: 200,
          //         padding:
          //             const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          //         child: Container(
          //           height: 200,
          //           width: 200,
          //           color: Colors.red,
          //         ),
          //       ),
          //     ]),

          // Assign3

          // body: Container(
          //   padding:
          //       const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          //   width: 100,
          //   height: 100,
          //   color: Colors.blue,
          //   child: Container(
          //     height: 100,
          //     width: 100,
          //     color: Colors.yellow,
          //   ),
          // ),

          body:

              // Assign 4

              // Container(
              //   margin:
              //       const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
              //   color: Colors.red,
              // ),
              // Assign 5

              //         Container(
              //   height: 300,
              //   width: 300,
              //   decoration:
              //       BoxDecoration(

              //         border: Border.all(color: Colors.yellow, width: 5)),
              // )),

              //         Container(
              //   height: 200,
              //   width: 200,
              //   decoration: BoxDecoration(
              //       color: Colors.yellow,
              //       borderRadius: const BorderRadius.all(Radius.circular(20)),
              //       border: Border.all(color: Colors.blue, width: 5),
              //       boxShadow: const [
              //         BoxShadow(
              //             color: Colors.purple, offset: Offset(30, 30), blurRadius: 8),
              //         BoxShadow(
              //             color: Colors.red, offset: Offset(20, 20), blurRadius: 8),
              //         BoxShadow(
              //             color: Colors.green, offset: Offset(10, 10), blurRadius: 8)
              //       ]),
              // )

              Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.blue, width: 5),
            gradient: const LinearGradient(
                stops: [0.3, 0.5], colors: [Colors.orange, Colors.blue])),
      )),
    );
  }
}
