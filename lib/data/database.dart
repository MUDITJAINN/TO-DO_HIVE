import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
// rference our box
  final _mybox = Hive.box('mybox');

//run this methord if app is opening for the 1st time
 void createInitialData() {
  //  List toDoList = [
    //  ["Drinkwater", false],
     // ["Do Excersize", false],
     // ["study", true],
    //];
  }

// load data from database
  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

//update the database
  void updateDataBase() {
    _mybox.put("TODOLIST", toDoList);
  }
}