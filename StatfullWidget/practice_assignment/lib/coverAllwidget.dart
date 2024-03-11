import 'package:flutter/material.dart';

class AllWidget extends StatefulWidget {
  const AllWidget({super.key});

  @override
  State<AllWidget> createState() => _AllWidgetState();
}

class _AllWidgetState extends State<AllWidget> {
  List<String> musicList = [
    "https://img.wynk.in/unsafe/248x248/filters:no_upscale():strip_exif():format(webp)/http://s3.ap-south-1.amazonaws.com/discovery-prod-arsenal/arsenal/artworks/65c1f48d3a6bc2638f891acc/COLLECTION_76311224803990.png",
    "https://img.wynk.in/unsafe/248x248/filters:no_upscale():strip_exif():format(webp)/http://s3.ap-south-1.amazonaws.com/discovery-prod-arsenal/arsenal/artworks/65b7c8151f394e79aef9161f/COLLECTION_9198505659394.png",
    "https://img.wynk.in/unsafe/248x248/filters:no_upscale():strip_exif():format(webp)/http://s3.ap-south-1.amazonaws.com/discovery-prod-arsenal/arsenal/artworks/65bce4e2371bf00192f9a022/COLLECTION_6161870885172.png",
    "https://img.wynk.in/unsafe/248x248/filters:no_upscale():strip_exif():format(webp)/http://s3.ap-south-1.amazonaws.com/discovery-prod-arsenal/arsenal/artworks/65a91a8c198d706e317860b8/COLLECTION_172242987693001.png",
    "https://img.wynk.in/unsafe/248x248/filters:no_upscale():strip_exif():format(webp)/http://s3.ap-south-1.amazonaws.com/discovery-prod-arsenal/arsenal/artworks/65c0b355ce156159dfad79df/COLLECTION_441975218586260.png",
    "https://img.wynk.in/unsafe/248x248/filters:no_upscale():strip_exif():format(webp)/http://s3.ap-south-1.amazonaws.com/discovery-prod-arsenal/arsenal/artworks/65a9f57fb5e9396e2e6f94da/COLLECTION_177188855624768.png",
  ];
  final List<String> topurls = [
    "https://img.wynk.in/unsafe/880x307/filters:no_upscale():strip_exif():format(webp)/https://s3.ap-south-1.amazonaws.com/discovery-prod-arsenal/arsenal/artworks/65c0a7b3d4b7dc2567d65d80/BANNER_540291032507683.jpg",
    "https://img.wynk.in/unsafe/880x307/filters:no_upscale():strip_exif():format(webp)/https://s3.ap-south-1.amazonaws.com/discovery-prod-zion/zion/1694757641105-subhedar-720x251.png",
    "https://img.wynk.in/unsafe/880x307/filters:no_upscale():strip_exif():format(webp)/https://s3.ap-south-1.amazonaws.com/discovery-prod-arsenal/arsenal/artworks/65015e1f87c87c2fe48d0c94/BANNER_5529015570767.png",
    "https://img.wynk.in/unsafe/880x307/filters:no_upscale():strip_exif():format(webp)/https://s3.ap-south-1.amazonaws.com/discovery-prod-arsenal/arsenal/artworks/62552ff7aab60f36917f5b03/BANNER_103312279380110.png",
    "https://img.wynk.in/unsafe/880x307/filters:no_upscale():strip_exif():format(webp)/https://s3.ap-south-1.amazonaws.com/discovery-prod-arsenal/arsenal/artworks/65aa4bd36f72150e10bac339/BANNER_75810137004499.jpg",
  ];
  Widget displayInfo() {
    return Container(
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.blue),
      height: 70,
      width: 200,

      // color: Colors.grey,
      child: const Text(
        "Welcome to wink app",
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget displaySongs(String link) {
    return Container(
      margin: const EdgeInsets.all(2),
      child: Column(children: [
        const SizedBox(
          width: 10,
        ),
        Image.network(
          link,
          height: 150,
          width: 100,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            onPressed: () {},
            child: const Text(
              "Play",
              style: TextStyle(color: Colors.white),
            ))
      ]),
    );
  }

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        leading: IconButton(
          icon: Image.network(
            "https://asset.brandfetch.io/idhXjxLF9g/idYv1j1-ln.svg?updated=1674455446811",
          ),
          iconSize: 200,
          onPressed: () {},
        ),
        title: const Text(
          "Wynk Music",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.grey[850],
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(children: [
        Container(
          height: 150,
          // width: 300,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(topurls.length, (index) {
              return Container(
                margin: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    topurls[index],
                    height: 100,
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }),
          ),
        ),
        const Text(
          "Popular Songs",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                displaySongs(
                    "https://img.wynk.in/unsafe/248x248/filters:no_upscale():strip_exif():format(webp)/http://s3.ap-south-1.amazonaws.com/wynk-music-cms/srch_saregama/20240115172932000/8907212014449/1705321083499/resources/8907212014449.jpg"),
                displaySongs(
                    "https://img.wynk.in/unsafe/248x248/filters:no_upscale():strip_exif():format(webp)/http://s3.ap-south-1.amazonaws.com/wynk-music-cms/srch_hungama/8902894362153_20240123134426/8902894362153/1705998603647/resources/8902894362153.jpg"),
                displaySongs(
                    "https://img.wynk.in/unsafe/248x248/filters:no_upscale():strip_exif():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/ZMC05244.jpg"),
                displaySongs(
                    "https://img.wynk.in/unsafe/248x248/filters:no_upscale():strip_exif():format(webp)/http://s3.ap-south-1.amazonaws.com/discovery-prod-arsenal/arsenal/artworks/65c20add81acd332336d04b9/COLLECTION_1404597668844456.png"),
                displaySongs(
                    "https://img.wynk.in/unsafe/248x248/filters:no_upscale():strip_exif():format(webp)/http://s3.ap-south-1.amazonaws.com/wynk-music-cms/srch_hungama/8903431906946_20230707001010/8903431906946/1688670017938/resources/8903431906946.jpg"),
                displaySongs(
                    "https://img.wynk.in/unsafe/248x248/filters:no_upscale():strip_exif():format(webp)/http://s3.ap-south-1.amazonaws.com/discovery-prod-arsenal/arsenal/artworks/65c20add81acd332336d04b9/COLLECTION_1404597668844456.png"),
                displaySongs(
                    "https://img.wynk.in/unsafe/248x248/filters:no_upscale():strip_exif():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/1625805171/srch_pplmumbai_INV272100015.jpg"),
                displaySongs(
                    "https://img.wynk.in/unsafe/248x248/filters:no_upscale():strip_exif():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/1625805171/srch_pplmumbai_INV272100015.jpg")
              ],
            )),
        const Text(
          "Indie Music",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 150,
          width: 400,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: musicList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(2),
                  height: 160,
                  width: 150,
                  child: Image.network(musicList[index]),
                );
              }),
        ),
        count % 2 == 1 ? displayInfo() : Container()
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: const Icon(
          Icons.info,
          color: Colors.white,
        ),
      ),
    );
  }
}
