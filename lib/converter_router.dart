import 'package:flutter/material.dart';
import 'package:hello_rectangle/unit.dart';
import 'package:meta/meta.dart';

class ConverterRouter extends StatelessWidget {
  final List<Unit> units;
  final name;
  final color;

  const ConverterRouter(
      {@required this.units, @required this.name, @required this.color})
      : assert(units != null),
        assert(name != null),
        assert(color != null);

  @override
  Widget build(BuildContext context) {
    final initWidget = units.map((Unit unit) {
      return InkWell(
        onTap: () => print(unit.name),
        child: Container(
          color: color,
          margin: EdgeInsets.all(4),
          padding: EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              Text(
                unit.name,
                style: Theme.of(context).textTheme.headline,
              ),
              Text(
                'Conversion: ${unit.conversion}',
                style: Theme.of(context).textTheme.subhead,
              ),
            ],
          ),
        ),
      );
    }).toList();
    return ListView(
      children: initWidget,
    );
  }
}
