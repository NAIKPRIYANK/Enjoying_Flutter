import 'package:flutter/material.dart';

class Listviewbuuilder extends StatefulWidget {
  const Listviewbuuilder({super.key});

  @override
  State<Listviewbuuilder> createState() => _ListviewbuuilderState();
}

class _ListviewbuuilderState extends State<Listviewbuuilder> {
  List<int> numList = [];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic"),
      ),
      body: ListView.builder(
          itemCount: numList.length,
          itemBuilder: (context, index) {
            return Container(
              
              margin: const EdgeInsets.all(10),
              height: 30,
              width: double.infinity,
              color: Colors.blueAccent,
              child: Text("${numList[index]}",textAlign: TextAlign.center,),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            numList.add(index);
            index++;
          });
        },
      ),
    );
  }
}
