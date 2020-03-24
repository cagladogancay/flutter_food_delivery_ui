import 'package:flutter/material.dart';

class PlaceTextCard extends StatelessWidget {
  final String text;

  //constructor oluşturulmuş.Appbar title
  PlaceTextCard({Key key, @required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dynamicWidth = MediaQuery.of(context).size.width * 0.02;
    final dynamicHeight = MediaQuery.of(context).size.height * 0.02;
    final currentTheme = Theme.of(context);

    return Card(
      shape: StadiumBorder(),
      color: Theme.of(context).primaryColorDark,
      child: Padding(
        padding: EdgeInsets.all(dynamicWidth),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            buildPlaceIcon(dynamicHeight),
            buildTextSectorTitle(currentTheme),
          ],
        ),
      ),
    );
  }

// appbar card içindeki icon
  Icon buildPlaceIcon(double size) {
    return Icon(
      Icons.location_on,
      color: Colors.white,
      size: size,
    );
  }

  Text buildTextSectorTitle(ThemeData currentTheme) {
    return Text(this.text,
        textAlign: TextAlign.center,
        style: currentTheme.primaryTextTheme.display3);
  }
}
