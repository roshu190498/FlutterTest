import 'package:flutter/material.dart';
import 'package:pokedesc/helper/helper.dart';

class NameValueWidget extends StatelessWidget {
  const NameValueWidget({ Key? key ,required this.name, required this.value}) : super(key: key);
  final String name;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: Helper.mGetScreenHeight(context)*0.23,
          child: Text(name,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal),textAlign: TextAlign.start),
        ),
        Container(
          child: Text(value,style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal),textAlign: TextAlign.start,),
        )
        
      ],
      
    );
  }
}