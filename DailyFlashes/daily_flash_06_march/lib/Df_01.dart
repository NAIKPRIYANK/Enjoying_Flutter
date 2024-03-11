import 'package:flutter/material.dart';

class Df01 extends StatelessWidget {
  const Df01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile Information"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 250,
            width: 250,
            child: Image.network(
                "https://media.licdn.com/dms/image/D5603AQGCKTG5U5Pw8w/profile-displayphoto-shrink_800_800/0/1646113929680?e=1715212800&v=beta&t=dw6-QqA0VwfNW7k6B_08tttbKgvr0sUbJSUeCjFoFs4"),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Username: ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Text("NAIKPRIYANK",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "PhoneNumber: ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Text("9172847440",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))
            ],
          )
        ],
      ),
    );
  }
}
