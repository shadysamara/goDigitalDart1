enum StudentLevel { un, sc }

abstract class Student {
  String? name;
  int? id;
  StudentLevel? level;
  List<Course>? courses;
  Student(this.name, this.level, this.courses, this.id);
  double? calculateGpa();
}

class Course {
  String? name;
  int? hours;
  double? grade;
  Course({
    this.name,
    this.hours,
    this.grade,
  });
}

class UnuversityStudent extends Student {
  UnuversityStudent(super.name, super.level, super.courses, super.id);
  @override
  double? calculateGpa() {
    double sum = 0;
    int hoursTotal = 0;
    courses?.forEach((element) {
      sum += (element.grade ?? 0) * (element.hours ?? 1);
      hoursTotal += (element.hours ?? 1);
    });
    return sum / hoursTotal;
  }
}

class SchoolStudent extends Student {
  SchoolStudent(super.name, super.level, super.courses, super.id);

  @override
  double? calculateGpa() {
    // TODO: implement calculateGpa
    double sum = 0;
    int hoursTotal = 0;
    courses?.forEach((element) {
      sum += (element.grade ?? 0);
      hoursTotal += (element.hours ?? 1);
    });
    return sum / courses!.length;
  }
}

class TestClass {
  String? name;
  int? id;
  fun1() {
    print("fun1");
  }

  fun2() {
    print("fun1");
  }

  fun3() {
    print("fun1");
  }
}

class TestClass2 {
  String? city;
}

class TestClass3 with TestClass, TestClass2 {}
