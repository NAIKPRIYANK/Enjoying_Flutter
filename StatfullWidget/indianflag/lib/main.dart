import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  Widget conatainer1() {
    return Container(height: 500, width: 20, color: Colors.black);
  }

  Widget conatainer2() {
    return Container(height: 30, width: 200, color: Colors.orange);
  }

  Widget conatainer3() {
    return Container(
      height: 30,
      width: 200,
      color: Colors.white,
      child: counter >= 4 ? conatainer4() : Container(),
    );
  }

  Widget conatainer4() {
    return Image.network(
        "https://imgs.search.brave.com/wNMvQF7b8zOSmRf5iWsigPUMdseRRaL8X_GjAE9rqIk/rs:fit:500:0:0/g:ce/aHR0cDovL3d3dy5i/aW9kaXZlcnNpdHlv/ZmluZGlhLm9yZy9p/bWFnZXMvOC84OC9B/c2hva2FfQ2hha3Jh/LnBuZw");
  }

  Widget conatainer5() {
    return Container(height: 30, width: 200, color: Colors.green);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Indian Flag"),
      ),
      body: Column(
        children: [
          Container(
            // color: Colors.blueGrey,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [counter >= 1 ? conatainer1() : Container()],
                  ),
                  Column(
                    children: [
                      counter >= 2 ? conatainer2() : Container(),
                      counter >= 3 ? conatainer3() : Container(),
                      counter >= 5 ? conatainer5() : Container(),
                    ],
                  )
                ]),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        child: const Text("Add"),
      ),
    );
  }
}
