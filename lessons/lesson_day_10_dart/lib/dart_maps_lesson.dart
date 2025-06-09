// Dart Map

// Problem -

// Knowledge - List
// Badam - 3 киноны нэртэй list
// double single quotation mark
List<String> movies = ['Huan Jou Gege', 'Gung Fu', 'Shifou'];
// Chimedee - 3 japanese rock band

List<String> japaneseRockBand = ['One ok rock', 'G-Metal', 'Chammina'];

// 3 Universal constant numbers
List<double> universalNumbers = [3.14, 9.78, 2.74];

// Сайнуу | Hi
// Хар | Black
// Машин | Car
List<List<String>> dictionary = [
  ['Сайн уу', 'Hi'],
  ['Хар', 'Black'],
  ['Машин', 'Car'],
];

Map<String, int> emptyMap = {};
Map<String, int> inventory = {
  'cakes': 20,
  'pies': 14,
  'donuts': 37,
  'cookies': 141,
};

void main() {
  print(dictionary[0]);
  print(dictionary[0][1]);
  print(dictionary[1][1]);
  print(dictionary[2][1]);
  print(inventory['cakes']);
  print(inventory);

  // add element to map
  inventory['brownies'] = 10;
  print(inventory);
  inventory['choco cake'] = 30;
  print(inventory);
  // remove element from map
  inventory.remove('choco cake');
  print(inventory);
  // get only keys from map
  print(inventory.keys);
  // get only values from map
  print(inventory.values);
  print(inventory.values.length); // 5

  // give me sum of all inventory element using for loop
  double sum = 0;

  // todo
  for (int i = 0; i < inventory.values.length; i++) {
    sum = sum + inventory.values.toList()[i];
  }
  print(sum);

  // үг байна уу үгүй юу гэдгийг асуух
  print(inventory.containsValue(2));
  print(inventory.containsKey('cakes'));

  sum = 0;
  // map loop
  for (var key in inventory.keys) {
    print(inventory[key]);
    sum = sum + inventory[key]!;
  }

  print('Map loop sum: $sum');
}
