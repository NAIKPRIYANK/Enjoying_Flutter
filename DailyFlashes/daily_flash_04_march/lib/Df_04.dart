import 'package:flutter/material.dart';

class Df04 extends StatelessWidget {
  const Df04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration:const  BoxDecoration(
            color: Colors.amber,
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                blurRadius: 5,
                spreadRadius: 4,
                offset: Offset(0, -10)
              )
            ]
          ),
          height: 200,width: 300,),
      ),
    );
  }
}