import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget createStory(String name, String imagePath) {
    return Column(
      children: [
        Container(
            // margin: EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // borderRadius: const BorderRadius.all(Radius.circular(9.0)),

              border: Border.all(
                color: const Color.fromARGB(255, 239, 99, 146),
                width: 2.0,
              ),
            ),
            width: 80.0,
            height: 80.0,
            // color: Colors.black,
            child: ClipOval(
              child: Image.asset(
                imagePath,
                // fit: BoxFit.scaleDown,
              ),
            )),
        Text(
          name,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget createHeader(String imgPath, String name, String venue) {
    return Row(
      children: [
        Container(
            margin: const EdgeInsets.only(top: 20.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              // border: Border.all(
              //   // color: const Color.fromARGB(255, 2, 2, 2),
              //   width: 2.0,
              // ),
            ),
            width: 50.0,
            height: 50.0,
            child: ClipOval(
                child: Image.asset(
              imgPath,
              fit: BoxFit.contain,
            ))),
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Text(
              venue,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),
          ],
        ),
        const SizedBox(
          width: 160,
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
      ],
    );
  }

  Widget iconBar() {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.comment)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
        const SizedBox(
          width: 190,
        ),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.bookmark_border_outlined)),
      ],
    );
  }

  Widget showLike(String imgpath, String likes, String date) {
    return Row(
      children: [
        ClipOval(
          child: Container(
            margin: const EdgeInsets.only(left: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            width: 20,
            height: 20,
            child: Image.asset(
              imgpath,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              likes,
              style: const TextStyle(fontSize: 10),
            ),
            Text(
              date,
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 8),
            ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Instgram",
          style: TextStyle(fontFamily: 'Billabong', fontSize: 35),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.message))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  createStory("Your Story", 'assets/images/img1.jpeg'),
                  const SizedBox(
                    width: 10,
                  ),
                  createStory("||Comrade||", 'assets/images/img2.jpeg'),
                  const SizedBox(
                    width: 10,
                  ),
                  createStory("shubamh_18", 'assets/images/img3.jpg'),
                  const SizedBox(
                    width: 10,
                  ),
                  createStory("omkarMulik", 'assets/images/img4.jpg'),
                  const SizedBox(
                    width: 10,
                  ),
                  createStory("__chane__", 'assets/images/img5.JPG'),
                  const SizedBox(
                    width: 10,
                  ),
                  createStory("Priyank Naik", 'assets/images/img6.jpg'),
                  const SizedBox(
                    width: 10,
                  ),
                  createStory("Priyank Naik", 'assets/images/img2.jpeg'),
                  const SizedBox(
                    width: 10,
                  ),
                  createStory("Priyank Naik", 'assets/images/img2.jpeg'),
                  const SizedBox(
                    width: 10,
                  ),
                  createStory("Priyank Naik", 'assets/images/img2.jpeg'),
                  const SizedBox(
                    width: 10,
                  ),
                  createStory("Priyank Naik", 'assets/images/img2.jpeg'),
                ],
              ),
            ),
            createHeader(
                'assets/images/img3.jpg', "_Deva_", "Moregaon,bhedshi"),
            Image.asset('assets/images/img1.jpeg'),
            iconBar(),
            showLike(
                'assets/images/img2.jpeg',
                'Liked by __om__ and |deva| and 532 others',
                'December 15, 2023'),
            createHeader(
                'assets/images/img3.jpg', "OmkarMulik", "Moregaon,bhedshi"),
            Image.asset('assets/images/img2.jpeg'),
            iconBar(),
            showLike(
                'assets/images/img2.jpeg',
                'Liked by __om__ and |deva| and 532 others',
                'December 15, 2023'),
            createHeader(
                'assets/images/img3.jpg', "_Deva_", "Moregaon,bhedshi"),
            Image.asset('assets/images/img1.jpeg'),
            iconBar(),
            showLike(
                'assets/images/img2.jpeg',
                'Liked by __om__ and |deva| and 532 others',
                'December 15, 2023'),
            createHeader(
                'assets/images/img3.jpg', "_Deva_", "Moregaon,bhedshi"),
            Image.asset('assets/images/img1.jpeg'),
            iconBar(),
            showLike(
                'assets/images/img2.jpeg',
                'Liked by __om__ and |deva| and 532 others',
                'December 15, 2023'),
            createHeader(
                'assets/images/img3.jpg', "_Deva_", "Moregaon,bhedshi"),
            Image.asset('assets/images/img1.jpeg'),
            iconBar(),
            showLike(
                'assets/images/img2.jpeg',
                'Liked by __om__ and |deva| and 532 others',
                'December 15, 2023'),
          ],
        ),
      ),
    );
  }
}
