import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new HomePage(),
    title: 'Hello Rectangle',
    theme: ThemeData.light(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Huy', style: TextStyle(color: Colors.amber, fontSize: 18)),
          Text('Huy', style: TextStyle(color: Colors.amber, fontSize: 18)),
          Text('Huy', style: TextStyle(color: Colors.amber, fontSize: 18)),
          Text('Huy', style: TextStyle(color: Colors.amber, fontSize: 18)),
          Text('Huy', style: TextStyle(color: Colors.amber, fontSize: 18))
        ],
      ),
    );
  }
}
