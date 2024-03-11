import 'package:flutter/material.dart';

class Assign4 extends StatefulWidget {
  const Assign4({super.key});

  @override
  State<Assign4> createState() => _Assign4State();
}

class _Assign4State extends State<Assign4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Instagram",
          style: TextStyle(
              fontStyle: FontStyle.italic, color: Colors.black, fontSize: 30),
        ),
        actions: [
          const Icon(
            Icons.favorite_rounded,
            color: Colors.blue,
          )
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  "https://imgs.search.brave.com/f17FMvLSntHqCLFT724EIx-dRKd8I5cBLFUWRhTl84o/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzhhLzMx/Lzc1LzhhMzE3NTc5/MTBiMGE1NGU4Yzhm/NWJhYTY1MDQ4NjIz/LmpwZw",
                  width: 500,
                  height: 500,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_outline_outlined)),
                    const SizedBox(
                      width: 50,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.send))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
