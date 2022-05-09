import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.isObscuring,
      required this.obscuringChar,
      required this.icon})
      : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final bool isObscuring;
  final String obscuringChar;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        style: TextStyle(color: Colors.grey),
        decoration: InputDecoration(
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(
              icon,
              color: Colors.grey,
            )),
        obscureText: isObscuring,
        obscuringCharacter: obscuringChar);
  }
}