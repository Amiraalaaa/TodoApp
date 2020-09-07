class Task {
  String name;
  bool ischosen ;

  Task({this.name , this.ischosen = false});

void chosen(){
  ischosen = !ischosen;
}

}