abstract class IugEmployee {
  String? name;
  int? id;
  double? salary;
  bool? isMarried;
  int? nofSons;
  IugEmployee({
    required this.name,
    this.id,
    this.salary,
    this.isMarried,
    this.nofSons,
  });
  calculateSalary();
}

class IugManager extends IugEmployee {
  int? educationLevel;
  IugManager(String name) : super(name: name);
  @override
  calculateSalary() {
    super.salary = 500 +
        (!(super.isMarried ?? false) ? 0 : (20 + (super.nofSons ?? 0) * 10));
  }
}

class IugSecurity extends IugEmployee {
  IugSecurity(String name) : super(name: name);
  int? gateId;
  @override
  calculateSalary() {
    super.salary = 200 +
        (!(super.isMarried ?? false) ? 0 : (20 + (super.nofSons ?? 0) * 10));
  }
}
/*
create class called student which has the following attrbutes:
- name ,  List<Subject> subjects


*/