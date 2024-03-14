// import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

// dynamic database;

// class Player {
//   final String name;
//   final int jerNo;
//   final int runs;
//   final double avg;

//   Player(
//       {required this.name,
//       required this.jerNo,
//       required this.avg,
//       required this.runs});

//   Map<String, dynamic> playerMap() {
//     return {'name': name, 'jerNo': jerNo, 'runs': runs, 'avg': avg};
//   }

//   @override
//   String toString() {
//     return '{name:$name,jerNo:$jerNo,run:$runs,avg:$avg}';
//   }
// }

// Future insertPlayerData(Player obj) async {
//   final localDB = await database;

//   await localDB.insert("player", obj.playerMap(),
//       conflictAlgorithm: ConflictAlgorithm.replace);
// }

// Future<List<Player>> getPlayerData() async {
//   final localDB = await database;
//   List<Map<String, dynamic>> listPlaer = await localDB.query("Player");
//   return List.generate(listPlaer.length, (index) {
//     return Player(
//         name: listPlaer[index]['name'],
//         jerNo: listPlaer[index]['jerNo'],
//         runs: listPlaer[index]['runs'],
//         avg: listPlaer[index]['avg']);
//   });
// }

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   database = openDatabase(join(await getDatabasesPath(), "PlayerDB.db"),
//       version: 1, onCreate: (db, version) async {
//     await db.execute('''CREATE TABLE Player(

//             name TEXT,
//             jerNo INTEGER PRIMARY KEY,
//             runs INT,
//             avg REAL
//           )''');
//   });

//   Player batsman2 =
//       Player(name: "Rohit Sharma", jerNo: 45, avg: 48.33, runs: 40000);
//   await insertPlayerData(batsman2);

//   Player bowler = Player(name: "M Shami", jerNo: 18, avg: 12, runs: 5000);
//   await insertPlayerData(bowler);

//   Player bowler1 = Player(name: "Raina", jerNo: 18, avg: 50, runs: 50000);
//   await insertPlayerData(bowler1);
//    Player batsman1 = Player(name: "Virat", jerNo: 18, avg: 50.33, runs: 50000);
//   await insertPlayerData(batsman1);

//   print(await getPlayerData());
// }

// import 'package:flutter/widgets.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';

// dynamic database;

// class Player {
//   final String name;
//   final int jerNo;
//   final int runs;
//   final double avg;

//   Player(
//       {required this.name,
//       required this.jerNo,
//       required this.avg,
//       required this.runs});

//   Map<String, dynamic> playerMap() {
//     return {'name': name, 'jerNo': jerNo, 'runs': runs, 'avg': avg};
//   }

//   @override
//   String toString() {
//     return '{name:$name,jerNo:$jerNo,run:$runs,avg:$avg}';
//   }
// }

// Future insertPlayerData(Player obj) async {
//   final localDB = await database;

//   await localDB.insert("player", obj.playerMap(),
//       conflictAlgorithm: ConflictAlgorithm.replace);
// }
// Future<List<Player>> getPlayerData() async {
// // Future<List<Map<String, dynamic>>> getPlayerData() async {
//   final localDB = await database;
//   List<Map<String, dynamic>> listPlayer = await localDB.query("Player");
//   // return listPlayer;
//   return List.generate(listPlayer.length, (index) {
//     return Player(
//         name: listPlayer[index]['name'],
//         jerNo: listPlayer[index]['jerNo'],
//         runs: listPlayer[index]['runs'],
//         avg: listPlayer[index]['avg']);
//   });
// }

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   database = openDatabase(join(await getDatabasesPath(), "PlayerDB.db"),
//       version: 1, onCreate: (db, version) async {
//     await db.execute('''CREATE TABLE Player(

//             name TEXT,
//             jerNo INTEGER PRIMARY KEY,
//             runs INT,
//             avg REAL
//           )''');
//   });

//   Player batsman2 =
//       Player(name: "Rohit Sharma", jerNo: 45, avg: 48.33, runs: 40000);
//   await insertPlayerData(batsman2);

//   Player bowler = Player(name: "M Shami", jerNo: 18, avg: 12, runs: 5000);
//   await insertPlayerData(bowler);

//   Player bowler1 = Player(name: "Raina", jerNo: 18, avg: 50, runs: 50000);
//   await insertPlayerData(bowler1);
//   Player batsman1 = Player(name: "Virat", jerNo: 18, avg: 50.33, runs: 50000);
//   await insertPlayerData(batsman1);

//   print(await getPlayerData());
//   // Future<List> playerList = getPlayerData();

//   // for (final list in await playerList) {
//   //   print(list);
//   // }
// }

late Database database;

class Employee {
  final String empName;
  final int empId;
  final double empSal;
  final String role;
  Employee(
      {required this.empName,
      required this.empId,
      required this.empSal,
      required this.role});

  Map<String, dynamic> dataOfPlayer() {
    return {'empName': empName, 'empId': empId, 'empSal': empSal, 'role': role};
  }
  @override
  String toString() {
    return '{empName:$empName,empId:$empId,empSal:$empSal,role:$role}';
  }
}

Future inserDataInDatabase(Employee obj) async {
  // await database;
  await database.insert("Employee", obj.dataOfPlayer(),
      conflictAlgorithm: ConflictAlgorithm.replace);
}

Future getDataFromDataBase() async {
  // await database;
  List<Map<String, dynamic>> employeeList = await database.query("Employee");
  return List.generate(employeeList.length, (i) {
    return Employee(
        empName: employeeList[i]['empName'],
        empId: employeeList[i]['empId'],
        empSal: employeeList[i]['empSal'],
        role: employeeList[i]['role']);
  });
}

Future upadateDatabase(Employee obj) async {
  


  await database.update("Employee", obj.dataOfPlayer(),
      where: 'empId=?', whereArgs: [obj.empId]);
}

Future deleteData(int index) async {
  // final db = await database;
  await database.delete("Employee", where: 'empId=?', whereArgs: [index]);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = await openDatabase(
    join(await getDatabasesPath(), "employeeDb.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute(''' CREATE TABLE Employee(
        empName TEXT,
        empId INTEGER PRIMARY KEY,
        empSal REAL ,
        role TEXT
      )
      ''');
    },
  );
  Employee emp1 = Employee(
      empName: "Priyank", empId: 1, empSal: 2.2, role: "Flutter Developer");

  inserDataInDatabase(emp1);
  Employee emp2 = Employee(
      empName: "Abhishek", empId: 2, empSal: 2.3, role: "Java Developer");

  inserDataInDatabase(emp2);
  // Employee emp3 =
  //     Employee(empName: "Vicky", empId: 3, empSal: 2.2, role: "R&A Developer");

  // inserDataInDatabase(emp3);
  // Employee emp4 = Employee(
  //     empName: "Prathmesh",
  //     empId: 4,
  //     empSal: 2.3,
  //     role: "Full stack Developer");

  // inserDataInDatabase(emp4);

  // emp4 = Employee(
  //     empName: emp4.empName,
  //     empId: emp4.empId,
  //     empSal: emp4.empSal + 2.3,
  //     role: emp4.role);
  // await upadateDatabase(emp4);

  // await deleteData(emp3.empId);
  print(await getDataFromDataBase());
}
