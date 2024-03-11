// import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:to_do_list/practice2.dart';

class ToDoAppV1 extends StatefulWidget {
  const ToDoAppV1({super.key});
  @override
  State createState() => _ToDoAppV1State();
}

class ModelClassTodo {
  String title;
  String description;
  String date;
  ModelClassTodo(
      {required this.title, required this.description, required this.date});
}

class _ToDoAppV1State extends State {
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();
  TextEditingController datecontroller = TextEditingController();
  List<Color> caardColors = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];

  bool isTaskAvailable = false;
  bool addtask = true;
  List taskList = [];
  void onSubmit(bool addTask, [ModelClassTodo? todoObj]) {
    if (titlecontroller.text.trim().isNotEmpty &&
        descriptioncontroller.text.trim().isNotEmpty &&
        datecontroller.text.trim().isNotEmpty) {
      if (addTask) {
        setState(() {
          taskList.add(
            ModelClassTodo(
                title: titlecontroller.text.trim(),
                description: descriptioncontroller.text.trim(),
                date: datecontroller.text.trim()),
          );
        });
      } else {
        setState(() {
          todoObj!.title = titlecontroller.text.trim();
          todoObj.description = descriptioncontroller.text.trim();
          todoObj.date = datecontroller.text.trim();
        });
      }

      Navigator.of(context).pop();
    }
    clearField();
  }

  void editingTask(ModelClassTodo todoObj) {
    titlecontroller.text = todoObj.title;
    descriptioncontroller.text = todoObj.description;
    datecontroller.text = todoObj.date;
    _bottomsheetshower(false, todoObj);
  }

  void deleteTask(ModelClassTodo todoObj) {
    _showMyDialog( todoObj);
  }

  Future<void> _showMyDialog(ModelClassTodo todoObj) async {
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
                    if (taskList.isEmpty) {
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
                      taskList.remove(todoObj);
                      Navigator.of(context).pop();
                      if (taskList.isEmpty) {
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

  void clearField() {
    titlecontroller.clear();
    descriptioncontroller.clear();
    datecontroller.clear();
  }

  void _bottomsheetshower(bool addtask, [ModelClassTodo? todoObj]) {
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
                  const Text("Title"),
                  TextField(
                    controller: titlecontroller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Description"),
                  TextField(
                    controller: descriptioncontroller,
                    maxLines: 3,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Date"),
                  TextField(
                    readOnly: true,
                    controller: datecontroller,
                    onTap: () async {
                      DateTime? datepicker = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2024),
                          lastDate: DateTime(2025));
                      String dateFormat =
                          DateFormat.yMMMd().format(datepicker!);
                      setState(() {
                        datecontroller.text = dateFormat;
                      });
                    },
                    decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.calendar_month_outlined,
                          size: 30,
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isTaskAvailable = true;
                  });
                  addtask ? onSubmit(addtask) : onSubmit(addtask, todoObj);
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
      },
    );
  }

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
              padding: const EdgeInsets.all(15),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: taskList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: caardColors[index % 4]),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 20),
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
                                      taskList[index].title,
                                      style: GoogleFonts.quicksand(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14)),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      taskList[index].description,
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
                                taskList[index].date,
                                style: GoogleFonts.quicksand(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12)),
                              ),
                              const Spacer(
                                flex: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  editingTask(taskList[index]);
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
                                    deleteTask(taskList[index]);
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
        shape: const CircleBorder(eccentricity: 0.1),
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        onPressed: () {
          setState(() {
            clearField();
          });
          _bottomsheetshower(addtask);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
