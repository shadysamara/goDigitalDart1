class Student {
  int? id;
  String? name;
  List<Semester>? semesters;
  Student(Map map) {
    id = map["id"];
    name = map["name"];
    Map semstersMap = map["semesters"];
    semstersMap.forEach((key, value) {
      semesters?.add(Semester(key, value));
    });
  }
}

class Semester {
  String? name;
  List<Subject>? subjects;
  Semester(String name, List<Map> subjectsList) {
    this.name = name;
    subjects = subjectsList.map((e) => Subject(e)).toList();
  }
}

class Subject {
  String? name;
  int? hours;
  int? grade;
  Subject(Map map) {
    name = map["name"];
    hours = map['hours'];
    grade = map['grade'];
  }
}
