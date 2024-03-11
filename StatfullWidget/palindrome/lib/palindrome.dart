import "package:flutter/material.dart";

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});
  @override
  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  List<int> num = [121, 153, 131, 145, 898];
  int? _countpal = 0;
  int? pal = 0;
  bool val1 = true;
  void _findcount() {
    if (val1 == true) {
      setState(() {
        for (int i = 0; i < 5; i++) {
          int temp = num[i];

          int pal = 0;
          while (temp != 0) {
            int mod = temp % 10;
            pal = pal * 10 + mod;
            temp = temp ~/ 10;
          }
          if (pal == num[i]) {
            _countpal = _countpal! + 1;
          }
        }
        val1 = false;
      });
    }
  }

  bool val2 = true;
  int? _countarm = 0;
  void _findarmstrong() {
    if (val2 == true) {
      setState(() {
        for (int i = 0; i < 5; i++) {
          int temp = num[i];

          int arm = 0;
          while (temp != 0) {
            int mod = temp % 10;
            arm = (mod * mod * mod) + arm;
            temp = temp ~/ 10;
          }
          if (arm == num[i]) {
            _countarm = _countarm! + 1;
          }
        }
        val2 = false;
      });
    }
  }

  int factorial(int n) {
    int result = 1;
    for (int i = 2; i <= n; i++) {
      result *= i;
    }
    return result;
  }

  int? _countstrong = 0;
  bool val3 = true;
  void _isStrongNumber() {
    if (val3 == true) {
      setState(() {
        for (int i = 0; i < 5; i++) {
          int number = num[i];
          int originalNumber = number;
          int sum = 0;

          while (number > 0) {
            int digit = number % 10;
            sum += factorial(digit);
            number ~/= 10;
          }

          if (sum == originalNumber) {
            _countstrong = _countstrong! + 1;
          }
        }
      });
    }
    val3 = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text(
          "Logic",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Click Here to Find Palindrome Count",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "$_countpal",
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _findcount,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[100],
              ),
              child: const Text(
                "Print palindrome",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Click here to find ArmStrong count",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "$_countarm",
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _findarmstrong,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[100],
              ),
              child: const Text(
                "Print Armstrong",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Click here to find Strong count",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "$_countstrong",
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _isStrongNumber,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[100],
              ),
              child: const Text(
                "Print Strong",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
