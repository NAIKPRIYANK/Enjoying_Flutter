import 'package:flutter/material.dart';
import 'package:women_safety/screens/devices_list_page.dart';
// import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "WomenApp",
            style: TextStyle(
                color: Colors.black, fontFamily: 'Billabong', fontSize: 30),
          ),
          backgroundColor: const Color.fromARGB(255, 245, 246, 247),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              colors: <Color>[
                Color.fromARGB(255, 128, 153, 228),
                Color.fromARGB(255, 213, 217, 224),
                Color.fromARGB(255, 128, 153, 228),
              ], // Gradient from https://learnui.design/tools/gradient-generator.html
              tileMode: TileMode.mirror,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Hello,\nPriyank",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                // color: Colors.amber,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(300, 40),
                        backgroundColor: Color.fromARGB(255, 76, 122, 214)),
                    onPressed: () {},
                    child: const Text(
                      "Add Contacts",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 150,
                          width: 150,
                          // color: Colors.grey[400],
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              color: const Color.fromARGB(255, 230, 228, 224)),
                          margin: const EdgeInsets.only(top: 40),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DeviceScanPage()),
                              );
                            },
                            icon: const Icon(
                              Icons.bluetooth,
                              size: 70,
                            ),
                            hoverColor: Colors.amber,
                          )),
                      const Text(
                        "Bluetooth",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          height: 150,
                          width: 150,
                          // color: Colors.grey[400],
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              color: const Color.fromARGB(255, 230, 228, 224)),
                          margin: const EdgeInsets.only(left: 20, top: 30),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.sos,
                              size: 70,
                            ),
                            hoverColor: Colors.amber,
                          )),
                      const Text(
                        "SOS",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              color: const Color.fromARGB(255, 230, 228, 224)),
                          // color: Colors.grey[400],

                          margin: const EdgeInsets.only(left: 20, top: 40),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.handshake_sharp,
                              size: 70,
                            ),
                            hoverColor: Colors.amber,
                          )),
                      const Text(
                        "Community",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          height: 150,
                          width: 150,
                          // color: Colors.grey[400],
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              color: const Color.fromARGB(255, 230, 228, 224)),
                          margin: const EdgeInsets.only(left: 20, top: 30),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.male_sharp,
                              size: 70,
                            ),
                            hoverColor: Colors.amber,
                          )),
                      const Text(
                        "Map",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box,
                  color: Colors.black,
                ),
                label: "Account"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.details,
                  color: Colors.black,
                ),
                label: "Details")
          ],
        ));
  }
}
