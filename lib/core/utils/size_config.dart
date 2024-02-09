import 'package:flutter/material.dart';

class SizeConfig {
  static late double width;
  static late double height;
  static const double desktop = 1300;
  static const double tablet = 900;
  static init(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }
}
