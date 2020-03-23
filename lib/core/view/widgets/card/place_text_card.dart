import 'package:flutter/material.dart';
import 'package:fooddeliveryflutter/core/init/constants/string_constants.dart';

class PlaceTextCard extends StatelessWidget {
  // TODO CONVERT SINGLETON
  final StringConstants stringConstants = StringConstants();
  @override
  Widget build(BuildContext context) {
    final dynamicWidth = MediaQuery.of(context).size.width * 0.02;
    final dynamicHeight = MediaQuery.of(context).size.height * 0.02;
    final currentTheme = Theme.of(context);

    return Container(
      padding: EdgeInsets.all(dynamicWidth),
      decoration: ShapeDecoration(
          shape: StadiumBorder(), color: Theme.of(context).primaryColorDark),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          buildPlaceIcon(dynamicHeight),
          buildTextSectorTitle(currentTheme),
        ],
      ),
    );
  }

  Icon buildPlaceIcon(double size) {
    return Icon(
      Icons.location_on,
      color: Colors.white,
      size: size,
    );
  }

  Text buildTextSectorTitle(ThemeData currentTheme) {
    return Text(
      stringConstants.foodHomeTitleText,
      style: currentTheme.primaryTextTheme.headline6,
      textScaleFactor: 0.8,
    );
  }
}
