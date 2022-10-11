import 'package:flutter/material.dart';
import 'Bills_Enquiry.dart';
import 'electricity_bill.dart';

class El2 extends StatefulWidget {
  const El2({Key? key}) : super(key: key);

  @override
  State<El2> createState() => _El2State();
}

class _El2State extends State<El2> with SingleTickerProviderStateMixin {
  int a = 0;
  TabController? tabController;
  List items = ['Electricity Token', 'Bills'];

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
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.03, top: height * 0.02),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                  ),
                  SizedBox(
                    width: width * 0.3,
                  ),
                  Text(
                    'Electric',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff011A51),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Container(
              height: height * 0.07,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TabBar(
                indicatorColor: Colors.transparent,
                controller: tabController,
                onTap: (value) {
                  setState(() {
                    a = value;
                  });
                },
                tabs: List.generate(
                  items.length,
                  (index) => Container(
                    height: height * 0.05,
                    width: width * 0.40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: a == index ? Colors.indigo : Colors.transparent,
                    ),
                    child: Center(
                      child: Text(
                        items[index],
                        style: TextStyle(
                          color: a == index ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                ElectricityBill(),
                BillsEnquriy(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
