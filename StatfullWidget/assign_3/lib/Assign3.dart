import 'package:flutter/material.dart';

class Assign3 extends StatefulWidget {
  const Assign3({super.key});

  @override
  State<Assign3> createState() => _Assign3State();
}

class _Assign3State extends State<Assign3> {
  int? selectImg = 0;
  final List<String> imgList = [
    "https://imgs.search.brave.com/K1sNzaxWVfPIr9MO2Ppcq3QypZXdskWMpHaosWJoasM/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzA3LzM1/L2MwLzA3MzVjMDIw/NWQxYjllOWU2YzE1/ZWE4Yzg4MWEwNjcz/LmpwZw",
    "https://imgs.search.brave.com/Gjj0C4Pq_3MfK87o_M48-sFnmxn4PSX65WyaIfGQv8E/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/dGVhaHViLmlvL3Bo/b3Rvcy9mdWxsLzIz/Ny0yMzc2NTg3X2Z1/bGwtaGQtbXMtZGhv/bmkuanBn",
    "https://imgs.search.brave.com/kdUQ4X2-DU-kjSqHSesYSAvhcirxCEbkXQWBkMTwrJs/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG4u/d2FsbHBhcGVyc2Fm/YXJpLmNvbS8zMC84/NC8xaDVZSzAuanBn",
    "https://imgs.search.brave.com/PIldwhvDUGjKJLdKrHuFQnDHI2GYMrFLtLcJ_sOixxM/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXZlLmNv/bS93cC93cDQ1MDQ3/MDMuanBn"
  ];
  void showImg() {
    setState(() {
      selectImg = selectImg! + 1;
      if (selectImg! > imgList.length - 1) {
        selectImg = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Image"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            imgList[selectImg!],
            width: 500,
            height: 500,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: showImg, child: const Text("Next")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  selectImg = 0;
                });
              },
              child: const Text("Reset"))
        ],
      )),
    );
  }
}
