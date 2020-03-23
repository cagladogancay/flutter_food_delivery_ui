import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryflutter/core/view/widgets/card/food_detail_card.dart';
import 'package:fooddeliveryflutter/food_body/model/food.dart';
import 'package:fooddeliveryflutter/food_body/model/foodBrain.dart';

// TODO CONVERT TO MVVM MODEL
class FoodDeliveryDetail extends StatefulWidget {
  final FoodModel model;

  const FoodDeliveryDetail({Key key, this.model}) : super(key: key);

  @override
  _FoodDeliveryDetailState createState() => _FoodDeliveryDetailState();
}

class _FoodDeliveryDetailState extends State<FoodDeliveryDetail> {
  bool isSwitched = false;
  FoodDeliveryBrain foodDeliveryBrain = FoodDeliveryBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 320,
            child: Stack(
              children: <Widget>[
                Hero(
                  tag: widget.model.cardImgUrl,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 292,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.model.cardImgUrl),
                          fit: BoxFit.cover),
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey.shade600,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    actions: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.favorite_border),
                              onPressed: () {}),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 125,
                  left: 30,
                  child: Container(
                    width: 335,
                    height: 188,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white.withOpacity(0.9),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 209,
                            height: 70,
                            child: Text(
                              widget.model.foodName,
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(fontFamily: 'Khula', fontSize: 24),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 49,
                                height: 16,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.redAccent.withOpacity(0.2),
                                ),
                                child: Text(
                                  widget.model.tag1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Khula',
                                      color: Colors.red,
                                      fontSize: 10),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 62,
                                height: 16,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.redAccent.withOpacity(0.2),
                                ),
                                child: Text(
                                  widget.model.tag2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Khula',
                                      color: Colors.red,
                                      fontSize: 10),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 15,
                                height: 17,
                                child: Text(
                                  '₹₹',
                                  style: TextStyle(
                                      fontFamily: 'Khula',
                                      color: Colors.black,
                                      fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 63,
                                height: 19,
                                child: Text(
                                  '30-40 min',
                                  style: TextStyle(
                                      fontFamily: 'Khula',
                                      fontSize: 14,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 79,
                                height: 19,
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      '4.3',
                                      style: TextStyle(
                                          fontFamily: 'Khula',
                                          fontSize: 14,
                                          color: Colors.black),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.black,
                                      size: 14,
                                    ),
                                    Text(
                                      '(500+)',
                                      style: TextStyle(
                                          fontFamily: 'Khula',
                                          fontSize: 14,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  Container(
                    width: 335,
                    height: 41,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Veg Only',
                          style: TextStyle(
                              fontFamily: 'Khula',
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                          activeTrackColor: Colors.redAccent,
                          activeColor: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Container(
                    width: 335,
                    height: 27,
                    child: Text(
                      'Picked For You',
                      style: TextStyle(
                        fontFamily: 'Khula',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 300,
                          child: Material(
                            child: ListView(
                              children: <Widget>[
                                FoodDetailCard(
                                  model: FoodModel(
                                      foodName: 'Chicken Keema',
                                      price: 60.00,
                                      cardImgUrl: 'images/chickenKeema.png'),
                                ),
                                FoodDetailCard(
                                  model: FoodModel(
                                      foodName: 'Chicken Keema',
                                      price: 60.00,
                                      cardImgUrl: 'images/chickenKeema.png'),
                                ),
                                FoodDetailCard(
                                  model: FoodModel(
                                      foodName: 'American Grilled',
                                      price: 79.00,
                                      cardImgUrl: 'images/americanGrilled.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
