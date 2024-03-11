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
      body: Center(
        child: Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(0, 10),
                    blurRadius: 10,
                    spreadRadius: 10)
              ],
              color: Color.fromRGBO(0, 150, 160, 1),
              // shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 2.0)),
          child: Image.network(
              "data:image/png;base64,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"),
        ),
      ),
    ));
  }
}
