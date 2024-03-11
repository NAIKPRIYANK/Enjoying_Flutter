// import 'package:assignments/Assig1.dart';
// import 'package:assignments/Assign2.dart';
// import 'package:assignments/Assign3.dart';
// import 'package:assignments/Assign4.dart';
// import 'package:assignments/Assign5.dart';
// import 'package:assignments/Assign6.dart';
// import 'package:assignments/Assign7.dart';
import 'package:assignments/Assig1.dart';
import 'package:assignments/Assign10.dart';
import 'package:assignments/Assign11.dart';
import 'package:assignments/Assign2.dart';
import 'package:assignments/Assign3.dart';
import 'package:assignments/Assign4.dart';
import 'package:assignments/Assign5.dart';
import 'package:assignments/Assign6.dart';
import 'package:assignments/Assign7.dart';
import 'package:assignments/Assign8.dart';
import 'package:assignments/Assign9.dart';
import 'package:assignments/Lifecycle.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MainApp());
// }

// class MainApp extends StatelessWidget {
//   MainApp({Key? key}) : super(key: key);
//   bool flag = true;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: flag
//           ? Lifecycle(flag: flag)
//           : lifecycle2(flag: flag), // Pass flag to lifecycle2
//     );
//   }
// }

// class Lifecycle extends StatefulWidget {
//   const Lifecycle({super.key, required bool flag});
  
//   set flag(bool flag) {
//     this.flag = flag;
//   }

//   @override
//   State<Lifecycle> createState() {
//     print("In CreateState");
//     return _LifecyleState();
//   }
// }

// class _LifecyleState extends State<Lifecycle> {


//   @override
//   void initState() {
//     super.initState();
//     print("In initState");
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     print("In didChangeDependencies");
//   }

//   @override
//   void setState(textvalue) {
//     super.setState(() {});
//     print("in setState");
//     // super.setState(() {
//     //   print("in setState");
//     // });
//   }

//   @override
//   void didUpdateWidget(data) {
//     super.didUpdateWidget(data);
//     print("In didUpdatewidget");
//   }

//   @override
//   void deactivate() {
//     super.deactivate();
//     print("In deactivate");
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     print("In despose");
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("In build");
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Lifecycle"),
//       ),
//       body: Center(
//         child: Text("Hello"),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             flag = false;
//           });
//         },
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

// class lifecycle2 extends StatefulWidget {
//   const lifecycle2({super.key, required bool flag});

//   @override
//   State<lifecycle2> createState() => _lifecycle2State();
// }

// class _lifecycle2State extends State<lifecycle2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("demo"),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({Key? key}) : super(key: key);
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: flag ? Lifecycle(flag: flag) : Lifecycle2(flag: flag),
    );
  }
}

class Lifecycle extends StatefulWidget {
  bool flag;
  Lifecycle({Key? key, required this.flag}) : super(key: key);

  @override
  State<Lifecycle> createState() => _LifecycleState();
}

class _LifecycleState extends State<Lifecycle> {

    @override
  void initState() {
    super.initState();
    print("In initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("In didChangeDependencies");
  }

  @override
  void setState(textvalue) {
    super.setState(() {});
    print("in setState");
    // super.setState(() {
    //   print("in setState");
    // });
  }

  @override
  void didUpdateWidget(data) {
    super.didUpdateWidget(data);
    print("In didUpdatewidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("In deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("In despose");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lifecycle"),
      ),
      body: Center(
        child: Text("Flag value: ${widget.flag}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // Changing the flag value when FAB is pressed
            widget.flag = false;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Lifecycle2 extends StatefulWidget {
  final bool flag;
  const Lifecycle2({Key? key, required this.flag}) : super(key: key);

  @override
  State<Lifecycle2> createState() => _Lifecycle2State();
}

class _Lifecycle2State extends State<Lifecycle2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lifecycle 2"),
      ),
      body: Center(
        child: Text("Flag value in Lifecycle 2: ${widget.flag}"),
      ),
    );
  }
}

