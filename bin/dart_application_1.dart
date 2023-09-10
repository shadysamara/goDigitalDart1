import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;
import 'assignment/assignemnt_solution.dart';
import 'assignment/assignemt_data.dart';
import 'data.dart';
import 'ex2/semsters_Data.dart';
import 'ex2/student_semsters.dart';
import 'oop_concepts/oop_exc_solution.dart';
import 'oop_concepts/oop_lecture.dart';

enum Certification { diploma, ba, high }

enum Currency { usd, jd }

void main(List<String> arguments) {
  /*
  String calculateDegree(num avg) {
    if (avg >= 90) {
      return "Excellent";
    } else if (avg >= 80) {
      return "vgood";
    } else if (avg >= 70) {
      return "good";
    } else {
      return "failed";
    }
  }

  String name = '';
  int x = 9;
  double y = 9.6;
  num z = 9.7;
  bool isMale = true;
  dynamic dummy = 8;
  dummy = true;
  dummy = "omar";
  var dummy2 = 8;

  List names = ["ahmed", "omar", "hassan"];
  Map<String, dynamic> map = {"name": "omar", "age": 12, "isMale": true};

  /*
- define list of students
- represent each student as map which contains the following atts:
  - name
  - gender
  - grades (arabic, english, math)
  - degree as enum (diploma, ba, high)

- if the degree is high then print (excellent or vgood, good, failed)
print the name of each student with the average of his grades
  */
  Map st1 = {
    "name": "omar",
    "isMale": true,
    "degree": Certification.high,
    "grades": {"arabic": 99, "english": 98, "math": 97}
  };
  Map st2 = {
    "name": "ali",
    "gender": "male",
    "degree": Certification.ba,
    "grades": {"arabic": 78, "english": 89, "math": 90}
  };
  Map<String, dynamic> st3 = {
    "name": "soad",
    "degree": Certification.diploma,
    "gender": "Female",
    "grades": {"arabic": 88, "english": 65, "math": 78}
  };
  List<Map> students = [st1, st2, st3];
  students.forEach((element) {
    String name = element["name"];
    Map<String, int> grades = (element["grades"]);
    List<int> numbers = grades.values.toList();
    num avg =
        numbers.fold(0, (previousValue, element) => previousValue + element) /
            numbers.length;
    Certification certification = element["degree"];
    if (certification == Certification.high) {
      // print("$name : ${calculateDegree(avg)}");
    } else {
      // print("$name : $avg");
    }
  });
  /////////////////////////
  /*
- define new function called currencyConverter which recives this parameters:
 - amount as integer
 - currency as enum (usd,jd) , optional ,  default is usd
 - return value will be the amount in nis
  */
  double currencyConverter(int amount, [Currency currency = Currency.usd]) {
    if (currency == Currency.usd) {
      return amount * 3.5;
    } else {
      return amount * 5.2;
    }
  }

///////////////////////////////////////
  List<String> namesList = ["omar", "hassan", "ali", "emad"];
  // using map function crete new list which has elements as tha follows
  // omar => Omar
  List<String> capetilizedNames =
      namesList.map((e) => e[0].toUpperCase() + e.substring(1)).toList();
  print(capetilizedNames);

// write the suitabke code to calcuate the count of letters in each name
// and save the result in new list
  List<int> namesCount = [];
  namesList.forEach((element) {
    namesCount.add(element.length);
  });
  namesCount = namesList.map((e) => e.length).toList();*/
  // ! ? ??
  UnuversityStudent student = UnuversityStudent(
      "omar",
      StudentLevel.un,
      [
        Course(name: "arabic", hours: 3, grade: 99),
        Course(name: "math", hours: 2, grade: 88),
        Course(name: "english", hours: 4, grade: 98)
      ],
      1);
  SchoolStudent student2 = SchoolStudent(
      "omar",
      StudentLevel.un,
      [
        Course(name: "arabic", hours: 3, grade: 99),
        Course(name: "math", hours: 2, grade: 88),
        Course(name: "english", hours: 4, grade: 98)
      ],
      1);
  print(student.calculateGpa());
  print(student2.calculateGpa());
}

/*
- create class called student which has the following attributes:
1- name as string?
2- id as integer?
3- level as enum (university,school)
4- list<course> each course has (name, grade, hours)
5- function called calculateGpa as abstract

- create two other classes called  unuversityStudent and 
schoolStudents which extends from Student
- override the calculateGpa function and write the implemntation
based on the class

*/
