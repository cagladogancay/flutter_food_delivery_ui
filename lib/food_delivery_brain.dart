import 'package:flutter/material.dart';

class FoodDeliveryBrain {
  createCard(String cardImgUrl, String foodName, IconData icon, String tag1,
      String tag2) {
    return Stack(
      children: <Widget>[
        Container(
          width: 342,
          height: 295,
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(16),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: 342,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage(cardImgUrl),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 125,
          child: Column(
            children: <Widget>[
              Container(
                width: 342,
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 8),
                      child: Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                foodName,
                                style: TextStyle(
                                    fontFamily: 'Khula',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17),
                              ),
                              SizedBox(
                                width: 60,
                              ),
                              Icon(icon, color: Colors.redAccent),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            '₹₹',
                            style: TextStyle(
                                fontFamily: 'Khula',
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Divider(
                        color: Colors.grey.shade300,
                        thickness: 1,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 345,
                        height: 70,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Cuisine',
                                      style: TextStyle(
                                          fontFamily: 'Khula', fontSize: 9),
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 40,
                                          height: 16,
                                          decoration: BoxDecoration(
                                            color: Colors.redAccent
                                                .withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          padding: EdgeInsets.all(2),
                                          child: Text(
                                            tag1,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'Khula',
                                                fontSize: 10,
                                                color: Colors.red),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 58,
                                        height: 16,
                                        decoration: BoxDecoration(
                                          color:
                                              Colors.redAccent.withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        padding: EdgeInsets.all(2),
                                        child: Text(
                                          tag2,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'Khula',
                                              fontSize: 10,
                                              color: Colors.red),
                                        ),
                                      ),
                                      Container(
                                        height: 22,
                                        child:
                                            VerticalDivider(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Delivery Time',
                                          style: TextStyle(
                                              fontFamily: 'Khula', fontSize: 9),
                                        ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              '30-40 min',
                                              style: TextStyle(
                                                  fontFamily: 'Khula',
                                                  fontSize: 13),
                                            ),
                                          ),
                                          Container(
                                            height: 22,
                                            child: VerticalDivider(
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Rating',
                                                style: TextStyle(
                                                    fontFamily: 'Khula',
                                                    fontSize: 9),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: <Widget>[
                                                Text(
                                                  '4.3',
                                                  style: TextStyle(
                                                      fontFamily: 'Khula',
                                                      fontSize: 13),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            2.0),
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 12,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Text(
                                                    '(500+)',
                                                    style: TextStyle(
                                                        fontFamily: 'Khula',
                                                        fontSize: 13),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  showListItem(String imgUrl, String foodType) {
    return Column(
      children: <Widget>[
        Container(
          height: 63,
          width: 63,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(63),
            image:
                DecorationImage(image: AssetImage(imgUrl), fit: BoxFit.cover),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              foodType,
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

  createDetailList(String detailFoodTitle, String price, String imgPath) {
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
                  detailFoodTitle,
                  style: TextStyle(fontFamily: 'Khula', fontSize: 18),
                ),
              ),
              Container(
                width: 53,
                height: 24,
                child: Text(
                  '₹' + price,
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
                    image: AssetImage(imgPath),
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
