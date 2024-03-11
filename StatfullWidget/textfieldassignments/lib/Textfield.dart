import 'package:flutter/material.dart';

class TextFieldAssign extends StatefulWidget {
  const TextFieldAssign({super.key});

  @override
  State<TextFieldAssign> createState() => _TextFieldAssignState();
}

class _TextFieldAssignState extends State<TextFieldAssign> {
  final TextEditingController _nameTextController = TextEditingController();
  final FocusNode _namefocusNode = FocusNode();
  List<String> nameList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("TextField"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: _nameTextController,
                focusNode: _namefocusNode,
                decoration: InputDecoration(
                    hintText: "Enter Your Name:",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue))),
                // onChanged: (val) {
                //   print("Val: $val");
                // },
                // onSubmitted: (value) {
                //   print("Value: $value");
                // },
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: nameList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      height: 30,
                      width: double.infinity,
                      // color: Colors.blueAccent,
                      decoration:
                          const BoxDecoration(color: Colors.blue, boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: Offset(0, 8))
                      ]),
                      child: Text(
                        nameList[index],
                        textAlign: TextAlign.center,
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              nameList.add(_nameTextController.text);
              _nameTextController.clear();
            });
          }),
    );
  }
}
