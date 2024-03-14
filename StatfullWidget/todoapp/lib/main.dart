
import 'package:flutter/material.dart';
import 'package:todoapp/db_service.dart';
// import 'package:todoapp/splash.dart';
import 'package:todoapp/todo_model.dart';
import 'package:todoapp/todopage.dart';

//============================ Global List ==============================
List<ToDoModelClass> taskList = [];

//============================ Main Function ============================
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseService.createDataBase();
  print('database created');
  taskList = await DatabaseService.getTask();
  print(await taskList);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ToDoPage() ,
    );
  }
}