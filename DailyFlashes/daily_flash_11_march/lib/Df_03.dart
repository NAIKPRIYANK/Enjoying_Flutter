import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Df03 extends StatefulWidget {
  const Df03({super.key});

  @override
  State<Df03> createState() => _Df03State();
}

class _Df03State extends State<Df03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Flash"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              height: 200,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(left: 30, right: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Image.asset("assets/images/core2web.png"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      )
                    ],
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: const Icon(
                        Icons.check,
                        size: 30,
                      ))
                ],
              ),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(left: 30, right: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Image.asset("assets/images/core2web.png"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      )
                    ],
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: const Icon(
                        Icons.check,
                        size: 30,
                      ))
                ],
              ),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(left: 30, right: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Image.asset("assets/images/core2web.png"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      )
                    ],
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: const Icon(
                        Icons.check,
                        size: 30,
                      ))
                ],
              ),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(left: 30, right: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Image.asset("assets/images/core2web.png"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      )
                    ],
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: const Icon(
                        Icons.check,
                        size: 30,
                      ))
                ],
              ),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(left: 30, right: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Image.asset("assets/images/core2web.png"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      )
                    ],
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: const Icon(
                        Icons.check,
                        size: 30,
                      ))
                ],
              ),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(left: 30, right: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Image.asset("assets/images/core2web.png"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      )
                    ],
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: const Icon(
                        Icons.check,
                        size: 30,
                      ))
                ],
              ),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(left: 30, right: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Image.asset("assets/images/core2web.png"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      )
                    ],
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: const Icon(
                        Icons.check,
                        size: 30,
                      ))
                ],
              ),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(left: 30, right: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Image.asset("assets/images/core2web.png"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      )
                    ],
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: const Icon(
                        Icons.check,
                        size: 30,
                      ))
                ],
              ),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(left: 30, right: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Image.asset("assets/images/core2web.png"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      )
                    ],
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: const Icon(
                        Icons.check,
                        size: 30,
                      ))
                ],
              ),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(left: 30, right: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Image.asset("assets/images/core2web.png"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      )
                    ],
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: const Icon(
                        Icons.check,
                        size: 30,
                      ))
                ],
              ),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(left: 30, right: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Image.asset("assets/images/core2web.png"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      )
                    ],
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: const Icon(
                        Icons.check,
                        size: 30,
                      ))
                ],
              ),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(left: 30, right: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Image.asset("assets/images/core2web.png"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: const Text("Core2Web"),
                      )
                    ],
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: const Icon(
                        Icons.check,
                        size: 30,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
