// Horse гэдэг класс үүсгээд
// өөрсдөө 3 ширхэг property-той болгоорой.
// named parameter-тэй конструктор үүсгээрэй.

class Horse {
  String name;
  String color;
  int age;

  Horse({required this.name, required this.color, required this.age});

  // override дарж бичих -
  @override
  String toString() {
    return 'My horse name is: $name, and has a color : $color. He is $age years old';
  }

  void printInfo() {
    print(
      'My horse name is: $name, and has a color : $color. He is $age years old',
    );
  }
}

void main() {
  Horse unagaldai = Horse(name: 'Unagaldai', color: "White", age: 4);
  print(unagaldai);
  unagaldai.printInfo();
}
