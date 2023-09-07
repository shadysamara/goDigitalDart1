//  String calculateDegree(num avg) {
//     if (avg >= 90) {
//       return "Excellent";
//     } else if (avg >= 80) {
//       return "vgood";
//     } else if (avg >= 70) {
//       return "good";
//     } else {
//       return "failed";
//     }
//   }

//   /*
// define list of map, each map contains information about students 
// (name,gender,arabic grade,english grade, math grade),
// calculate the average of each student
// */
//   List<Map<String, dynamic>> students = [
//     {
//       "name": "omar",
//       "isMale": true,
//       "arabic": 100,
//       "english": 99,
//       "math": 98,
//       "degree": Certification.phd
//     },
//     {
//       "name": "majd",
//       "isMale": true,
//       "arabic": 88,
//       "english": 77,
//       "math": 88,
//       "degree": Certification.master
//     },
//     {
//       "name": "farah",
//       "isMale": false,
//       "arabic": 88,
//       "english": 77,
//       "math": 99,
//       "degree": Certification.ba
//     },
//   ];
//   List<Map<String, dynamic>> studentsWithAverages = [];
//   students.forEach((element) {
//     String name = element["name"];
//     num arabic = element["arabic"];
//     num english = element["english"];
//     num math = element["math"];
//     Certification certification = element["degree"];
//     String tempAvg = ((arabic + english + math) / 3).toStringAsFixed(2);
//     if (certification == Certification.master ||
//         certification == Certification.phd) {
//       studentsWithAverages
//           .add({"name": name, "avg": calculateDegree(double.parse(tempAvg))});
//     } else {
//       studentsWithAverages.add({"name": name, "avg": tempAvg});
//     }
//   });

//   List<Map<String, dynamic>> data = students.map((element) {
//     String name = element["name"];
//     num arabic = element["arabic"];
//     num english = element["english"];
//     num math = element["math"];
//     String avg = ((arabic + english + math) / 3).toStringAsFixed(2);
//     Map<String, dynamic> data = {"name": name, "avg": avg};
//     return data;
//   }).toList();
//   List<String> studentsNames = ["omar", "ali", "hassan"];
//   ["Omar", "Ali", "Hassan"];
//   // convert each name to uppercase
//   // convert each name to count of letters
//   List<String> newNames = studentsNames.map((e) {
//     return e[0].toUpperCase() + e.substring(1);
//   }).toList();
//   ////////////////////
//   ///
// // positional parameters
// // optional => positional, named
//   int sum({int num1 = 0, int num2 = 0}) {
//     return num1 + num2;
//   }

//   print(sum(num2: 5, num1: 10));

//   // define function called currencyConverter
// // the function parameters are:
// // - amount -> integer
// // - currency -> enum (usd,jd) optional , default is usd
// // - return the amount in nis,
//   double currencyConverter(int amount, [Currency currency = Currency.usd]) {
//     if (currency == Currency.usd) {
//       return amount * 3.5;
//     } else {
//       return amount * 5.2;
//     }
//     // return currency==Currency.usd ? amount*3.5 : amount*5.2;
//   }

//   print(currencyConverter(100, Currency.jd));