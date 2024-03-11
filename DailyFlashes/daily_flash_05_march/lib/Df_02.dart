import 'package:flutter/material.dart';

class Df02 extends StatelessWidget {
  const Df02({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize:const  Size(200, 200),
            shape:const  CircleBorder(side: BorderSide(color: Colors.red,width: 2))
          ),
          onPressed: (){}, child: const Text("DailyFlash")),
      ),
    );
  }
}