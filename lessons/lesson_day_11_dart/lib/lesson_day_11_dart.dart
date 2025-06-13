// rectangle гэдэг класс үүсгээд конструктороороо
// width, height авдаг болгоно уу.
class Rectangle {
  double width;
  double height;

  // Rectangle(this.width, this.height);

  Rectangle({required this.width, required this.height});
}

// class definition convention

// 1. өндөр өргөн уртыг нь named parameter-аар авдаг Cube гэдэг
// нэртэй класс үүсгээд түүний конструкторыг байгуулаарай.
// түүнийгээ тестэлж бичнэ үү
class Cube {
  double height;
  double width;
  double length;
  Cube({required this.height, required this.width, required this.length});
}

// 2. Shape гэдэг нэртэй класс үүсгээд түүндээ name, width
// гэдэг property-нуудтай болгоод түүнийгээ named parameter авдаг
// болгоорой.
class Shape {
  String name;
  double width;
  Shape({required this.name, required this.width});
}

void main() {
  print('lesson day 11');
  Rectangle rect = Rectangle(width: 10, height: 20);
  // named parameter
  // rect2 width = 20, height = 10
  Cube cube = Cube(height: 20, width: 30, length: 40);

  Shape shape = Shape(name: "Gurvaljin", width: 10);
}
