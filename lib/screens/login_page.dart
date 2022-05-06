
import 'package:flutter/material.dart';
import 'package:pokedesc/constants/constants.dart';
import 'package:pokedesc/screens/home_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (_)=> HomeScreen()));
        },child: Text(PKConstants.LOGIN),),
      ),
    );
  }
}