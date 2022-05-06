import 'package:flutter/material.dart';
import 'package:pokedesc/screens/login_page.dart';

void main(List<String> args) {
  runApp(PokedeskApp());
}




class PokedeskApp extends StatefulWidget {
  const PokedeskApp({ Key? key }) : super(key: key);

  @override
  State<PokedeskApp> createState() => _PokedeskAppState();
}

class _PokedeskAppState extends State<PokedeskApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}