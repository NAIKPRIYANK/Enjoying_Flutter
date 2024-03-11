import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();




  bool isTaskAvailable = false;
  int index = 0;
  List<ModelClassToDo> cardlist = [];

  // ===========================List to change color of each task in lopping structure==========================
  List<Color> caardColors = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];

// ================================dialog Box for delete confirmation Message==================================
  Future<void> _showMyDialog(int index) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm to delete'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Are you sure want to delete this Task?'),
              ],
            ),
          ),
          actions: <Widget>[
            Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(0, 139, 148, 1)),
                  child: const Text('Cancel',
                      style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.of(context).pop();
                    if (cardlist.isEmpty) {
                      setState(() {
                        isTaskAvailable = false;
                      });
                    }
                  },
                ),
                const Spacer(),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(0, 139, 148, 1)),
                  child: const Text(
                    'Delete',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    setState(() {
                      cardlist.removeAt(index);
                      Navigator.of(context).pop();
                      if (cardlist.isEmpty) {
                        isTaskAvailable = false;
                      }
                    });
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }

// =============================To delete task======================================================================
  void deletecard(int index) {
    _showMyDialog(index);
  }

//=============================Check textfield are empty or filled==================================================
  void datacheck(ModelClassToDo obj) {
    if (titleController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
        dateController.text.isNotEmpty) {
      setState(() {
        isTaskAvailable = true;
        cardlist.add(obj);
      });
      titleController.clear();
      descriptionController.clear();
      dateController.clear();
      Navigator.pop(context);
    }
  }

  // ==========================bottomsheet for editing availabel task=================================================

  void editCard(int index) {
    ModelClassToDo selectedCard = cardlist[index];
    titleController.text = selectedCard.title;
    descriptionController.text = selectedCard.description;
    dateController.text = selectedCard.date;

    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: EdgeInsets.fromLTRB(
              16.0, // Left padding
              8.0, // Top padding
              16.0, // Right padding
              MediaQuery.of(context).viewInsets.bottom + 30.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Edit Task",
                  style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 25)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Title",
                      style: GoogleFonts.quicksand(
                          color: const Color.fromRGBO(0, 139, 148, 1),
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16)),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      autofocus: true,
                      controller: titleController,
                      decoration: const InputDecoration(
                          hintText: "Enter task title",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 139, 148, 1)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)))),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Description",
                      style: GoogleFonts.quicksand(
                          color: const Color.fromRGBO(0, 139, 148, 1),
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16)),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      child: TextField(
                        maxLines: 3,
                        controller: descriptionController,
                        decoration: const InputDecoration(
                            hintText: "Enter task Description",
                            // contentPadding:
                            //     EdgeInsets.only(bottom: 80, left: 10, right: 10),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(0, 139, 148, 1)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)))),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Date",
                      style: GoogleFonts.quicksand(
                          color: const Color.fromRGBO(0, 139, 148, 1),
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16)),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      readOnly: true,
                      onTap: () async {
                        DateTime? datepicker = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2024),
                            lastDate: DateTime(2025));
                        String dateFormat =
                            DateFormat.yMMMd().format(datepicker!);
                        setState(() {
                          dateController.text = dateFormat;
                        });
                      },
                      controller: dateController,
                      decoration: const InputDecoration(
                          hintText: "Choose task date",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(0, 139, 148, 1)),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          suffixIcon: Icon(
                            Icons.calendar_month_outlined,
                            size: 30,
                          )),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    ModelClassToDo updatedCard = ModelClassToDo(
                        title: titleController.text.trim(),
                        description: descriptionController.text.trim(),
                        date: dateController.text.trim());
                    if (titleController.text.trim().isNotEmpty &&
                        descriptionController.text.trim().isNotEmpty &&
                        dateController.text.isNotEmpty) {
                      setState(() {
                        cardlist[index] = updatedCard;
                        titleController.clear();
                        descriptionController.clear();
                        dateController.clear();
                        Navigator.pop(context);
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                      fixedSize: const Size(330, 50)),
                  child: Text(
                    "Update",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 22)),
                  ),
                )
              ],
            ),
          );
        });
  }

  // =============================Bottomsheeet to adding new task=====================================

  void bottomsheetshower() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: EdgeInsets.fromLTRB(
              16.0, // Left padding
              8.0, // Top padding
              16.0, // Right padding
              MediaQuery.of(context).viewInsets.bottom +
                  30.0, // Bottom padding + viewInsets
            ),
            // padding: MediaQuery.of(context).viewInsets,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Create Task",
                  style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 25)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Title",
                      style: GoogleFonts.quicksand(
                          color: const Color.fromRGBO(0, 139, 148, 1),
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16)),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      autofocus: true,
                      controller: titleController,
                      decoration: const InputDecoration(
                          hintText: "Enter task title",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 139, 148, 1)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)))),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Description",
                      style: GoogleFonts.quicksand(
                          color: const Color.fromRGBO(0, 139, 148, 1),
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16)),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      child: TextField(
                        maxLines: 3,
                        controller: descriptionController,
                        decoration: const InputDecoration(
                            hintText: "Enter task description...",
                            // contentPadding:
                            //     EdgeInsets.only(bottom: 80, left: 10, right: 10),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(0, 139, 148, 1)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)))),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Date",
                      style: GoogleFonts.quicksand(
                          color: const Color.fromRGBO(0, 139, 148, 1),
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16)),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      readOnly: true,
                      onTap: () async {
                        DateTime? datepicker = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2024),
                            lastDate: DateTime(2025));
                        String dateFormat =
                            DateFormat.yMMMd().format(datepicker!);
                        setState(() {
                          dateController.text = dateFormat;
                        });
                      },
                      controller: dateController,
                      decoration: const InputDecoration(
                          hintText: "Choose task date",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(0, 139, 148, 1)),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          suffixIcon: Icon(
                            Icons.calendar_month_outlined,
                            size: 30,
                          )),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    ModelClassToDo obj = ModelClassToDo(
                        title: titleController.text.trim(),
                        description: descriptionController.text.trim(),
                        date: dateController.text);
                    setState(() {
                      datacheck(obj);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8.0), // Adjust the radius as needed
                      ),
                      backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                      fixedSize: const Size(330, 50)),
                  child: Text(
                    "Submit",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 22)),
                  ),
                )
              ],
            ),
          );
        });
  }

  // =========================================main screen(build Method)========================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "To-do List",
          style: GoogleFonts.quicksand(
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 26)),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: isTaskAvailable
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: cardlist.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 10,
                                spreadRadius: 1,
                                offset: const Offset(0, 10))
                          ],
                          color: caardColors[index % 4],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 15),
                                height: 52,
                                width: 52,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Image.asset("assets/images/img.png"),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      cardlist[index].title,
                                      style: GoogleFonts.quicksand(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16)),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      cardlist[index].description,
                                      style: GoogleFonts.quicksand(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                cardlist[index].date,
                                style: GoogleFonts.quicksand(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10)),
                              ),
                              const Spacer(
                                flex: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    editCard(index);
                                  });
                                },
                                child: const Icon(
                                  Icons.edit_outlined,
                                  size: 20,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    deletecard(index);
                                  });
                                },
                                child: const Icon(Icons.delete_outline,
                                    size: 20,
                                    color: Color.fromRGBO(0, 139, 148, 1)),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            )
          : Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/noTaskpng.png"),
                    Text(
                      "No task available,Please add the task ⬇️",
                      style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16)),
                    ),
                  ]),
            ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(eccentricity: 0.5),
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        onPressed: () {
          titleController.clear();
          descriptionController.clear();
          dateController.clear();
          bottomsheetshower();
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

//======================================Model class to store data-=============================================================

class ModelClassToDo {
  String title;
  String description;
  String date;

  ModelClassToDo(
      {required this.title, required this.description, required this.date});
}
