import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryflutter/food_delivery_brain.dart';

class FoodDeliveryDetail extends StatefulWidget {
  var imgPath;
  String foodTitle;
  String tag1;
  String tag2;

  FoodDeliveryDetail({this.imgPath, this.foodTitle, this.tag1, this.tag2});

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
                  tag: widget.imgPath,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 292,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.imgPath), fit: BoxFit.cover),
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
                              widget.foodTitle,
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
                                  widget.tag1,
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
                                  widget.tag2,
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
                                foodDeliveryBrain.createDetailList(
                                    'Chicken Keema',
                                    '60.00',
                                    'images/chickenKeema.png'),
                                foodDeliveryBrain.createDetailList(
                                    'Udta Punjab 2.0 Burger',
                                    '69.00',
                                    'images/udtaPunjab.png'),
                                foodDeliveryBrain.createDetailList(
                                    'Amritsari Murgh Makhani',
                                    '79.00',
                                    'images/amritsariMurghMakhani.png'),
                                foodDeliveryBrain.createDetailList(
                                    'American Grilled',
                                    '79.00',
                                    'images/americanGrilled.png'),
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
