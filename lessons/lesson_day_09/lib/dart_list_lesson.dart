void main() {
  // Dart list

  // Problem? variable - хувьсагч
  int a = 1; // бүхэл тоо
  double b = 2.0; // бутархай тоо
  String c = "hello"; // text төрөл string
  bool d = true; // үнэн худал буюу boolean төрөл
  // 1-ээс 100 хүртэлх тоог хадгалъя

  // solution - list
  List<int> numbers = [1, 2, 3, 4, 5, 10, -10]; // square bracket
  print(numbers); // round bracket
  // boolean төрөлтэй 5 ширхэг boolean утга агуулсан лист үүсгэнэ үү
  List<bool> booleans = [true, false, true, false, false];
  print(booleans);
  // String төрөлтэй 3 ширхэг утга агуулсан лист үүсгэнэ үү
  List<String> dessert = ['cookies', 'cupcakes', 'donuts', 'pie'];
  print(dessert);
  // double төрөлтэй 3 ширхэг утга агуулсан лист үүсгэнэ үү
  List<double> doubleNumbers = [3.45, 9.87, 1.74];
  print(doubleNumbers);
  // бүгдийг нь хэвлэж харуулна уу

  // get element by index
  // [0, 1, 2, 3] - (n - 1)
  print(dessert[1]);
  // бүх dessert-ийн элементийг хэвлэх
  print(dessert[0]);
  print(dessert[2]);
  print(dessert[3]);
  // doubleNumbers-ийн 3-р утгыг хэвлэх
  print(doubleNumbers[2]); // i
  // print(doubleNumbers[3]); // index out of bound буюу container

  // add element at the end of the list
  dessert.add('cheese cake');
  dessert.add('vanilla cake');
  print(dessert);

  // icecream inbetween donuts and pie
  dessert.insert(3, 'icecream');
  print(dessert);

  // add many desserts
  List<String> candies = ['Zuckerwurfel', 'Bonbon', 'Kinderriegel'];
  dessert.addAll(candies);
  print(dessert);

  candies.addAll(['Chocopie', 'Chupa Chups']);
  print(candies);

  // favorite movies
  List<String> chimedoFavoriteMovies = ['Goblin', 'First Love', 'Kingdom'];
  print(chimedoFavoriteMovies);
  // add least favorite movie
  chimedoFavoriteMovies.add('Doctor Strange');
  print(chimedoFavoriteMovies);
  chimedoFavoriteMovies[3] = 'Mandarin';
  print(chimedoFavoriteMovies);

  /// delete element from list
  List<double> removeList = [1.27, 8.6, 8.5];
  print(removeList);
  removeList.remove(1.27); // утгаар нь устгах
  print(removeList);

  removeList.removeAt(0); // index-ээр нь устгах
  print(removeList);

  removeList.removeLast(); // хамгийн сүүлчийн элемент устгах
  print(removeList);

  List<double> emptyString = []; // empty string list

  List<int> oddNumbers = [1, 3, 5, 6, 7, 8, 10];

  double average = 0.0;
  int sum = 0;
  for (int i = 0; i < oddNumbers.length; i++) {
    sum = sum + oddNumbers[i];
  }
  print(sum);
  average = sum / oddNumbers.length;
  print(average);

  // Student badam = Student('Badam');
  // badam.addGrade(5);
  // badam.addGrade(15);
  // badam.addGrade(25);

  // print(badam.getAverage());
}
