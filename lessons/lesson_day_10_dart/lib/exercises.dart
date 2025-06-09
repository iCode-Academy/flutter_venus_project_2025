import 'dart:math' as Math;
import 'dart:io';

// Exercise 08
class Temperature {
  double celsius;

  Temperature(this.celsius);

  double toFahrenheit() {
    return (celsius * 9 / 5) + 32;
  }

  double fromFahrenheit(double fahrenheit) {
    return (fahrenheit - 32) * 5 / 9;
  }

  void displayBoth() {
    print('Celcius to Fahrenheit : ${toFahrenheit()}');
    print('Fahrenheit to Celsius:  ${fromFahrenheit(10)}');
  }
}

// Exercise 09
class Counter {
  int count = 0;

  void increment() {
    count = count + 1; // count++
  }

  void decrement() {
    count = count - 1; // count--
  }

  void reset() {
    count = 0;
  }

  int getValue() {
    return count;
  }
}

// Exercise 10
class Pet {
  String name;
  String species;
  int age;
  int hungerLevel = 5; // (0 - 10)

  Pet(this.name, this.species, this.age);

  void feed() {
    if (hungerLevel <= 10) {
      hungerLevel = hungerLevel + 1; // hungerLevel++;
    }
  }

  void play() {
    if (hungerLevel > 1) {
      hungerLevel = hungerLevel - 2; // hungerLevel -= 2;
    }
  }

  String getStatus() {
    return 'The $species $name is $age years old. The $name\'s hunger level is $hungerLevel.';
  }
}

void main() {
  // Test Exercise 08
  Temperature testTemperatur = Temperature(20);
  print(testTemperatur.toFahrenheit());
  print(testTemperatur.fromFahrenheit(212));

  Temperature nullDegree = Temperature(0);
  print(nullDegree.toFahrenheit());

  //Test Exercise 09
  Counter simpleCounter = Counter();
  for (int i = 0; i < 10; i++) {
    simpleCounter.increment();
  }
  print(simpleCounter.getValue()); // 10

  // 6-аар багасгаад тоог нь хэд болсныг харуулах
  for (int i = 0; i < 6; i++) {
    simpleCounter.decrement();
  }
  print(simpleCounter.getValue()); // 4
  // reset хийгээд харуулах
  simpleCounter.reset();
  print(simpleCounter.getValue()); // 0

  // Test Exercise 10
  Pet shiro = Pet('Shiro', "dog", 2); // alive animal
  print(shiro.getStatus());
  shiro.play(); // 3
  shiro.play(); // 1
  shiro.play(); // 1
  print(shiro.getStatus());

  shiro.feed();
  shiro.feed();
  shiro.feed();
  shiro.feed();
  shiro.feed();

  print(shiro.getStatus());

  // Math.Random randomSeed = Math.Random();
  // print(randomSeed.nextInt(100));

  // print('Give me number');
  // String? input = stdin.readLineSync();
  // print(input);
}
