enum Level { school, university }

class IugStudent {
  String? name;
  List<IugSubject>? subjects;
  Level? level;
  IugStudent({
    this.name,
    this.subjects,
    this.level,
  });
}

class UniversityStudent extends IugStudent {
  UniversityStudent(String name, List<IugSubject> subjects)
      : super(name: name, level: Level.university, subjects: subjects);
  @override
  double calculateGpa() {
    // TODO: implement calculateGpa
    return subjects!.fold<double>(0, (previousValue, element) {
          return previousValue + element.subjectGrade();
        }) /
        subjects!.fold(0,
            (previousValue, element) => previousValue + (element.hours ?? 0));
  }
}

// subject(hours:3, grade:99)
// subject(hours:2, grade:88)
class SchoolStudent extends IugStudent {
  SchoolStudent(String name, List<IugSubject> subjects)
      : super(name: name, level: Level.school, subjects: subjects);
  @override
  double calculateGpa() {
    // TODO: implement calculateGpa
    return subjects!.fold<double>(0, (previousValue, element) {
          return previousValue + ((element.grade ?? 0));
        }) /
        subjects!.length;
  }
}

class IugSubject {
  String name;
  int hours;
  double grade;
  IugSubject({
    required this.name,
    required this.hours,
    required this.grade,
  });
}

extension subjectExtension on IugSubject {
  num subjectGrade() {
    return this.grade * this.hours;
  }
}

/*
create extendsion on IugStudent to caluclate the averge of the student

*/
extension IugStudentExtension on IugStudent {
  num calculateGpaExtension() {
    if (level == Level.school) {
      return subjects!.fold<num>(
              0, (previousValue, element) => previousValue + element.grade) /
          subjects!.length;
    } else {
      return subjects!.fold<num>(
              0,
              (previousValue, element) =>
                  previousValue + element.subjectGrade()) /
          subjects!.fold<int>(
              0, (previousValue, element) => previousValue + element.hours);
    }
  }
}

class A {
  String? name;
  A();
}

class B {
  int? age;
}

class C extends A with B {}
