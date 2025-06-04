// Exercise 01
class Person {
  // properties - шинж чанар
  String name;
  int age;

  // constructor
  Person(this.name, this.age);

  // class functions
  void introduce() {
    print("Hi. I'm $name. I'm $age years old. "); // string interpolation
  }
}

// Exercise 02
class Rectangle {
  double width;
  double height;

  // Constructor
  Rectangle(this.width, this.height);

  double getArea() {
    return width * height;
  }

  double getPerimeter() {
    return 2 * (width + height);
  }
}

// Exercise 03
class BankAccount {
  String accountHolder;
  double balance = 0.0;

  // constructor
  BankAccount(this.accountHolder);

  void deposit(amount) {
    balance = balance + amount;
  }

  void withdraw(amount) {
    balance = balance - amount;
  }

  double getBalance() {
    return balance;
  }
}

// Exercise 04
class Car {
  String brand;
  String model;
  int year;
  bool isRunning = false;
  // constructor
  Car(this.brand, this.model, this.year);

  void start() {
    isRunning = true;
  }

  void stop() {
    isRunning = false;
  }

  String getInfo() {
    return "My car is $brand, $model and $year years old, it is running: $isRunning ";
  }
}

void main() {
  // Exercise 01
  Person aldar = Person('Aldar', 13);
  aldar.introduce();

  // Exercise 02
  Rectangle rectangle1 = Rectangle(15, 30);
  print('The Area of Rectangle is: ${rectangle1.getArea()}');
  print('The Perimeter of Rectangle is:  ${rectangle1.getPerimeter()}');

  // Exercise 03
  BankAccount badamAccount = BankAccount("Badam");
  print(badamAccount.getBalance()); // 0.0

  badamAccount.deposit(1_000_000_000);
  print(badamAccount.getBalance()); // 1.000.000.000

  // buy house
  badamAccount.withdraw(300_000_000);
  print(badamAccount.getBalance()); // 700.000.000

  // Exercise 04
  Car lamborghini = Car("Lamborghini", "Temeriaroi", 2025);
  print(lamborghini.getInfo());
  lamborghini.start();
  print(lamborghini.getInfo());
  lamborghini.stop();
  print(lamborghini.getInfo());
}
