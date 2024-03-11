import 'package:flutter/material.dart';

class FormatWisePlayer extends StatefulWidget {
  const FormatWisePlayer({super.key});

  @override
  State<FormatWisePlayer> createState() => _FormatWisePlayerState();
}

class _FormatWisePlayerState extends State<FormatWisePlayer> {
  List<Map<String, dynamic>> playerList = [
    {
      'type': "Text Player",
      'player': [
        "https://imgs.search.brave.com/D13rR5mkUHF6EqbIkSfiAJcCPVFVKytp4o9aDpaD1kw/rs:fit:860:0:0/g:ce/aHR0cDovL3N0YXJz/dW5mb2xkZWQuY29t/L3dwLWNvbnRlbnQv/dXBsb2Fkcy8yMDE1/LzAxL1JhdmljaGFu/ZHJhbi1Bc2h3aW4t/Ny0xLmpwZw",
        "https://imgs.search.brave.com/5QKh_yycXLhlzOLlhjKEi5AScyaTYRQgzN3Xoab2NtE/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9vbmVj/cmlja2V0bmV3cy5h/a2FtYWl6ZWQubmV0/L3BhcnRoLWVkaXRv/ci9vYy1kYXNoYm9h/cmQvbmV3cy1pbWFn/ZXMtcHJvZC8xNzA1/MjA4NTI3NDQyX2tz/LmpwZz9pbT1SZXNp/emUsaGVpZ2h0PTM3/Mw",
        "https://imgs.search.brave.com/WtQTDhu6PRigtrF1BKpDPS1eTQAfd4gdbFYdv3ZbxSo/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jcmlj/dG9kYXkuY29tL3dw/LWNvbnRlbnQvdXBs/b2Fkcy8yMDIzLzAx/L0FqaW5reWEtUmFo/YW5lLUNyaWN0b2Rh/eS0xLmpwZw"
      ]
    },
    {
      'type': "ODI player",
      'player': [
        "https://imgs.search.brave.com/Oms128cKLYSqP3EUzbflILnNdvWJfgm884wr0vwsoHw/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9zdC5h/ZGRhMjQ3LmNvbS9o/dHRwczovL2ltLnJl/ZGlmZi5jb20vY3Jp/Y2tldC8yMDIzL2ph/bi8xN2tvaGxpMS5q/cGc",
        "https://imgs.search.brave.com/pz0xKbVRgKPU7y7J6S6K2UmdCe8d9XFQPfBXVmMTbk4/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbS5y/ZWRpZmYuY29tL2Ny/aWNrZXQvMjAxOC9v/Y3QvMjFyb2hpdC1j/ZWxlYnJhdGUuanBn/P3c9NjcwJmg9OTAw",
        "https://imgs.search.brave.com/NnzX5kfemdeftyciTTku3THbfnBext83o2Mu33nDsxo/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jLm5k/dHZpbWcuY29tLzIw/MjMtMDkvZmQyZWpz/am9fc2hyZXlhcy1p/eWVyLWFmcF82MjV4/MzAwXzI3X1NlcHRl/bWJlcl8yMy5qcGc_/aW09RmFjZUNyb3As/YWxnb3JpdGhtPWRu/bix3aWR0aD04MDYs/aGVpZ2h0PTYwNQ"
      ]
    },
    {
      "type": "T20 player",
      'player': [
        "https://imgs.search.brave.com/2zg5XJsIixvvCKZfcWXHUpxhRchiVrby_p1FKqrGudM/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9qb3Vy/bmFsYmhhcmF0LmNv/bS93cC1jb250ZW50/L3VwbG9hZHMvMjAy/My8xMS9yaW5rdS1z/aW5naC0yLmpwZw",
        "https://imgs.search.brave.com/A0zvYEkou6KW_lN0QPBWN7Gc-s0sPySJZEkUfiVFqxE/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jcmlj/Zml0LmNvbS93cC1j/b250ZW50L3VwbG9h/ZHMvMjAyMC8wMy80/Njg4OTQtc2hpdmFt/LWR1YmV5LWFuaS0w/NzExMTktMDU0LWUx/NjE2NDE1NDg0MTM0/LmpwZw",
        "https://imgs.search.brave.com/3E8PziQ5yF1ZyHDEWczPWKyACYKbSkppi1Na6R7aH1M/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jaXJj/bGVvZmNyaWNrZXQu/Y29tL3Bvc3RfaW1h/Z2UvcG9zdF9pbWFn/ZV80YTc2NzZiLmpw/Zw"
      ]
    }
  ];
  // Widget listofplayer(int index) {
  //   if (index == 0) {
  //     return Container(
  //       margin: const EdgeInsets.all(10),
  //       height: 200,
  //       width: 200,
  //       child: Image.network(playerList[index]['TPlayer']),
  //     );
  //   } else if (index == 1) {
  //     return Container(
  //       margin: const EdgeInsets.all(10),
  //       height: 200,
  //       width: 200,
  //       child: Image.network(playerList[index]['ODIPlayer']),
  //     );
  //   } else {
  //     return Container(
  //       margin: const EdgeInsets.all(10),
  //       height: 200,
  //       width: 200,
  //       child: Image.network(playerList[index]['T20Player']),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("PlayerList"),
        ),
        body: ListView.separated(
            separatorBuilder: (BuildContext context, int index) {
              return const Text(
                  "--------------------------------------------------------------");
            },
            itemCount: playerList.length,
            itemBuilder: ((BuildContext context, int index) {
              // for (var option in playerList[index]['T20Player']) {
              return Column(
                children: [
                  Text(playerList[index]['type']),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: playerList[index]["player"].length,
                    itemBuilder: ((context, val) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        height: 200,
                        width: 200,
                        child: Image.network(playerList[index]["player"][val]),
                      );
                    }),
                  )
                ],
              );
            })));
  }
}
