import 'package:flutter/material.dart';

class Df03 extends StatelessWidget {
  const Df03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue[200],
        onPressed: () {},
        label:const  Row(
          children: [
            Text("Priyank"),
            Icon(Icons.account_circle)
          ],
        ),
        
      ),
    );
  }
}
