import 'package:flutter/material.dart';
import 'package:hello_rectangle/category_router.dart';

void main() {
  runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      theme: ThemeData(
        // Chỉnh giao diện màu sắc toàn bộ cho app ở trong này nhé
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.black,
          displayColor: Colors.grey[600]
        ),
        primaryColor: Colors.grey[500],
        textSelectionHandleColor: Colors.green[500]
      ),
      home: CategoryRouter(),
    );
  }
}

