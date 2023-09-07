class StudentModel {
  int? id;
  String? name;
  List<SemesterModel>? semsmters;

  StudentModel(Map map) {
    id = map["id"];
    name = map["name"];
    Map sememstersData = map["Semesters"];
    // looping on Semesters map
    List<SemesterModel> tmpList = [];
    sememstersData.forEach((key, value) {
      tmpList.add(SemesterModel(key, value));
    });
  }
}

class SemesterModel {
  String? semesterName;
  List<SubjectModel>? subjects;
  SemesterModel(String name, List<Map> data) {
    semesterName = name;
    subjects = data.map((e) => SubjectModel(e)).toList();
  }
}

class SubjectModel {
  String? name;
  int? hours;
  int? grade;
  SubjectModel(Map map) {
    name = map["name"];
    hours = map["hours"];
    grade = map["grade"];
  }
}
