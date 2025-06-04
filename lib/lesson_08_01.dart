// Problem - Human гэдэг зүйлийг яаж илэрхийлэх вэ?
// class - blue print

class Person {
  // properties - шинж чанар
  String name;
  int age;
  String gender;

  // constructor
  Person(this.name, this.age, this.gender);

  // class functions
  void introduce() {
    print("Hi. I'm $name. I'm $age years old. "); // string interpolation
  }

  //1. gettingOld гэдэг функц бичээд өөрийнхөө насыг нэгээр нэмээд буцаадаг функц
  // бичнэ үү
  int gettingOld() {
    return age++;
  }

  // 2. hasBaby гэдэг функц бичээд хэрвээ хүүхэдтэй бол true, бусад үед false
  // буцаадаг функц бичнэ үү
  bool hasBaby() {
    return false;
  }
}

double returnOne() {
  return 2.5;
}

void printOne() {
  print(1);
}

void main() {
  int feetNumber = 2;

  String khangaiName = "Khangaikhu";
  String khangaiMajor = "Computer Science";
  String badamName = "Badam";
  String badamMajor = "Translator";

  print(khangaiName);
  print(khangaiMajor);
  print(badamName);
  print(badamMajor);

  // Creating object from class person
  Person badam = Person("Badam", 27, "female"); // badam гэдэг хүнийг үүсгэх
  print(badam);

  // 3 төрлийн хүн үүсгэнэ үү
  print(badam.name); // dot notation
  print(badam.age);
  print(badam.gender);
  badam.introduce();
  print(badam.gettingOld()); // ?
  badam.hasBaby(); // ?
}
