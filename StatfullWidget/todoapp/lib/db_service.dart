
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:todoapp/todo_model.dart';

class DatabaseService {

  static dynamic database;

  static createDataBase() async{
    database = openDatabase(
      join(await getDatabasesPath(), "TaskDB.db"),
      version: 1,
      onCreate:(db, version) {
        db.execute('''CREATE TABLE TASK(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, description TEXT, date TEXT)''');
      },
    );
  }


  //============================ Insert Function ============================
  static Future insertTask(ToDoModelClass todoModelObj) async{
    final localDB = await database;

    await localDB.insert(
      "TASK",
      todoModelObj.todoMap(),
      conflictAlogorithm:ConflictAlgorithm.replace
    );
  }


  //============================ Fetch Function ============================
  static Future getTask() async{
    final localDB = await database;

    List<Map<String, dynamic>> queryList = await localDB.query("TASK");

    return List.generate(queryList.length, (index) {
      return ToDoModelClass(
        title: queryList[index]['title'], 
        description: queryList[index]["description"], 
        date: queryList[index]['date']
      );
    });
  }

}