import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class InternetDataPage extends StatefulWidget {
  const InternetDataPage({Key? key}) : super(key: key);

  @override
  State<InternetDataPage> createState() => _InternetDataPageState();
}

class _InternetDataPageState extends State<InternetDataPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: height * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                ),
                child: SafeArea(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.01),
                        child: Text(
                          'Internet Data',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.1,
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
            ],
          ),
          SizedBox(
            height: height * 0.1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            child: Row(
              children: [
                Image.asset(
                  'asstes/images/28.png',
                  height: height * 0.07,
                  width: height * 0.07,
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  'Freedom Internet\n30 Day',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Text(
                  '\$10',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: DottedLine(
              direction: Axis.horizontal,
              lineLength: width * 0.85,
              lineThickness: height * 0.0005,
              dashLength: 5.0,
              dashColor: Colors.black,
              // dashGradient: [Colors.red, Colors.blue],
              // dashRadius: 0.0,
              // dashGapLength: 4.0,
              // dashGapColor: Colors.transparent,
              // dashGapGradient: [Colors.red, Colors.blue],
              // dashGapRadius: 0.0,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.15),
            child: Text(
              'New 42 GB + Call 2hours + Streaming 5 Gb ,\nActive 30 Day',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
