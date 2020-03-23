import 'package:flutter/material.dart';
import 'package:fooddeliveryflutter/food_body/model/food.dart';

class FoodDetailCard extends StatelessWidget {
  final FoodModel model;

  const FoodDetailCard({Key key, this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 16, right: 8, top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 122,
                height: 24,
                child: Text(
                  model.foodName,
                  style: TextStyle(fontFamily: 'Khula', fontSize: 18),
                ),
              ),
              Container(
                width: 53,
                height: 24,
                child: Text(
                  '₹' + model.price.toString(),
                  style: TextStyle(fontFamily: 'Khula', fontSize: 18),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(model.cardImgUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
