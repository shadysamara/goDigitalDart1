enum AcademicLevel { ba, master, phd }

abstract class Employee {
  String? name;
  int? id;
  num? salary;
  Employee({
    required this.name,
    required this.id,
    required this.salary,
  });
  // abstract function
  double? calculateSalary();
}

class AcademicEmployee extends Employee {
  AcademicEmployee(String name, int id, double salary)
      : super(id: id, name: name, salary: salary);

  int? nofHours;
  AcademicLevel? level;
  @override
  double? calculateSalary() {
    // TODO: implement calculateSalary
    int hourPrice = level == AcademicLevel.ba
        ? 10
        : level == AcademicLevel.master
            ? 15
            : 20;
    salary = hourPrice * (nofHours ?? 0);
    return salary!.toDouble();
  }
}

class ManagmentEmployee extends Employee {
  double? initSalary;
  bool? isMarried;
  int? nofSons;
  ManagmentEmployee(
      {super.name, super.id, super.salary, required this.initSalary});

  @override
  double? calculateSalary() {
    // TODO: implement calculateSalary
    salary =
        initSalary ?? 200 + ((isMarried ?? false) ? ((nofSons ?? 0) * 10) : 0);
    return salary!.toDouble();
  }
}
