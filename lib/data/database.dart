import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  
  List toDoList = [];
  // ref box 
  final _myBox = Hive.box('mybox');
// first time ever open app
void createInitialData(){
  toDoList = [
    ["OutfitCheck", false],
    ["Morning Text", false],
  ];
}

// load data from db 
void loadData(){
  toDoList = _myBox.get("TODOLIST");
}

// update the db 

void updateDataBase(){
  _myBox.put("TODOLIST", toDoList);
}

}