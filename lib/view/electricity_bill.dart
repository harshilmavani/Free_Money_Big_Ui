import 'package:flutter/material.dart';

class ElectricityBill extends StatefulWidget {
  const ElectricityBill({Key? key}) : super(key: key);

  @override
  State<ElectricityBill> createState() => _ElectricityBillState();
}

class _ElectricityBillState extends State<ElectricityBill> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.10,
            ),
            Container(
              height: height * 0.10,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: height * 0.01, left: width * 0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Enter your token"),
                          TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.02),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      onPressed: () {},
                      height: height * 0.05,
                      minWidth: width * 0.03,
                      color: Colors.blue.shade50,
                      child: Text("Check"),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Container(
              height: height * 0.1,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.01),
                      child: Text(
                        'Enter amount',
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: MaterialButton(
        onPressed: () {},
        height: 50,
        minWidth: 150,
        color: Color(0xffFB847C),
        child: Text("Buy"),
      ),
    );
  }
}
