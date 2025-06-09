import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Hello Venus Class',
            style: TextStyle(fontSize: 40, color: Colors.red),
          ),
        ),
        body: HelloFlutter(),
      ),
    ),
  );
}

List<String> fruits = ['Apple', 'Orange', 'Banana'];

// 3 тоотой list numbers гэдэг хувьсагчид үүсгээд
// түүнийгээ жимснүүдийн доод талд харуулна уу

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({super.key});

  // 3 төрлийн жимсний цуглуулга list үүсгээд
  // fruits гэдэг хувьсагчид хадгалана уу

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (String fruit in fruits)
            Text('* $fruit', style: TextStyle(fontSize: 30)),
          SizedBox(height: 8),
          Text(
            'List length: ${fruits.length}',
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
    );
  }
}
