import 'package:flutter/material.dart';

class ElectricPage extends StatefulWidget {
  const ElectricPage({Key? key}) : super(key: key);

  @override
  State<ElectricPage> createState() => _ElectricPageState();
}

class _ElectricPageState extends State<ElectricPage> {
  int a = 0;
  List name = ['Transfer', 'Withdraw', 'Top up', 'Deposit'];
  List list = [
    'asstes/images/17.1.png',
    'asstes/images/17.2.png',
    'asstes/images/17.3.png',
    'asstes/images/17.4.png',
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: height * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                ),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: width * 0.02, top: height * 0.02),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: width * 0.09,
                          top: height * 0.02,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: height * 0.07,
                              width: height * 0.07,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'asstes/images/16.png',
                                  ),
                                ),
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.03),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Welcome Back',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Rene Wells',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 170, left: 16.5),
                child: Container(
                  height: height * 0.2,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 3,
                        spreadRadius: 3,
                        offset: (Offset(0, 1)),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: height * 0.02),
                              child: Text(
                                'Balance',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: height * 0.02),
                              child: Text(
                                'Active',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xffFF897E),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          '\$7800.50',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: List.generate(
                            4,
                            (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  a = index;
                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: width * 0.027,
                                    ),
                                    height: height * 0.07,
                                    width: height * 0.07,
                                    decoration: BoxDecoration(
                                      color: a == index
                                          ? Colors.white
                                          : Colors.indigo.shade50,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        list[index],
                                        height: 40,
                                        width: 40,
                                        color: Color(0xffFF897E),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    name[index],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: height * 0.09,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.07),
            child: Row(
              children: [
                Image.asset(
                  'asstes/images/18.1.png',
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  'Electric',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Spacer(),
                Image.asset(
                  'asstes/images/18.2.png',
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  'Merchant',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.07),
            child: Row(
              children: [
                Image.asset(
                  'asstes/images/18.3.png',
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  'Internet',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  width: width * 0.2,
                ),
                Image.asset(
                  'asstes/images/18.4.png',
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  'Ticket',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.07),
            child: Row(
              children: [
                Image.asset(
                  'asstes/images/Mobile.png',
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  'Mobile',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Spacer(),
                Image.asset(
                  'asstes/images/Group 246.png',
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Text(
                  'Transfer',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.07),
            child: Row(
              children: [
                SizedBox(
                  width: width * 0.3,
                ),
                Image.asset(
                  'asstes/images/18.5.png',
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  width: width * 0.1,
                ),
                Text(
                  'More',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
