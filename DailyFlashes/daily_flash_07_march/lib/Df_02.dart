import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Df02 extends StatelessWidget {
  const Df02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30))),
            height: 500,
            width: 400,
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(30)),
              child: Image.network(
                  fit: BoxFit.cover,
                  "https://www.mykhel.com/img/2018/06/suresh-raina-batting-1530289700.jpg"),
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(250, 70),
                  backgroundColor: Colors.purple),
              onPressed: () {},
              child: const Text(
                "Add to cart",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
