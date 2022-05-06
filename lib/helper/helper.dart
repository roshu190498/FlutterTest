import 'package:flutter/material.dart';

class Helper {
  
  static double mGetScreenWidth(BuildContext context) => MediaQuery.of(context).size.width;
  
  static double mGetScreenHeight(BuildContext context) => MediaQuery.of(context).size.height;
}