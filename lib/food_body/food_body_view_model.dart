import 'package:flutter/material.dart';
import 'package:fooddeliveryflutter/food_body/model/food.dart';

import './food_body.dart';
import 'food_delivery_detail.dart';
import 'model/foodBrain.dart';

abstract class FoodBodyViewModel extends State<FoodBody> {
  // Add your state and logic here

  List<FoodDeliveryBrain> foodDeliveries = [];

  List<FoodModel> foods = [];

  @override
  void initState() {
    super.initState();
    foodDeliveries.add(FoodDeliveryBrain(image: "images/all.png", type: "All"));
    foodDeliveries
        .add(FoodDeliveryBrain(image: "images/chinese.png", type: "Chinese"));
    foodDeliveries
        .add(FoodDeliveryBrain(image: "images/french.png", type: "French"));
    foodDeliveries
        .add(FoodDeliveryBrain(image: "images/indian.png", type: "Indian"));
    foodDeliveries
        .add(FoodDeliveryBrain(image: "images/american.png", type: "American"));
    foodDeliveries.add(FoodDeliveryBrain(image: "images/all.png", type: "All"));
    foodDeliveries
        .add(FoodDeliveryBrain(image: "images/chinese.png", type: "Chinese"));
    foodDeliveries
        .add(FoodDeliveryBrain(image: "images/french.png", type: "French"));
    foodDeliveries
        .add(FoodDeliveryBrain(image: "images/indian.png", type: "Indian"));
    foodDeliveries
        .add(FoodDeliveryBrain(image: "images/american.png", type: "American"));

    foods.add(FoodModel(
      cardImgUrl: 'images/burgersinghclub.png',
      foodName: 'Burger Singh Club - Sector 50',
      tag1: "Burger",
      tag2: "American",
      icon: Icons.favorite_border,
    ));
    foods.add(FoodModel(
      cardImgUrl: 'images/lapinozpizza.png',
      foodName: 'La Pinoz Pizza - Sector 50',
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
