import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(230, 239, 239, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.menu,
                  size: 30,
                ),
                Spacer(),
                Icon(
                  Icons.notifications_none,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome to New",
                    style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.w300)),
                Text("Educourse",
                    style:
                        TextStyle(fontSize: 38, fontWeight: FontWeight.w700)),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.search,
                        size: 30,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Enter your Keyword",
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(30)))),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Course For You",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            height: 242,
                            width: 190,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    stops: [
                                      0.2,
                                      0.5
                                    ],
                                    colors: [
                                      Color.fromRGBO(197, 4, 98, 1),
                                      Color.fromRGBO(80, 3, 112, 1)
                                    ])),
                            child: Column(
                              children: [
                                const Expanded(
                                    child: Text(
                                  "UX Designer from Scratch.",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )),
                                Image.asset("assets/images/con1.png")
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(20),
                            height: 242,
                            width: 190,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    stops: [
                                      0.2,
                                      0.5
                                    ],
                                    colors: [
                                      Color.fromRGBO(0, 77, 228, 1),
                                      Color.fromRGBO(1, 47, 135, 1)
                                    ])),
                            child: Column(
                              children: [
                                const Expanded(
                                    child: Text(
                                  "Design Thinking The Beginner",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )),
                                Image.asset("assets/images/con2.png")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Course By Category",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 36,
                                  width: 36,
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(25, 0, 56, 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Image.asset("assets/images/ico3.png"),
                                ),
                                const Text("UI/UX")
                              ],
                            ),
                            const SizedBox(
                              width: 45,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 36,
                                  width: 36,
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(25, 0, 56, 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Image.asset("assets/images/ico4.png"),
                                ),
                                const Text("VISUAL")
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 36,
                                  width: 36,
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(25, 0, 56, 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Image.asset("assets/images/ico1.png"),
                                ),
                                const Text("ILLUSTRATION")
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 36,
                                  width: 36,
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(25, 0, 56, 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Image.asset("assets/images/ico1.png"),
                                ),
                                const Text("PHOTO")
                              ],
                            ),
                            const SizedBox(
                              width: 45,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
