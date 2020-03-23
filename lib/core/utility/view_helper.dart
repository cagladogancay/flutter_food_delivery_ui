import 'package:flutter/cupertino.dart';

class ViewHelper {
  // EAGER SINGLETON INIT
  static ViewHelper _instance;
  static ViewHelper get instance {
    if (_instance == null) {
      _instance = ViewHelper._init();
    }
    return _instance;
  }

  ViewHelper._init();

  double dynamicHeight(BuildContext context, {double value}) {
    return MediaQuery.of(context).size.height * value ?? 1;
  }

  double dynamicWidth(BuildContext context, {double value}) {
    return MediaQuery.of(context).size.width * value ?? 1;
  }
}
