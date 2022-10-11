import 'package:flutter/material.dart';
import 'package:freemony/common_widget/common_button.dart';
import 'package:freemony/view/Reset_Password.dart';

class ForgatPasswprd extends StatefulWidget {
  const ForgatPasswprd({Key? key}) : super(key: key);

  @override
  State<ForgatPasswprd> createState() => _ForgatPasswprdState();
}

class _ForgatPasswprdState extends State<ForgatPasswprd> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.02, top: height * 0.05),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: width * 0.09),
                  child: Image.asset(
                    'asstes/images/7.png',
                    height: height * 0.17,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Center(
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: height * 0.03,
                    color: Color(
                      0xff011A51,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Center(
                child: Text(
                  "Sat a name for your profile, here's",
                  style: TextStyle(
                    fontSize: height * 0.018,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Center(
                child: Text(
                  "the password",
                  style: TextStyle(
                    fontSize: height * 0.018,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.09,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email ID',
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
                height: height * 0.150,
              ),
              CommonButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPasswprd(),
                    ),
                  );
                },
                text: 'NEXT',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
