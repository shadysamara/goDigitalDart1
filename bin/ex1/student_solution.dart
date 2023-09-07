import 'dart:html';

class StudentSolution {
  int? id;
  String? name;
  List? family;
  University? university;
  StudentSolution.fromMap(Map map) {
    id = map["id"];
    name = map["fName"] + " " + map["lName"];
    family = map['family'];
    university = University.fromMap(map["unuversity"]);
  }
}

class University {
  String? name;
  String? city;
  Manager? manager;
  University.fromMap(Map map) {
    name = map["name"];
    city = map["city"];
    manager = Manager.fromMap(map["manager"]);
  }
}

class Manager {
  String? name;
  String? level;
  Manager.fromMap(Map map) {
    name = map["name"];
    level = map["level"];
  }
}
