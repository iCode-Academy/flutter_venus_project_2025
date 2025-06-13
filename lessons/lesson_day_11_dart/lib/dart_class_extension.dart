// Parent гэдэг класс үүсгээд
// түүнийгээ нэр нас хүйс авдаг болгоод
// named parameter-тай конструктортой болгоорой
class Parent {
  String name;
  int age;
  String gender;

  Parent({required this.name, required this.age, required this.gender});

  // toString функцыг ашиглан миний нэрийг тэр гэдэг тэдэн настай хүйсээ хэлдэг
  // болгоно уу
  @override
  String toString() {
    return "My name is $name, and I'm $age years old. I'm a $gender";
  }
}

class Child extends Parent {
  Child({required super.name, required super.age, required super.gender});
}

// Shape гэдэг класс үүсгээрэй. Энэхүү класс нь урт өргөн заавал авдаг байна.
// Одоо Rectangle, Cube гэдэг класс үүсгээрэй. Түүнийгээ
// Shape классаас уламжилж буюу extends хийдэг болгоорой. Дараа нь
// Shape классын toString функц дээр Дүрсийн урт нь тэд өргөн нь тэд гэж
// хэвлэдэг болгоорой.
// Rectangle, Cube классуудыг main функц дотор тестлээрэй.
class Shape {
  double width;
  double length;
  Shape({required this.length, required this.width});

  @override
  String toString() {
    return "Дүрсийн урт нь : $length, өргөн нь: $width";
  }

  // calculateArea гэдэг функц тодорхойлоод rectangle-ийн талбайг боддог болгоно уу
  // үүндээ урт өргөнөө ашиглана уу
  void calculateArea() {
    print("Дүрсийн талбай нь: ${length * width}");
  }
}

class Rectangle extends Shape {
  Rectangle({required super.length, required super.width});

  void printLength() {
    print('Rectangle has $length');
  }
}

class Cube extends Shape {
  double height;
  Cube({required super.length, required super.width, required this.height});

  @override
  String toString() {
    return "Энэ cube дүрсийн урт нь : $length, өргөн нь: $width, өндөр нь: $height";
  }

  double calculatePerimeter() {
    return 12 * length;
  }

  // calculateArea гэдэг функцээ override хийж түүнийг талбайг олдог болгоорой.
  @override
  void calculateArea() {
    print('Кубийн талбай нь: ${height * width * length} ');
  }
}

void main() {
  // 2 эцэг эх үүсгэнэ үү.
  Parent father = Parent(name: "Father", age: 25, gender: "male");
  print(father);
  // 2 хүүхэд үүсгэнэ үү тэгээд оbject-оо хэвлэнэ үү
  // Child huu = Child(name: name, age: age, gender: gender)
  Child boy = Child(name: "Boy", age: 5, gender: "male");
  print(boy);

  //
  Rectangle rectangle = Rectangle(length: 35, width: 30);
  print(rectangle);
  rectangle.calculateArea();
  rectangle.printLength();

  Cube cube = Cube(length: 25, width: 30, height: 20);
  print(cube);
  cube.calculateArea();
  cube.calculatePerimeter();
}
