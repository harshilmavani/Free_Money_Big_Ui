import 'package:flutter/material.dart';

class ResetPasswprd extends StatefulWidget {
  const ResetPasswprd({Key? key}) : super(key: key);

  @override
  State<ResetPasswprd> createState() => _ResetPasswprdState();
}

class _ResetPasswprdState extends State<ResetPasswprd> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.02, top: height * 0.02),
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
                height: height * 0.02,
              ),
              Center(
                child: Image.asset(
                  'asstes/images/8.png',
                  height: height * 0.19,
                  width: height * 0.19,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Center(
                child: Text(
                  'Reset Password',
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
                height: height * 0.01,
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
                height: height * 0.11,
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
                    labelText: 'New Password',
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
                height: height * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Reset Password',
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
                height: height * 0.09,
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {},
                  height: height * 0.058,
                  minWidth: width * 0.9,
                  color: Color(0xffFB847C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
