 /*Create a to-do list program using a List where each item has a description, due date, and
 completion status (as bool). Implement methods to add, remove, and update tasks, including the
 use of for-each loops*/
void main() {
  Tasks toDoList = Tasks();
  toDoList.toDolist = ['Watching movie', '10:00 am', true];
  print(toDoList.toDolist);
  toDoList.addTask();
  toDoList.removeTask();
  
}

class Tasks {
  List<dynamic>? toDolist;

  void addTask() {
    List<dynamic> addTask = ['sleeping', '1:am', true];
    print(addTask);
  }

  dynamic removeTask() {}

  void updateTaske() {}
}



