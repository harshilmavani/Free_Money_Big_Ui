import 'package:flutter/material.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({Key? key}) : super(key: key);

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  List list1 = [
    'asstes/images/14.1.png',
    'asstes/images/14.2.png',
    'asstes/images/14.3.png',
    'asstes/images/14.4.png',
  ];
  List list2 = [
    'Transfer Visa',
    'Transfer Sona Bank',
    'Transfer Getek Bank',
    'Transfer Ateul Bank'
  ];
  List list3 = [
    '******3298',
    '******3298',
    '******3298',
    '******3298',
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: width * 0.02, top: height * 0.02),
              child: Icon(
                Icons.close,
              ),
            ),
            SizedBox(
              height: height * 0.15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.08),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Amount',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '\$20.00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.08),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top up Type',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Paypall',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.08),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transaction ID',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '234795-7456-0008',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.08),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Time & Date',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '01/03/22 , 11:00AM',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.09,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.09),
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                      ),
                    ),
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 550,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(30),
                          ),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: height * 0.02,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Choose payment methode',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(
                                        Icons.close,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: height * 0.04,
                              ),
                              Text(
                                'Manual Verification',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.03,
                              ),
                              Column(
                                children: List.generate(
                                  4,
                                  (index) => Container(
                                    margin: EdgeInsets.symmetric(
                                      vertical: height * 0.01,
                                    ),
                                    height: height * 0.1,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.02),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            list1[index],
                                            height: 85,
                                            width: 85,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: width * 0.02),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  list2[index],
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 17,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: height * 0.004,
                                                ),
                                                Text(
                                                  list3[index],
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  height: height * 0.090,
                  width: width * 2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: (Offset(1, 1)),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Choose Payment Methode',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff011A51),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.09),
              child: Icon(
                Icons.check_circle_outlined,
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Center(
              child: Text(
                'Payment Details',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff011A51),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.07,
            ),
            Center(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          height: height * 0.6,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: height * 0.04, left: width * 0.04),
                                child: Image.asset(
                                  'asstes/images/15.png',
                                  height: 140,
                                  width: 140,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.04,
                              ),
                              Text(
                                'Transaction Successful',
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.03,
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet,consectetur',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                'adipiscing elit. Eu dolor,bibendum',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Text(
                                'purus eu mi,purus lorem.',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: height * 0.06,
                              ),
                              MaterialButton(
                                onPressed: () {},
                                height: height * 0.070,
                                minWidth: width * 0.4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Color(0xffFB847C),
                                child: Text(
                                  'DONE',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                height: height * 0.07,
                minWidth: width * 0.60,
                color: Color(0xffFB847C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
