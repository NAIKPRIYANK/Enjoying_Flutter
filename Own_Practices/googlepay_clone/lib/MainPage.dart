import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Image.asset('assets/images/thumn.jpg'),
                Positioned(
                  top: 20,
                  left: 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 280,
                        // color: Colors.white,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 4.0),
                                blurRadius: 5.0,
                              ),
                            ],
                            color: Colors.white),
                      ),
                      Container(
                        // alignment: Alignment.centerRight,
                        margin: const EdgeInsets.only(left: 10),

                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),

                        child: ClipOval(
                            child: Image.asset(
                          'assets/images/img2.jpeg',
                          fit: BoxFit.cover,
                        )),
                        // color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.qr_code_scanner),
                  Icon(Icons.contact_page_outlined),
                  Icon(Icons.mobile_screen_share),
                  Icon(Icons.home),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
