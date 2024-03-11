import 'package:flutter/material.dart';

class Df03 extends StatelessWidget {
  const Df03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                "https://media.licdn.com/dms/image/D5603AQGCKTG5U5Pw8w/profile-displayphoto-shrink_800_800/0/1646113929680?e=1715212800&v=beta&t=dw6-QqA0VwfNW7k6B_08tttbKgvr0sUbJSUeCjFoFs4"),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 227, 171, 241),
                  border:
                      Border.all(color: const Color.fromARGB(255, 79, 3, 92)),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: const Text("Priyank"),
            )
          ],
        ),
      ),
    );
  }
}
