import 'package:flutter/material.dart';

class Df05 extends StatefulWidget {
  const Df05({super.key});

  @override
  State<Df05> createState() => _Df05State();
}

class _Df05State extends State<Df05> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumbercontroller = TextEditingController();
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dailflash"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
                fillColor: Colors.purple,
                filled: true,
                hintText: "Enter you Name",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: phoneNumbercontroller,
            decoration: const InputDecoration(
                fillColor: Colors.purple,
                filled: true,
                hintText: "Enter you PhoneNumber",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  flag = true;
                });
              },
          child: const Text("Submit")),
          const SizedBox(
            height: 20,
          ),
          flag
              ? Container(
                height: 60,
                width: 100,
                decoration:const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                    
                ),
                  
                  child: Column(
                    children: [
                      Text(nameController.text),
                      Text(phoneNumbercontroller.text)
                    ],
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
