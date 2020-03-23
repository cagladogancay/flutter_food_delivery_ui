import 'package:flutter/material.dart';
import 'package:fooddeliveryflutter/core/view/widgets/card/place_text_card.dart';
import 'package:fooddeliveryflutter/food_body/food_body.dart';
import '../profile.dart';
import './food_view_model.dart';

class FoodView extends FoodViewModel {
  ThemeData get currentTheme => Theme.of(context);
  double dynamicHeight(double val) => MediaQuery.of(context).size.height * val;
  double dynamicWidth(double val) => MediaQuery.of(context).size.width * val;

  @override
  Widget build(BuildContext context) {
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

  Widget buildFloatingActionButton() {
    return FloatingActionButton(
      backgroundColor: currentTheme.errorColor,
      onPressed: fabButtonOnPressed,
      heroTag: "somethingUnique",
      child: Icon(Icons.shopping_cart),
      elevation: 2.0,
    );
  }

  IconButton buildMenuIconButton() {
    return IconButton(
      icon: Icon(
        Icons.dehaze,
        color: Colors.white,
      ),
      onPressed: menuIconOnPressed,
    );
  }

  IconButton buildSearchIconButton() {
    return IconButton(
      icon: Icon(Icons.search, color: Colors.white),
      onPressed: searchIconOnPressed,
    );
  }
}
