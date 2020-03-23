import 'package:flutter/material.dart';
import 'package:fooddeliveryflutter/core/init/constants/string_constants.dart';
import 'package:fooddeliveryflutter/core/utility/view_helper.dart';
import 'package:fooddeliveryflutter/food_body.dart';
import 'package:fooddeliveryflutter/profile.dart';

import 'card.dart';

class FoodHome extends StatefulWidget {
  @override
  _FoodHomeState createState() => _FoodHomeState();
}

class _FoodHomeState extends State<FoodHome> {
  ViewHelper viewHelper = ViewHelper.instance;
  StringConstants stringConstants = StringConstants();
  int currentTab = 0;
  final List<Widget> screens = [
    FoodBody(),
    Cards(),
    Profile(),
  ];

  ThemeData get currentTheme => Theme.of(context);
  // Dynamic value is supported all device size. This  is same grid value.
  double dynamicHeight(double val) => MediaQuery.of(context).size.height * val;
  double dynamicWidth(double val) => MediaQuery.of(context).size.width * val;

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = FoodBody();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        leading: buildMenuIconButton(),
        title: Container(
          padding: EdgeInsets.all(dynamicWidth(0.02)),
          decoration: ShapeDecoration(
              shape: StadiumBorder(),
              color: Theme.of(context).primaryColorDark),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              buildPlaceIcon(),
              buildTextSectorTitle(),
            ],
          ),
        ),
        actions: <Widget>[buildSearchIconButton()],
      ),
      backgroundColor: Colors.purple,
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          setState(() {
            currentScreen = Cards();
            currentTab = 0;
          });
        },
        child: Icon(
          Icons.shopping_cart,
        ),
        elevation: 2.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = FoodBody();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: currentTab == 0 ? Colors.red : Colors.grey,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: currentTab == 0 ? Colors.red : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          color: currentTab == 2 ? Colors.red : Colors.grey,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: currentTab == 2 ? Colors.red : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        notchMargin: 10,
      ),
    );
  }

  Icon buildPlaceIcon() {
    return Icon(
      Icons.location_on,
      color: Colors.white,
      size: dynamicHeight(0.02),
    );
  }

  Text buildTextSectorTitle() {
    return Text(
      stringConstants.foodHomeTitleText,
      style: currentTheme.primaryTextTheme.headline6,
      textScaleFactor: 0.8,
    );
  }

  IconButton buildMenuIconButton() {
    return IconButton(
      icon: Icon(
        Icons.dehaze,
        color: Colors.white,
      ),
      onPressed: () {},
    );
  }

  IconButton buildSearchIconButton() {
    return IconButton(
      icon: Icon(
        Icons.search,
        color: Colors.white,
      ),
      onPressed: () {},
    );
  }
}
