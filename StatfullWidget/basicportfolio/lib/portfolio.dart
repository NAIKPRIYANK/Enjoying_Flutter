import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int counter = 0;
  void increamentCounter() {
    setState(() {
      counter++;
    });
  }

  Widget displayinfo(String label, String subL, String imagepath) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(
              subL,
              style: const TextStyle(),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          imagepath,
          height: 150,
          width: 150,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Portfolio",
          style: TextStyle(fontFamily: 'Billabong', fontSize: 30),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        // height: 1500,
        // width: 1500,
        color: Colors.blue[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            counter >= 1
                ? displayinfo(
                    "Name: ", "Priyank Naik", 'assets/images/pofileimg.jpeg')
                : Container(),
            const SizedBox(
              height: 20,
            ),
            counter >= 2
                ? displayinfo(
                    "College: ",
                    "Zeal College of Engineering and Research",
                    'assets/images/College.png')
                : Container(),
            const SizedBox(
              height: 20,
            ),
            counter >= 3
                ? displayinfo(
                    "Dream Company: ", "Google", 'assets/images/google.png')
                : Container()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increamentCounter,
        child: counter >= 4 ? const Text("Done") : const Text("Next"),
      ),
    );
  }
}
