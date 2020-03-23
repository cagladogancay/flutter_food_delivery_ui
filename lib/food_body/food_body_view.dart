import 'package:flutter/material.dart';

import './food_body_view_model.dart';
import '../core/view/widgets/card/food_card.dart';
import '../core/view/widgets/list_item/food_delivery_brain.dart';
import 'model/food.dart';

class FoodBodyView extends FoodBodyViewModel {
  ThemeData get currentTheme => Theme.of(context);
  double dynamicWidth(double val) => MediaQuery.of(context).size.width * val;
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(child: buildListView()),
        Expanded(
          flex: 9,
          child: Card(
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            child: Column(
              children: <Widget>[
                buildRowRest(),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: foods.length,
                    itemBuilder: (context, index) => AspectRatio(
                      aspectRatio: 10 / 8,
                      child: FoodCard(
                        data: foods[index],
                        onPressed: () => navigateToDetail(index),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Row buildRowRest() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        buildRestTitlePadding(),
        buildActionRowRow(),
      ],
    );
  }

  InkWell buildBurgerCard(BuildContext context) {
    return InkWell(
      child: FoodCard(
          data: FoodModel(
        cardImgUrl: 'images/burgersinghclub.png',
        foodName: 'Burger Singh Club - Sector 50',
        tag1: "Burger",
        tag2: "American",
        icon: Icons.favorite_border,
      )),
      onTap: () {},
    );
  }

  Row buildActionRowRow() {
    return Row(
      children: <Widget>[
        buildCircleAvatarAction1(),
        SizedBox(width: dynamicWidth(0.01)),
        buildCircleAvatarAction2()
      ],
    );
  }

  Padding buildRestTitlePadding() {
    return Padding(
      padding: EdgeInsets.all(dynamicWidth(0.05)),
      child: buildTextRestaurant(),
    );
  }

  CircleAvatar buildCircleAvatarAction1() {
    return CircleAvatar(
        backgroundColor: currentTheme.errorColor,
        child: Icon(
          Icons.tune,
          color: Colors.white,
        ));
  }

  CircleAvatar buildCircleAvatarAction2() {
    return CircleAvatar(
        backgroundColor: currentTheme.errorColor,
        child: Icon(
          Icons.sort,
          color: Colors.white,
        ));
  }

  Text buildTextRestaurant() {
    return Text(
      '58 Restaurant Available',
      textAlign: TextAlign.left,
      style: currentTheme.textTheme.headline3,
      textScaleFactor: 0.8,
    );
  }

  ListView buildListView() {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: foodDeliverys.length,
      itemBuilder: (context, index) => FoodDeliveryWidget(
        data: foodDeliverys[index],
      ),
    );
  }
}
