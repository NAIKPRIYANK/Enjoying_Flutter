import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        foregroundColor: Colors.blue[200],
        centerTitle: true,
        backgroundColor: Colors.black,
        // elevation: 300,
        shadowColor: Colors.blue.shade900,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20), // Adjust the radius as needed
          ),
        ),
        title: const Text(
          "Quiz App",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.network(
                  "https://imgs.search.brave.com/p-41l-QUwSx9X7muiSfluEKVL3VhYfsQJjmU3f-2Mqw/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG4u/d2FsbHBhcGVyc2Fm/YXJpLmNvbS8xNS8x/My9IdTRqYnouanBn"),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      fixedSize: const Size.fromHeight(50)),
                  onPressed: () {},
                  child: Text(
                    "Start Quiz",
                    style: TextStyle(color: Colors.blue[200]),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
