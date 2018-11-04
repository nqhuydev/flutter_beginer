import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  double _rowHeight = 50;
  BorderRadius _borderRadius = BorderRadius.all(Radius.circular(30));
  String _name = 'Cake';

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueAccent,
      borderRadius: _borderRadius,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: Colors.amber,
          splashColor: Colors.amberAccent,
          onTap: () => print('I was tapped!'),
          onLongPress: () {
            print('I was long taps');
          },
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Icon(Icons.cake, color: Colors.white,),
                  ),
                  Center(
                    child: Text(
                      _name,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.display1.copyWith(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
