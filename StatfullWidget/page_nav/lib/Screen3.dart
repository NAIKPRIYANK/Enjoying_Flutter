import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Screen3"),
        backgroundColor: Color.fromARGB(255, 7, 182, 103),
      ),
      body:const Center(
        child:  Text("Screen3"),
      ),
      );
    
  }
}