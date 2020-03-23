import 'package:flutter/material.dart';

import 'card.dart';
import 'core/init/constants/string_constants.dart';
import 'core/utility/view_helper.dart';
import 'core/view/widgets/card/place_text_card.dart';
import 'food_body.dart';
import 'profile.dart';

class FoodHome extends StatefulWidget {
  @override
  _FoodHomeState createState() => _FoodHomeState();
}

class _FoodHomeState extends State<FoodHome> {
  ViewHelper viewHelper = ViewHelper.instance;
  StringConstants stringConstants = StringConstants();
  int currentTab = 0;
  List<Widget> tabbarViews = [
    FoodBody(),
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
    return DefaultTabController(
      length: tabbarViews.length,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            centerTitle: false,
            leading: buildMenuIconButton(),
            title: PlaceTextCard(text: stringConstants.foodHomeTitleText),
            actions: <Widget>[buildSearchIconButton()],
          ),
          backgroundColor: Colors.purple,
          body: TabBarView(children: [
            FoodBody(),
            Profile(),
          ]),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: buildFloatingActionButton(),
          bottomNavigationBar: _bottomAppBar),
    );
  }

  Widget get _bottomAppBar => BottomAppBar(
        notchMargin: 10,
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        child: TabBar(
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home), text: "Home"),
            Tab(icon: Icon(Icons.person), text: "Profile")
          ],
          indicatorColor: Colors.transparent,
          labelColor: currentTheme.errorColor,
          unselectedLabelColor: currentTheme.dividerColor,
          labelStyle: currentTheme.textTheme.headline5
              .copyWith(fontWeight: FontWeight.bold),
        ),
      );

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
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
