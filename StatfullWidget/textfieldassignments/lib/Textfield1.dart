import 'package:flutter/material.dart';

class Textfield1 extends StatefulWidget {
  const Textfield1({super.key});

  @override
  State<Textfield1> createState() => _Textfield1State();
}

class _Textfield1State extends State<Textfield1> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController companyController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DreamCompany"), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            TextField(
              keyboardType: TextInputType.name,
              controller: nameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  hintText: "Enter your Name"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.name,
              controller: companyController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  hintText: "Enter your DreamCompany"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.streetAddress,
              controller: locationController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  hintText: "Enter your Loaction"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    flag = true;
                  });
                },
                child: const Text("Submit")),
            const SizedBox(
              height: 10,
            ),
            flag &&
                    nameController.text.isNotEmpty &&
                    companyController.text.isNotEmpty &&
                    locationController.text.isNotEmpty
                ? Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.orange,
                            // spreadRadius: 7,
                            // blurRadius: 5,
                            // offset: Offset(5, 8)
                          )
                        ]),
                    height: 130,
                    width: 300,
                    // color: Colors.amber,
                    child: Column(
                      children: [
                        const Text(
                          "Personal Info",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(nameController.text),
                        Text(companyController.text),
                        Text(locationController.text)
                      ],
                    ),
                  )
                : Container(),
          ],
        ),
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
