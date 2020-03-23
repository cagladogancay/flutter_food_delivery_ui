import 'package:flutter/material.dart';
import 'package:fooddeliveryflutter/core/view/widgets/card/tag_card.dart';

import '../../../../food_body/model/food.dart';

class FoodCard extends StatelessWidget {
  final FoodModel data;
  final VoidCallback onPressed;

  const FoodCard({Key key, @required this.data, this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Hero(
        tag: data.cardImgUrl,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Stack(
            children: <Widget>[
              Positioned.fill(bottom: 20, child: buildStackBackContainer()),
              Positioned.fill(top: 150, child: buildCardbodyContainer(context)),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStackBackContainer() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        image: DecorationImage(
            image: AssetImage(data.cardImgUrl), fit: BoxFit.cover),
      ),
    );
  }

  Widget buildCardbodyContainer(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildCardDetailTitlePadding(),
          buildChineseeText(context),
          buildDivider(),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: buildCuisineCard(context)),
                Expanded(
                  child: buildDeliveryColumn(context),
                ),
                Expanded(
                  child: buildRatingExpanded(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCuisineCard(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        buildSubListText(context, "Cuisine"),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              TagCard(tag: data.tag1),
              TagCard(tag: data.tag2),
              Spacer(),
              divider
            ],
          ),
        ),
      ],
    );
  }

  Widget buildDeliveryColumn(BuildContext context) {
    return Column(
      children: <Widget>[
        buildSubListText(context, "Delivery Time"),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              Text('30-40 min', style: Theme.of(context).textTheme.headline5),
              Spacer(),
              divider
            ],
          ),
        ),
      ],
    );
  }

  Widget get divider => VerticalDivider(
        color: Colors.grey,
        indent: 10,
        endIndent: 10,
      );
  Widget buildRatingExpanded(BuildContext context) {
    return Column(
      children: <Widget>[
        buildSubListText(context, "Rating"),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Spacer(),
              Text('4.3', style: Theme.of(context).textTheme.headline5),
              Icon(Icons.star, size: 12),
              Padding(
                padding: EdgeInsets.all(2.0),
                child: Text('(500+)',
                    style: Theme.of(context).textTheme.headline5),
              ),
              Spacer(),
            ],
          ),
        )
      ],
    );
  }

  Padding buildSubListText(BuildContext context, String text) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Divider buildDivider() {
    return Divider(
      color: Colors.grey.shade300,
      thickness: 1,
    );
  }

  Widget buildChineseeText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        '₹₹',
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }

  Widget buildCardDetailTitlePadding() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            data.foodName,
            style: TextStyle(
                fontFamily: 'Khula', fontWeight: FontWeight.w700, fontSize: 17),
          ),
          SizedBox(
            width: 60,
          ),
          Icon(data.icon, color: Colors.redAccent),
        ],
      ),
    );
  }
}
