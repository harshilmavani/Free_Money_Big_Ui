import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freemony/common_widget/common_button.dart';
import 'package:freemony/view/Forgat_Password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: height * 0.08),
                  child: Image.asset(
                    'asstes/images/6.png',
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.045,
              ),
              Text(
                'Login',
                style: TextStyle(
                  fontSize: height * 0.03,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff011A51),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "Sat a name for your profile, here's",
                style: TextStyle(
                  fontSize: height * 0.018,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Text(
                "the password",
                style: TextStyle(
                  fontSize: height * 0.018,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: height * 0.06,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'name',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: Colors.black,
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.006,
              ),
              Padding(
                padding: EdgeInsets.only(right: width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot Password?'),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.1,
              ),
              CommonButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgatPasswprd(),
                    ),
                  );
                },
                text: 'LOGIN',
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                  ),
                  SizedBox(
                    width: width * 0.008,
                  ),
                  Text(
                    "Signup",
                    style: TextStyle(
                      color: Color(0xffFB847C),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
