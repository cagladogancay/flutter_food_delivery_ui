import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'core/init/themes/theme.dart';
import 'food/food.dart';

void main() => runApp(FoodDelivery());

class FoodDelivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: myTheme,
      home: Food(),
    );
  }
}
