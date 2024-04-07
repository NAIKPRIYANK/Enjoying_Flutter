

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

class NewsApp extends StatefulWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  List<dynamic> newsData = [];
  int currentIndex = 0;
  bool isDarkMode = false;

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

  Future<void> _launchURLApp() async {
    var url = Uri.parse(newsData[currentIndex]['url']);
    try {
      await launch(url.toString());
    } catch (e) {
      print('Error launching URL: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: newsData.length,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _launchURLApp();
            },
            child: newsUi(
              newsData[index]['urlToImage'],
              newsData[index]['title'],
              newsData[index]['description'],
            ),
          );
        },
      ),
      bottomSheet: BottomAppBar(
        color: isDarkMode ? Colors.black : Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
              child: SizedBox(
                child: Column(
                  children: [Icon(Icons.mode_night,color: isDarkMode ? Colors.white : Colors.black,), Text("Mode",style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),)],
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                await Share.share(newsData[currentIndex]['url']);
              },
              child: SizedBox(
                child: Column(
                  children: [Icon(Icons.share,color: isDarkMode ? Colors.white : Colors.black), Text("Share",style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),)],
                ),
              ),
            ),
            GestureDetector(
              onTap: _launchURLApp,
              child:  SizedBox(
                child: Column(
                  children: [Icon(Icons.read_more,color: isDarkMode ? Colors.white : Colors.black,), Text("Read more",style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),)],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget newsUi(String? imgUrl, String? heading, String? subHeading) {
    return Column(
      children: [
        Expanded(
          child: Image.network(
            imgUrl ??
                'https://media.istockphoto.com/id/1352945762/vector/no-image-available-like-missing-picture.jpg?s=612x612&w=0&k=20&c=4X-znbt02a8EIdxwDFaxfmKvUhTnLvLMv1i1f3bToog=',
            height: 100,
            width: double.infinity,
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: double.infinity,
          height: 100,
          child: Text(
            heading ?? 'No title available',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: isDarkMode ? Colors.white : Colors.black),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          width: double.infinity,
          height: 250,
          child: Text(
            subHeading ?? 'No description available',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w300,color: isDarkMode ? Colors.white : Colors.black),
          ),
        ),
      ],
    );
  }
}





















