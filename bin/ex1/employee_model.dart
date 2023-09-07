class EmployeeModel {
  int? id;
  int? age;
  String? name;
  Company? company;
  List<String>? family;
  EmployeeModel.fromMap(Map map) {
    id = map["id"];
    age = map["age"];
    name = map["name"];
    Map data = map["company"];
    company = Company.fromMap(data);
    family = map["family"];
  }
}

class Company {
  String? name;
  String? city;
  Company.fromMap(Map map) {
    name = map["name"];
    city = map["city"];
  }
}
