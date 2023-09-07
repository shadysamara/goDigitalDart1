import 'enums.dart';

class Employee {
  String? name;
  int? salary;
  Level? level;
  // unNamed constructor

  Employee(this.name, {required this.salary, required this.level});
  Employee.justName(this.name);
  Employee.fromMap(Map map) {
    name = map["name"];
    salary = map["salary"];
    level = map["level"];
  }
}
