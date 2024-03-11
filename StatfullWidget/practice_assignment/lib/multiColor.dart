import "package:flutter/material.dart";

class Multicolor extends StatefulWidget {
  const Multicolor({super.key});
  @override
  State<Multicolor> createState() => _MulticolorState();
}

class _MulticolorState extends State<Multicolor> {
  int colorBox1 = 0;
  int colorBox2 = 0;

  Color setColor1() {
    if (colorBox1 == 0) {
      return Colors.red;
    } else if (colorBox1 == 1) {
      return Colors.green;
    } else if (colorBox1 == 2) {
      return Colors.blue;
    } else if (colorBox1 == 3) {
      return Colors.grey;
    } else {
      colorBox1 = 0;
      return Colors.red;
    }
  }

  Color setColor2() {
    if (colorBox2 == 0) {
      return Colors.red;
    } else if (colorBox2 == 1) {
      return Colors.green;
    } else if (colorBox2 == 2) {
      return Colors.blue;
    } else if (colorBox2 == 2) {
      return Colors.grey;
    } else {
      colorBox2 = 0;
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ColorBoxes"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                height: 100,
                width: 100,
                color: setColor1(),
              ),
              TextButton(
                  onPressed: () {
                    setState(() => colorBox1++);
                  },
                  child: const Text("button1"))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                height: 100,
                width: 100,
                color: setColor2(),
              ),
              TextButton(
                  onPressed: () {
                    setState(() => colorBox2++);
                  },
                  child: const Text("button1"))
            ],
          )
        ],
      ),
    );
  }
}
