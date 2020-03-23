import 'package:flutter/material.dart';
import 'package:fooddeliveryflutter/food_body/model/food.dart';

import './food_body.dart';
import 'model/foodBrain.dart';

abstract class FoodBodyViewModel extends State<FoodBody> {
  // Add your state and logic here

  List<FoodDeliveryBrain> foodDeliverys = [];

  List<FoodModel> foods = [];
  @override
  void initState() {
    super.initState();
    foodDeliverys.add(FoodDeliveryBrain(image: "images/all.png", type: "All"));
    foodDeliverys
        .add(FoodDeliveryBrain(image: "images/chinese.png", type: "Chinese"));
    foodDeliverys
        .add(FoodDeliveryBrain(image: "images/french.png", type: "French"));

    foods.add(FoodModel(
      cardImgUrl: 'images/burgersinghclub.png',
      foodName: 'Burger Singh Club - Sector 50',
      tag1: "Burger",
      tag2: "American",
      icon: Icons.favorite_border,
    ));
    foods.add(FoodModel(
      cardImgUrl: 'images/burgersinghclub3.png',
      foodName: 'Burger Singh Club - Sector 50',
      tag1: "Burger",
      tag2: "American",
      icon: Icons.favorite_border,
    ));
    foods.add(FoodModel(
      cardImgUrl: 'images/burgersinghclub2.png',
      foodName: 'Burger Singh Club - Sector 50',
      tag1: "Burger",
      tag2: "American",
      icon: Icons.favorite_border,
    ));
  }

  void navigateToDetail(int index) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => FoodDeliveryDetail(
          model: foods[index],
        ),
      ),
    );
  }
}
