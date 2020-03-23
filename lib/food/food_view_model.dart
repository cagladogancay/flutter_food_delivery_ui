import 'package:flutter/material.dart';

import './food.dart';
import '../core/init/constants/string_constants.dart';
import '../core/utility/view_helper.dart';

abstract class FoodViewModel extends State<Food> {
  ViewHelper viewHelper = ViewHelper.instance;
  StringConstants stringConstants = StringConstants();
  int currentTab = 0;

  void searchIconOnPressed() {}
  void menuIconOnPressed() {}
  // TODO: Fab button use for action
  void fabButtonOnPressed() {}
}
