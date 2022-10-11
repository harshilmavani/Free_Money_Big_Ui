import 'package:flutter/material.dart';

class BalanceProfile extends StatefulWidget {
  const BalanceProfile({Key? key}) : super(key: key);

  @override
  State<BalanceProfile> createState() => _BalanceProfileState();
}

class _BalanceProfileState extends State<BalanceProfile> {
  List list1 = [
    'asstes/images/9.1.png',
    'asstes/images/9.2.png',
    'asstes/images/9.3.png',
    'asstes/images/9.4.png',
  ];
  List name = ['Paypall', 'Apple', 'Mcdonalds', 'Amazon'];
  List name2 = [
    '+0.254214 BTC',
    '+0.252144 BTC',
    '+0.335468 BTC',
    '+0.665417 BTC'
  ];
  List list2 = ['24 Mar 2022', '25 Mar 2022', '26 Mar 2022', '27 Mar 2022'];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: height * 0.05, left: width * 0.09),
              child: Row(
                children: [
                  Container(
                    height: height * 0.07,
                    width: height * 0.07,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(
                        color: Colors.white,
                        width: width * 0.01,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Back',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.002,
                        ),
                        Text(
                          'Rene wells',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.09),
              child: Text(
                'Available Balance',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.005,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.09),
              child: Text(
                '\$17,000',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Expanded(
              child: Container(
                height: height * 0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: height * 0.05, left: width * 0.07),
                      child: Text(
                        'Operations',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.07, right: width * 0.07),
                      child: MaterialButton(
                        onPressed: () {},
                        height: height * 0.058,
                        minWidth: width * 0.9,
                        color: Color(0xff011A51),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'SEND MONEY',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.07),
                      child: Text(
                        'Recent Transactions',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.4,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                        child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(top: height * 0.01),
                              child: ListTile(
                                leading: Image.asset(
                                  list1[index],
                                  height: height * 0.06,
                                  width: height * 0.06,
                                ),
                                title: Text(
                                  name[index],
                                ),
                                subtitle: Text(
                                  name2[index],
                                ),
                                trailing: Text(
                                  list2[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
