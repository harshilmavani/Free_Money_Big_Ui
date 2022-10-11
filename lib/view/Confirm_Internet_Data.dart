import 'package:flutter/material.dart';

class ConfirmInternetData extends StatefulWidget {
  const ConfirmInternetData({Key? key}) : super(key: key);

  @override
  State<ConfirmInternetData> createState() => _ConfirmInternetDataState();
}

class _ConfirmInternetDataState extends State<ConfirmInternetData> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.02,
                vertical: height * 0.02,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                  ),
                  SizedBox(
                    width: width * 0.28,
                  ),
                  Text(
                    'Internet Data',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: width * 0.06,
              right: width * 0.06,
            ),
            child: Container(
              height: height * 0.23,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.01,
                      left: width * 0.03,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'asstes/images/27.png',
                          height: height * 0.07,
                          width: height * 0.07,
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(
                              right: width * 0.03, top: height * 0.03),
                          child: MaterialButton(
                            onPressed: () {},
                            height: height * 0.04,
                            minWidth: height * 0.12,
                            color: Color(0xffFF897E),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'Buy Package',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.03),
                    child: Text(
                      'Data',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.002,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.03),
                    child: Text(
                      'Monthly',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    child: Row(
                      children: [
                        Text(
                          '42 GB',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff011A51),
                          ),
                        ),
                        Spacer(),
                        Text(
                          '12 GB',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff011A51),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: width * 0.03,
                      right: width * 0.15,
                    ),
                    child: Divider(
                      thickness: 2,
                      color: Color(0xff011A51),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.03),
                    child: Text(
                      'March 21 - April 21,2022',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Text(
              'Choose Package',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.06,
          ),
          Center(
            child: Text(
              'Confirm Internet Data',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Container(
              height: height * 0.09,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.002,
                      left: width * 0.02,
                    ),
                    child: Text(
                      'Package',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
