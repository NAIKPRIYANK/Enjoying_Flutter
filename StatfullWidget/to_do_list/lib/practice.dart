// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class TodoPage1 extends StatefulWidget {
//   const TodoPage1({super.key});

//   @override
//   State<TodoPage1> createState() => _TodoPage1State();
// }

// class _TodoPage1State extends State<TodoPage1> {
//   TextEditingController titleControl = TextEditingController();
//   TextEditingController descriptionControl = TextEditingController();
//   TextEditingController datecontrol = TextEditingController();
//   int num = 0;
//   int index = 0;
//   List contentList = [];
//   List<Color> imageColors = [
//     const Color.fromRGBO(250, 232, 232, 1),
//     const Color.fromRGBO(232, 237, 250, 1),
//     const Color.fromRGBO(250, 249, 232, 1),
//     const Color.fromRGBO(250, 232, 250, 1),
//     const Color.fromRGBO(250, 232, 232, 1)
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       appBar: AppBar(
//         backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
//         title: Text(
//           "To-do list",
//           style: GoogleFonts.quicksand(
//               textStyle: const TextStyle(
//                   fontSize: 26,
//                   fontWeight: FontWeight.w700,
//                   color: Colors.white)),
//         ),
//       ),
//       body: ListView.builder(
//         shrinkWrap: true,
//         itemCount: contentList.length,
//         itemBuilder: (context, index) {
//           return Container(
//             padding: const EdgeInsets.all(15),
//             decoration: BoxDecoration(
//                 color: imageColors[index % 5],
//                 boxShadow: [
//                   BoxShadow(
//                       color: Colors.grey.shade200,
//                       spreadRadius: 7,
//                       blurRadius: 8,
//                       offset: const Offset(0, 8))
//                 ],
//                 borderRadius: const BorderRadius.all(Radius.circular(10))),
//             margin: const EdgeInsets.all(15),
//             // width: double.infinity,5
//             // height: 112,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       margin: const EdgeInsets.only(top: 15),
//                       decoration: const BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Colors.white,
//                       ),
//                       height: 52,
//                       width: 52,
//                       child: Image.asset("assets/images/img.png"),
//                     ),
//                     const SizedBox(
//                       width: 15,
//                     ),
//                     Column(
//                       children: [
//                         SizedBox(
//                           height: 20,
//                           child: Text(
//                             contentList[index][0],
//                             style: GoogleFonts.quicksand(
//                                 textStyle: const TextStyle(
//                                     fontSize: 12, fontWeight: FontWeight.w600)),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         SizedBox(
//                           // height: 44,
//                           width: 230,
//                           child: Text(
//                             contentList[index][1],
//                             style: GoogleFonts.quicksand(
//                                 textStyle: const TextStyle(
//                                     fontSize: 10, fontWeight: FontWeight.w500)),
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       contentList[index][2],
//                       style: GoogleFonts.quicksand(
//                           textStyle: const TextStyle(
//                               fontSize: 10, fontWeight: FontWeight.w500)),
//                     ),
//                     const SizedBox(
//                       width: 160,
//                     ),
//                     const Icon(
//                       Icons.edit_outlined,
//                       color: Color.fromRGBO(0, 139, 148, 1),
//                     ),
//                     const SizedBox(
//                       width: 15,
//                     ),
//                     const Icon(
//                       Icons.delete_outline_outlined,
//                       color: Color.fromRGBO(0, 139, 148, 1),
//                     )
//                   ],
//                 )
//               ],
//             ),
//           );
//         },
//       ),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: () {
//       //     setState(() {
//       //
//       //     });
//       //   },
//       //   child: const Icon(Icons.add),
//       // ),
//       floatingActionButton: FloatingActionButton(onPressed: () {
//         showModalBottomSheet(
//             backgroundColor: Colors.white,
//             context: context,
//             shape: const RoundedRectangleBorder(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(30),
//                     topRight: Radius.circular(30))),
//             builder: (BuildContext context) {
//               return Container(
//                 padding: const EdgeInsets.all(10),
//                 height: 363,
//                 width: double.infinity,
//                 child: Column(
//                   children: [
//                     Text(
//                       "Create Task",
//                       style: GoogleFonts.quicksand(
//                           textStyle: const TextStyle(
//                               fontSize: 22, fontWeight: FontWeight.w600)),
//                     ),
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     TextField(
//                       keyboardType: TextInputType.name,
//                       controller: titleControl,
//                       decoration: const InputDecoration(
//                           contentPadding: EdgeInsets.symmetric(horizontal: 10),
//                           border: OutlineInputBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(5))),
//                           hintText: "Enter title"),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     TextField(
//                       keyboardType: TextInputType.name,
//                       controller: descriptionControl,
//                       decoration: const InputDecoration(
//                           border: OutlineInputBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(10))),
//                           hintText: "Enter Description"),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     TextField(
//                       keyboardType: TextInputType.streetAddress,
//                       controller: datecontrol,
//                       decoration: const InputDecoration(
//                           border: OutlineInputBorder(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(10))),
//                           hintText: "Enter date"),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     FilledButton(
//                         onPressed: () {
//                           setState(() {
//                             index++;
//                             contentList.add([
//                               titleControl.text,
//                               descriptionControl.text,
//                               datecontrol.text
//                             ]);
//                             titleControl.clear();
//                             descriptionControl.clear();
//                             datecontrol.clear();
//                             Navigator.pop(context);
//                           });
//                         },
//                         child: const Text("Submit"))
//                   ],
//                 ),
//               );
//             });
//       }),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoPage1 extends StatefulWidget {
  const TodoPage1({super.key});

  @override
  State<TodoPage1> createState() => _TodoPage1State();
}

class _TodoPage1State extends State<TodoPage1> {
  TextEditingController titleControl = TextEditingController();
  TextEditingController descriptionControl = TextEditingController();
  TextEditingController dateControl = TextEditingController();
  int index = 0;
  List<List<String>> contentList = [];
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
        itemCount: contentList.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    spreadRadius: 7,
                    blurRadius: 8,
                    offset: const Offset(0, 8))
              ],
              color: imageColors[index % 5],
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            margin: const EdgeInsets.all(15),
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
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            contentList[index][0],
                            style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600)),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            contentList[index][1],
                            style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      contentList[index][2],
                      style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit_outlined),
                          color: const Color.fromRGBO(0, 139, 148, 1),
                          onPressed: () {
                            // Handle edit
                          },
                        ),
                        const SizedBox(width: 15),
                        IconButton(
                          icon: const Icon(Icons.delete_outline_outlined),
                          color: const Color.fromRGBO(0, 139, 148, 1),
                          onPressed: () {
                            // Handle delete
                          },
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.white,
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            builder: (BuildContext context) {
              return Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create Task",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      keyboardType: TextInputType.text,
                      controller: titleControl,
                      decoration: InputDecoration(
                        labelText: "Title",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      keyboardType: TextInputType.text,
                      controller: descriptionControl,
                      decoration: InputDecoration(
                        labelText: "Description",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      keyboardType: TextInputType.datetime,
                      controller: dateControl,
                      decoration: InputDecoration(
                        labelText: "Date",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                          fixedSize: const Size(300, 50)),
                      onPressed: () {
                        setState(() {
                          contentList.add([
                            titleControl.text,
                            descriptionControl.text,
                            dateControl.text,
                          ]);
                          titleControl.clear();
                          descriptionControl.clear();
                          dateControl.clear();
                          Navigator.pop(context);
                        });
                      },
                      child: Text(
                        "Submit",
                        style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
