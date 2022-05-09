
import 'package:flutter/material.dart';
import 'package:pokedesc/constants/constants.dart';
import 'package:pokedesc/screens/home_screen.dart';
import 'package:pokedesc/widgets/custom_form_field.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'), backgroundColor: Colors.cyan),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 30.0, right: 30.0, left: 30.0),
              child: CustomTextFormField(
                  controller: emailController,
                  hintText: 'Email',
                  isObscuring: false,
                  obscuringChar: ' ',
                  icon: Icons.email),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, right: 30.0, left: 30.0, bottom: 20.0),
              child: CustomTextFormField(
                  controller: passwordController,
                  hintText: 'Password',
                  isObscuring: true,
                  obscuringChar: '*',
                  icon: Icons.lock),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomeScreen()));
              },
              child: Container(
                width: 200,
                height: 50,
                decoration: ShapeDecoration(
                    color: Colors.cyan,
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Center(
                    child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}