import 'package:flutter/material.dart';

class Helper {
  
  static double mGetScreenWidth(BuildContext context) => MediaQuery.of(context).size.width;
  
  static double mGetScreenHeight(BuildContext context) => MediaQuery.of(context).size.height;

  static Color getColor(String? type){
    if(type == "Grass") {
      return Colors.green[400]!;
    }else if(type == "Fire"){
      return Colors.red[400]!;
    }
    else if(type == "Flying"){
      return Colors.white;
    }
    else if(type == "Psychic"){
      return Colors.purple[400]!;
    }else if(type == "Poison"){
      return Colors.purple[400]!;
    }
    else if(type == "Water"){
      return Colors.grey[400]!;
    }
    else if(type == "Ground"){
      return Colors.brown[400]!;
    }
    else if(type == "Rock"){
      return Colors.brown[400]!;
    }
    else
      return Colors.red[400]!;
  }
}