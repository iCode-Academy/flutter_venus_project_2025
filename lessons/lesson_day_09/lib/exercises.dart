// exercise 04
class Student {
  String name;
  List<int> grades = [];

  Student(this.name);

  // addGrade(grade)
  // badam.addGrade(50);
  void addGrade(grade) {
    grades.add(grade);
  }

  // calculate average
  double getAverage() {
    double average = 0.0;
    int sum = 0;
    for (int i = 0; i < grades.length; i++) {
      sum = sum + grades[i];
    }
    average = sum / grades.length;
    return average;
  }

  // display info
  void displayInfo() {
    print('Student $name got grade average of ${getAverage()}');
  }

  void printInfo(studentName) {
    print('Student $studentName got grade average of ${getAverage()}');
  }
}

// exercise 06

void main() {
  Student badam = Student('Badam');
  print(badam.name);
  print(badam.grades);
  badam.addGrade(90); // math - 90
  print(badam.grades);
  badam.addGrade(89); // biology - 89
  print(badam.grades);
  badam.addGrade(95); // history  - 95
  print(badam.grades);
  print(badam.getAverage());
  badam.displayInfo();
  badam.printInfo('Chimedo');
}
