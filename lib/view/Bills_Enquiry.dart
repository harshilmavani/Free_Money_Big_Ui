import 'package:flutter/material.dart';

class BillsEnquriy extends StatefulWidget {
  const BillsEnquriy({Key? key}) : super(key: key);

  @override
  State<BillsEnquriy> createState() => _BillsEnquriyState();
}

class _BillsEnquriyState extends State<BillsEnquriy>
    with SingleTickerProviderStateMixin {
  int a = 0;
  TabController? tabController;
  List items = ['Electricity Token', 'Bills'];
  List pic = [
    'asstes/images/20.png',
    'asstes/images/21.png',
    'asstes/images/22.png',
  ];
  List name = ['My House', 'Electric Office', 'VIlla Bali'];
  List name2 = ['**** *** 3980', '**** *** 3980', '**** *** 3980'];
  List list = ['\$15', '\$35', '\$5'];

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: Column(
        children: [
          SizedBox(
            height: height * 0.08,
          ),
          Center(
            child: Image.asset(
              'asstes/images/19.png',
              height: height * 0.07,
              width: height * 0.07,
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            '\$50.00',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bills Enquiry',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'See All',
                            style: TextStyle(
                              color: Color(0xffFF897E),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Column(
                      children: List.generate(
                        3,
                        (index) => Container(
                          margin: EdgeInsets.symmetric(vertical: height * 0.02),
                          height: height * 0.11,
                          width: width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: width * 0.02),
                                child: Image.asset(
                                  pic[index],
                                  height: height * 0.07,
                                  width: height * 0.07,
                                ),
                              ),
                              SizedBox(
                                width: width * 0.03,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    name[index],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Text(
                                    name2[index],
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(right: width * 0.04),
                                child: Text(
                                  list[index],
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
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
          ),
        ],
      ),
    );
  }
}
