// import 'package:flutter/material.dart';

// class Lifecyle extends StatefulWidget {
//   const Lifecyle({super.key});

//   set flag(bool flag) {}

//   @override
//   State<Lifecyle> createState() {
//     print("In CreateState");
//     return _LifecyleState();
//   }
// }

// class _LifecyleState extends State<Lifecyle> {
//   int no = 0;
//   bool dlag = true;
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
//     return dlag
//         ? Scaffold(
//             appBar: AppBar(
//               title: const Text("Lifecycle"),
//             ),
//             body: Center(
//               child: Text("$no"),
//             ),
//             floatingActionButton: FloatingActionButton(
//               onPressed: () {
//                 setState(() {
//                   dlag = false;

//                   no++;
//                 });
//               },
//               child: const Icon(Icons.add),
//             ),
//           )
//         : Scaffold(
//             backgroundColor: Colors.amber,
//             appBar: AppBar(
//               title: const Text("Lifecycle"),
//             ),
//             body: Center(
//               child: Text("$no"),
//             ),
//             floatingActionButton: FloatingActionButton(
//               onPressed: () {
//                 setState(() {
//                   no++;
//                 });
//               },
//               child: const Icon(Icons.add),
//             ),
//           );
//   }
// }

// import 'package:flutter/material.dart';

// class Lifecycle extends StatefulWidget {
//   const Lifecycle({Key? key}) : super(key: key);

//   @override
//   State<Lifecycle> createState() {
//     print("In createState");
//     return _LifecycleState();
//   }
// }

// class _LifecycleState extends State<Lifecycle> {
//   int no = 0;
//   bool flag = true;

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
//   void deactivate() {
//     super.deactivate();
//     print("In deactivate");
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     print("In dispose");
//   }

//   void _incrementCounter() {
//     setState(() {
//       no++;
//     });
//     print("In setState");
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("In build");
//     return flag
//         ? Scaffold(
//             appBar: AppBar(
//               title: const Text("Lifecycle"),
//             ),
//             body: Center(
//               child: Text("$no"),
//             ),
//             floatingActionButton: FloatingActionButton(
//               onPressed: () {
//                 setState(() {
//                   flag = !flag;
//                 });
//                 _incrementCounter();
//               },
//               child: const Icon(Icons.add),
//             ),
//           )
//         : Scaffold(
//             appBar: AppBar(
//               title: const Text("Lifecycle1"),
//             ),
//             body: Center(
//               child: Text("$no"),
//             ),
//             floatingActionButton: FloatingActionButton(
//               onPressed: () {
//                 setState(() {
//                   flag = !flag;
//                 });
//                 _incrementCounter();
//               },
//               child: const Icon(Icons.add),
//             ),
//           );
//   }
// }
