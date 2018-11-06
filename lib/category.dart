import 'package:flutter/material.dart';
import 'package:hello_rectangle/unit.dart';
import 'package:meta/meta.dart';

class Category {
  final String name;
  final ColorSwatch color;
  final String iconLocation;
  final List<Unit> units;

  const Category({
    @required this.name,
    @required this.color,
    @required this.iconLocation,
    @required this.units
    }): assert(iconLocation != null),
        assert(name != null),
        assert(color != null),
        assert(units != null);
}
