import 'package:flutter/material.dart';

class FoodModel {
  String cardImgUrl;
  String foodName;
  IconData icon;
  String tag1;
  String tag2;
  double price;
  FoodModel(
      {this.cardImgUrl,
      this.foodName,
      this.icon,
      this.tag1,
      this.tag2,
      this.price});
}
