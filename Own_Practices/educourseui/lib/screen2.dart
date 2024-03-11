import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
              top: 40,
            ),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 35, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "UX Designer from Scratch.",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Basic guideline & tips & tricks for how to become a UX designer easily.",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 34,
                      width: 34,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromRGBO(0, 82, 178, 1),
                          border: Border.all(color: Colors.white)),
                      child: Image.asset("assets/images/prof.png"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Author:",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w100,
                          color: Colors.white),
                    ),
                    const Text(
                      " Jenny",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Spacer(),
                    const Text(
                      "4.8",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    const Icon(
                      Icons.star,
                      size: 15,
                      color: Color.fromRGBO(255, 146, 0, 1),
                    ),
                    const Text(
                      "(20 review)",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w100,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      width: 30,
                    )
                  ],
                ),
                Container(
                  color: Colors.white,
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              width: double.infinity,
              margin: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(230, 239, 239, 1),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.only(top: 10),
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          height: 70,
                          width: 300,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  margin: EdgeInsets.all(5),
                                  height: 60,
                                  width: 46,
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(230, 239, 239, 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child:
                                      Image.asset("assets/images/youtube.png")),
                              SizedBox(
                                width: 10,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Introduction",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Lorem Ipsum is simply dummy text ...",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
