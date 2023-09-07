Map companyData = {
  "name": "iug",
  "city": "gaza",
  "manager": {"name": "dr sofian", "level": "Phd", "age": 50, "isMale": true}
};

/*
- define class called company
- the class has two constructors
- on of the constructors will recieve map and fill the 
attributes from this map
- create object from this class and print the student name
*/
class Company {
  String? name;
  String? city;
  Manager? manager;
  Company({this.city, this.manager, this.name});
  Company.fromMap(Map map) {
    name = map["name"];
    city = map["city"];
    Map data = map["manager"];
    manager = Manager.fromMap(data);
  }
}

class Manager {
  String? name;
  String? level;
  int? age;
  bool? isMale;

  Manager.fromMap(Map map) {
    name = map['name'];
    level = map["level"];
    age = map["age"];
    isMale = map["isMale"];
  }
}
