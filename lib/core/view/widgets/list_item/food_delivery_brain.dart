import 'package:flutter/material.dart';
import 'package:fooddeliveryflutter/food_body/model/foodBrain.dart';

class FoodDeliveryWidget extends StatelessWidget {
  final FoodDeliveryBrain data;

  const FoodDeliveryWidget({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 63,
            width: 63,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(63),
              image: DecorationImage(
                  image: AssetImage(data.image), fit: BoxFit.cover),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              data.type,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Khula',
                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
