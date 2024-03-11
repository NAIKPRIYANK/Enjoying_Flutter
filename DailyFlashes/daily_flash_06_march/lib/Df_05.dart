import 'package:flutter/material.dart';

class Df05 extends StatelessWidget {
  const Df05({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                "https://imgs.search.brave.com/bS21B_fPD7IgS4pD3-VwGbTpEIPRaE2mWcMw5EJaz54/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9jZG4u/cGl4YWJheS5jb20v/cGhvdG8vMjAxOS8w/MS8zMC8wNy80NS93/ZWItMzk2Mzk0NV82/NDAuanBn",
                height: 300,
                width: 300,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
