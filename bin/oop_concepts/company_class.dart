class Company {
  String? fName;
  String? lName;
  Company.twoStrings(String fName, String lName) {
    this.fName = fName;
    this.lName = lName;
  }
  //omar ahmed
  Company.oneString(String name) {
    List<String> words = name.split(' ');
    fName = words[0];
    lName = words[1];
  }
  Company() {}
  factory Company.origin([String? name1, String? name2]) {
    if (name1 == null) {
      return Company();
    } else if (name2 == null) {
      return Company.oneString(name1);
    } else {
      return Company.twoStrings(name1, name2);
    }
  }
}
