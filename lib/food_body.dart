import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fooddeliveryflutter/food_delivery_brain.dart';
import 'package:fooddeliveryflutter/food_delivery_detail.dart';

class FoodBody extends StatefulWidget {
  @override
  _FoodBodyState createState() => _FoodBodyState();
}

class _FoodBodyState extends State<FoodBody> {
  FoodDeliveryBrain foodDeliveryBrain = FoodDeliveryBrain();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 820,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(8),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  foodDeliveryBrain.showListItem('images/all.png', 'All'),
                  SizedBox(
                    width: 20,
                  ),
                  foodDeliveryBrain.showListItem(
                      'images/chinese.png', 'Chinese'),
                  SizedBox(
                    width: 20,
                  ),
                  foodDeliveryBrain.showListItem('images/french.png', 'French'),
                  SizedBox(
                    width: 20,
                  ),
                  foodDeliveryBrain.showListItem('images/indian.png', 'Indian'),
                  SizedBox(
                    width: 20,
                  ),
                  foodDeliveryBrain.showListItem(
                      'images/american.png', 'American'),
                  SizedBox(
                    width: 20,
                  ),
                  foodDeliveryBrain.showListItem('images/all.png', 'All'),
                  SizedBox(
                    width: 20,
                  ),
                  foodDeliveryBrain.showListItem(
                      'images/chinese.png', 'Chinese'),
                  SizedBox(
                    width: 20,
                  ),
                  foodDeliveryBrain.showListItem('images/french.png', 'French'),
                  SizedBox(
                    width: 20,
                  ),
                  foodDeliveryBrain.showListItem('images/indian.png', 'Indian'),
                  SizedBox(
                    width: 20,
                  ),
                  foodDeliveryBrain.showListItem(
                      'images/american.png', 'American'),
                  SizedBox(
                    width: 20,
                  ),
                  //Background
                ],
              ),
            ),
            Positioned(
              top: 100,
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Text(
                              '58 Restaurant Available',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Khula',
                                  fontSize: 21,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              ClipOval(
                                child: Material(
                                  color: Colors.redAccent,
                                  child: SizedBox(
                                    width: 33,
                                    height: 33,
                                    child: Icon(
                                      Icons.tune,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ClipOval(
                                child: Material(
                                  color: Colors.redAccent,
                                  child: SizedBox(
                                    width: 33,
                                    height: 33,
                                    child: Icon(
                                      Icons.sort,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //Card
                      InkWell(
                        child: Hero(
                          tag: 'images/burgersinghclub.png',
                          child: foodDeliveryBrain.createCard(
                              'images/burgersinghclub.png',
                              'Burger Singh Club - Sector 50',
                              Icons.favorite_border,
                              'Burger',
                              'American'),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => FoodDeliveryDetail(
                                imgPath: 'images/burgersinghclub.png',
                                foodTitle: 'Burger Singh Club - Sector 50',
                                tag1: 'Burger',
                                tag2: 'American',
                              ),
                            ),
                          );
                        },
                      ),

                      Padding(
                        padding: EdgeInsets.all(8),
                      ),
                      InkWell(
                        child: Hero(
                          tag: 'images/lapinozpizza.png',
                          child: foodDeliveryBrain.createCard(
                              'images/lapinozpizza.png',
                              'La Pino \u0027s Pizza - Sector 76 ',
                              Icons.favorite_border,
                              'Italian',
                              'Mexican'),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => FoodDeliveryDetail(
                                imgPath: 'images/lapinozpizza.png',
                                foodTitle: 'La Pino \u0027s Pizza - Sector 76 ',
                                tag1: 'Italian',
                                tag2: 'Mexican',
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
