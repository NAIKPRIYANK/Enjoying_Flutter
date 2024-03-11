import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Assign1 extends StatefulWidget {
  const Assign1({super.key});

  @override
  State<Assign1> createState() => _Assign1State();
}

class _Assign1State extends State<Assign1> {
  int? _count = 0;
  void _printTableValue() {
    setState(() {
      _count = _count! + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Instagram",
          style: TextStyle(fontFamily: 'Billabong'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Click button to print Table Values"),
            const SizedBox(
              height: 20,
            ),
            Text("$_count"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: _printTableValue, child: const Text("Print"))
          ],
        ),
      ),
    );
  }
}
