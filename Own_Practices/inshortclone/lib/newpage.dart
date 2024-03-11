// import 'package:flutter/material.dart';

// class NewsApp extends StatefulWidget {
//   @override
//   State<NewsApp> createState() => _NewsAppState();
// }

// class _NewsAppState extends State<NewsApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset:
//           false, // Prevent body resizing when keyboard is shown
//       body: newsUi(
//           "https://imgs.search.brave.com/kcSUaANxhT2sEv5281TeEm3VhjX-o_dh4MmoGgumF1U/rs:fit:500:0:0/g:ce/aHR0cHM6Ly93d3cu/Z2V0dHlpbWFnZXMu/Y29tL2dpLXJlc291/cmNlcy9pbWFnZXMv/TmV3cy9KYW51YXJ5/MjAyNC8xOTUzMDgy/NDIxLmpwZw",
//           "Iyer, Rajat can't get cushion, should go to Domestic cricket:Ojha",
//           "Former Indian cricketer Pragyan Ojha has advised middle-order batters Shreyas Iyer and Rajat Patidar to return to domestic cricket and regain their form, suggesting they might not have room in the Indian squad when senior players Virat Kohli and KL Rahul return.Ojha's comments come after Iyer's underwhelming performance in the ongoing Test series against England, failing to score a fifty in his last 13 innings. Patidar, too, hasn't impressed."),

//       bottomNavigationBar: BottomNavigationBar(items: const [
//         BottomNavigationBarItem(icon: Icon(Icons.circle), label: "Relevancy"),
//         BottomNavigationBarItem(icon: Icon(Icons.share), label: "Share"),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.bookmark_border), label: "Bookmark")
//       ]),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: const Icon(Icons.navigate_next),
//       ),
//     );
//   }

//   Widget newsUi(String imgurl, String heading, String subHeading) {
//     return Column(
//       children: [
//         Image.network(
//           imgurl,
//           height: 300,
//           width: double.infinity,
//           fit: BoxFit.cover,
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           width: double.infinity,
//           height: 60,
//           child: Text(
//             heading,
//             style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.all(10),
//           width: double.infinity,
//           height: 250,
//           child: Text(
//             subHeading,
//             style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w100),
//           ),
//         )
//       ],
//     );
//   }
// }

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class NewsApp extends StatefulWidget {
  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  List<dynamic> newsData = [];

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  Future<void> fetchNews() async {
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=in&apiKey=b85c9838de5144d483d7cfd3df336d7d'));
    if (response.statusCode == 200) {
      setState(() {
        newsData = jsonDecode(response.body)['articles'];
      });
    } else {
      throw Exception('Failed to load news');
    }
  }

  int? currentIndex = 0;
  void prevNews() {
    setState(() {
      currentIndex = currentIndex! - 1;
      if (currentIndex! < 0) {
        currentIndex = 0;
      }
    });
  }

  void nexNews() {
    setState(() {
      currentIndex = currentIndex! + 1;
      if (currentIndex! > newsData.length - 1) {
        currentIndex = newsData.length - 1;
      }
    });
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    String url = currentIndex != null && newsData.isNotEmpty
        ? newsData[currentIndex!]['url']
        : '';
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: newsData.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : newsUi(
              newsData[currentIndex ?? 0]['urlToImage'],
              newsData[currentIndex ?? 0]['title'],
              newsData[currentIndex ?? 0]['description'],
            ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: "Relevancy"),
          BottomNavigationBarItem(icon: Icon(Icons.share), label: "Share"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border), label: "Bookmark")
        ],
      ),
      floatingActionButton: Row(
        children: [
          const SizedBox(
            width: 30,
          ),
          // currentIndex! > 0
          //     ?
          FloatingActionButton(
            onPressed: prevNews,
            child: const Icon(Icons.arrow_back),
          ),
          // : Container(),
          const SizedBox(
            width: 210,
          ),
          // currentIndex == newsData.length - 1
          //     ? Container()
          //     :
          FloatingActionButton(
            onPressed: nexNews,
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
      bottomSheet: Opacity(
        opacity: 0.5,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.red.shade400,
                Colors.black.withOpacity(0.9),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            backgroundBlendMode: BlendMode.multiply,
          ),
          // padding: const EdgeInsets.only(right: 190),
          // color: Colors.black,
          height: 60,
          width: double.infinity,
          child: TextButton(
            onPressed: () {
              _launchURL(url);
            },
            child: const Text(
              "Tap to read more",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w100),
            ),
          ),
        ),
      ),
    );
  }

  Widget newsUi(String? imgurl, String? heading, String? subHeading) {
    return Column(
      children: [
        Image.network(
          imgurl ??
              'https://media.istockphoto.com/id/1352945762/vector/no-image-available-like-missing-picture.jpg?s=612x612&w=0&k=20&c=4X-znbt02a8EIdxwDFaxfmKvUhTnLvLMv1i1f3bToog=',
          height: 300,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: double.infinity,
          height: 90,
          child: Text(
            heading ?? 'No title available',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: double.infinity,
          height: 150,
          child: Text(
            subHeading ?? 'No description available',
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w100),
          ),
        )
      ],
    );
  }
}
