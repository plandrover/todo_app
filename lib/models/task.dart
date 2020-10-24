//will descie how everytask will be.

class Task {

final String name;
bool isDone;

//init at false as will alwasys start undone. 
Task({this.name, this.isDone = false});

//looks at isDone property and sets it to the opposite. 
void toggleDone(){
  isDone = !isDone;
}

}








