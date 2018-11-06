import 'package:flutter/material.dart';
import 'package:hello_rectangle/category.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class CategoryTile extends StatelessWidget {
  final Category category;
  final ValueChanged<Category> onTap;

  const CategoryTile(
      {Key key, @required this.category, @required this.onTap})
      : assert(category != null),
        assert(onTap != null),
        super(key: key);

  ///Navigation to the [ConverterRouter].
//  void _navigateToConverter(BuildContext context) {
//    if (Navigator.of(context).canPop()) {
//      Navigator.of(context).pop();
//    }
//    Navigator.of(context).push(MaterialPageRoute<Null>(
//      builder: (BuildContext context) {
//        return Scaffold(
//          appBar: AppBar(
//            elevation: 1.0,
//            title: Text(
//              category.name,
//            ),
//            centerTitle: Theme.of(context).platform == TargetPlatform.iOS,
//            backgroundColor: category.color,
//          ),
//          body: UnitConverter(category: category),
//          // This prevents the attempt to resize the screen when the keyboard
//          // không cho mở keyboard ra
//          resizeToAvoidBottomPadding: false,
//        );
//      },
//    ));
//  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: _borderRadius,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: category.color['highlight'],
          splashColor: category.color['splash'],
          onTap: () => onTap(category),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Image.asset(category.iconLocation),
                ),
                Center(
                  child: Text(
                    category.name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
