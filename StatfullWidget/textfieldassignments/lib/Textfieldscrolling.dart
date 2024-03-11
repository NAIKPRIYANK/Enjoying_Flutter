import 'package:flutter/material.dart';

class textfeildscroll extends StatefulWidget {
  const textfeildscroll({super.key});

  @override
  State<textfeildscroll> createState() => _textfeildscrollState();
}

class _textfeildscrollState extends State<textfeildscroll> {
  // int index = 0;
  List infolist = [];
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
                    infolist.add([
                      nameController.text,
                      companyController.text,
                      locationController.text
                    ]);

                    nameController.clear();
                    companyController.clear();
                    locationController.clear();
                  });
                },
                child: const Text("Submit")),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 400,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: infolist.length,
                itemBuilder: (context, index) {
                  return Container(
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
                        Text(infolist[index][0]),
                        Text(infolist[index][1]),
                        Text(infolist[index][2]),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),

      // floatingActionButton: FloatingActionButton(onPressed: (){
      //          setState(() {
      //               flag = true;

      //               infolist.add(index);
      //             });

      // }),
    );
  }
}
