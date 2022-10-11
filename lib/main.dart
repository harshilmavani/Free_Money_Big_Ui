import 'package:flutter/material.dart';
import 'package:freemony/view/Balance_Profile.dart';
import 'package:freemony/view/Bills_Enquiry.dart';
import 'package:freemony/view/Confirm_Internet_Data.dart';
import 'package:freemony/view/Confirm_Withdarw_Page.dart';
import 'package:freemony/view/E_l_2.dart';
import 'package:freemony/view/Electric_Page.dart';
import 'package:freemony/view/Electric_Page_2.dart';
import 'package:freemony/view/Enter_Code.dart';
import 'package:freemony/view/Forgat_Password.dart';
import 'package:freemony/view/Internet_Data_Page.dart';
import 'package:freemony/view/Login_Screen.dart';
import 'package:freemony/view/Payment_Details.dart';
import 'package:freemony/view/RegistrationScreen.dart';
import 'package:freemony/view/RegistrationScreen2.dart';
import 'package:freemony/view/Reset_Password.dart';
import 'package:freemony/view/TopUp_Page.dart';
import 'package:freemony/view/Transfer_Page.dart';
import 'package:freemony/view/Welcome_Screen.dart';
import 'package:freemony/view/Withdarw_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ConfirmInternetData(),
    );
  }
}
