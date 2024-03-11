import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  int num = 0;
  int index = 0;
  List contentList = [];
  List<Color> imageColors = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
    const Color.fromRGBO(250, 232, 232, 1)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
              textStyle: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.white)),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: contentList.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: imageColors[index % 5],
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 7,
                      blurRadius: 8,
                      offset: const Offset(0, 8))
                ],
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            margin: const EdgeInsets.all(15),
            width: double.infinity,
            // height: 112,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      height: 52,
                      width: 52,
                      child: Image.asset("assets/images/img.png"),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Text(
                          "Lorem Ipsum is simply setting industry.",
                          style: GoogleFonts.quicksand(
                              textStyle: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          // height: 44,
                          width: 230,
                          child: Text(
                            "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                            style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "10 July 2023",
                      style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500)),
                    ),
                    const SizedBox(
                      width: 209,
                    ),
                    const Icon(
                      Icons.edit_outlined,
                      color: Color.fromRGBO(0, 139, 148, 1),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Icon(
                      Icons.delete_outline_outlined,
                      color: Color.fromRGBO(0, 139, 148, 1),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       index++;
      //       contentList.add(index);
      //     });
      //   },
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
