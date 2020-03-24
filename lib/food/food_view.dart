import 'package:flutter/material.dart';

import './food_view_model.dart';
import '../core/view/widgets/card/place_text_card.dart';
import '../food_body/food_body.dart';
import '../profile/profile.dart';
import '../core/init/constants/string_constants.dart';

class FoodView extends FoodViewModel {
  ThemeData get currentTheme => Theme.of(context);
  double dynamicHeight(double val) => MediaQuery.of(context).size.height * val;
  double dynamicWidth(double val) => MediaQuery.of(context).size.width * val;
  StringConstants constants = StringConstants();
  @override
  Widget build(BuildContext context) {
    //Appbar tanımı
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            centerTitle: false,
            leading: buildMenuIconButton(),
            title: PlaceTextCard(text: stringConstants.foodHomeTitleText),
            actions: <Widget>[buildSearchIconButton()],
          ),
          backgroundColor: Colors.purple,
          body: buildTabBarView(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: buildFloatingActionButton(),
          bottomNavigationBar: _bottomAppBar),
    );
  }

  TabBarView buildTabBarView() {
    return TabBarView(children: [
      FoodBody(),
      Profile(),
    ]);
  }

  Widget get _bottomAppBar => BottomAppBar(
        notchMargin: 10,
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        child: TabBar(
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home), text: constants.bottomNavItem1),
            Tab(icon: Icon(Icons.person), text: constants.bottomNavItem2),
          ],
          indicatorColor: Colors.transparent,
          labelColor: currentTheme.errorColor,
          unselectedLabelColor: currentTheme.dividerColor,
          labelStyle: currentTheme.textTheme.display3
              .copyWith(fontWeight: FontWeight.bold),
        ),
      );

  Widget buildFloatingActionButton() {
    return FloatingActionButton(
      backgroundColor: currentTheme.errorColor,
      onPressed: fabButtonOnPressed,
      heroTag: "somethingUnique",
      child: Icon(Icons.shopping_cart),
      elevation: 2.0,
    );
  }

  //Appbar leading icon
  IconButton buildMenuIconButton() {
    return IconButton(
      icon: Icon(
        Icons.dehaze,
        color: Colors.white,
      ),
      onPressed: menuIconOnPressed,
    );
  }

//app bar search
  IconButton buildSearchIconButton() {
    return IconButton(
      icon: Icon(Icons.search, color: Colors.white),
      onPressed: searchIconOnPressed,
    );
  }
}
