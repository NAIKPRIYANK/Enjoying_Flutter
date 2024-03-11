import 'package:flutter/material.dart';

class Df02 extends StatefulWidget {
  const Df02({super.key});

  @override
  State<Df02> createState() => _Df02State();
}

class _Df02State extends State<Df02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(120, 120, 220, 1),
        centerTitle: true,
        leading: const Icon(Icons.more_vert),
        actions: const [
          Icon(Icons.notifications),
         SizedBox(
            width: 10,
          ), 
          

          Icon(Icons.account_box),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.logout),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
