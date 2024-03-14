import 'package:flutter/material.dart';

class Df01 extends StatelessWidget {
  const Df01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.shade200,
              )),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 200,
                  width: 150,
                  color: Colors.amber.shade200,
                ),
                Container(
                  height: 200,
                  width: 150,
                  color: Colors.red.shade200,
                )
              ],
            ),
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.green,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 200,
                  width: 150,
                  color: Colors.purple.shade300,
                ),
                Container(
                  height: 200,
                  width: 150,
                  color: Colors.blue.shade200,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
