import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: helloRectangle(),
    title: 'Hello Rectangle',
    theme: ThemeData.light(),
  ));
}

Widget helloRectangle(){
  return Container(
    color: Colors.green,
    child: Center(
        child: Text('Nguyen Huy', style: TextStyle(color: Colors.white, fontSize: 10)),
    ),
  );
}





