import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freemony/common_widget/common_button.dart';
import 'package:freemony/view/RegistrationScreen2.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ZoomIn(
                  duration: Duration(seconds: 3),
                  child: Image.asset(
                    'asstes/images/1.png',
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                'Flowa',
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Text(
                    'Experience the',
                    style: TextStyle(
                      color: Color(0xff011A51),
                      fontSize: 45,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Row(
                    children: [
                      Text(
                        'easier way',
                        style: TextStyle(
                          color: Color(0xffFF897E),
                          fontSize: 45,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'for',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 45,
                          color: Color(0xff011A51),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Text(
                    'transaction',
                    style: TextStyle(
                      color: Color(0xff011A51),
                      fontSize: 45,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Text(
                    'connect your money to your\nfriends & brands.',
                    style: TextStyle(
                      height: 1.3,
                      color: Colors.grey,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            CommonButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegistrationScreen2(),
                  ),
                );
              },
              text: 'Get Stared',
            )
          ],
        ),
      ),
    );
  }
}
