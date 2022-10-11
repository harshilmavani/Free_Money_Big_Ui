import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  List name = [
    'Romin',
    'Lari bryson',
    'vraj',
    'Bhuro',
    'happy',
  ];
  List pic = [
    'asstes/images/12.1.png',
    'asstes/images/12.2.png',
    'asstes/images/12.3.png',
    'asstes/images/12.4.png',
    'asstes/images/12.5.png',
  ];
  int a = 0;
  int b = 0;
  int c = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * 0.02),
                child: Icon(
                  Icons.arrow_back,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                  ),
                  Text(
                    'Send Money',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                  Spacer(),
                  Image.asset(
                    'asstes/images/10.png',
                    height: height * 0.07,
                    width: height * 0.07,
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                'Choose Acount',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: ZoomIn(
                  duration: Duration(seconds: 5),
                  child: Image.asset(
                    'asstes/images/11.png',
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Center(
                child: Text(
                  'How much you would like to sand',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: height * 0.06,
                      width: width * 0.13,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                      child: FadeInUp(
                        child: InkWell(
                          onTap: () {
                            if (a > 0) {
                              setState(() {
                                a--;
                              });
                            }
                          },
                          child: Icon(
                            Icons.remove,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    ZoomIn(
                      child: Text(
                        '$a',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 38,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Container(
                      height: height * 0.06,
                      width: width * 0.13,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                      child: FadeInDown(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              a++;
                            });
                          },
                          child: Icon(
                            Icons.add,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: Row(
                  children: List.generate(
                    4,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          b = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: width * 0.01),
                        height: height * 0.04,
                        width: width * 0.20,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: b == index
                                ? Colors.white
                                : Colors.grey.shade200,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: b == index ? Colors.yellow : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                children: List.generate(
                  5,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        c = index;
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          height: height * 0.07,
                          width: height * 0.07,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: c == index
                                  ? Colors.black
                                  : Colors.transparent,
                              width: 2,
                            ),
                            image: DecorationImage(
                              image: AssetImage(
                                pic[index],
                              ),
                            ),
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          name[index],
                          style: TextStyle(
                            color:
                                c == index ? Colors.black : Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FadeInLeft(
                      duration: Duration(seconds: 5),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: height * 0.07,
                        minWidth: width * 0.38,
                        color: Color(0xffFB9089),
                        onPressed: () {},
                        child: Text(
                          'TAKE ME BACK',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    FadeInRight(
                      duration: Duration(seconds: 5),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: height * 0.07,
                        minWidth: width * 0.38,
                        color: Color(0xff011A51),
                        onPressed: () {},
                        child: Text(
                          'SEND MONEY',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
