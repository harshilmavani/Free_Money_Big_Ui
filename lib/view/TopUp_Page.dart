import 'package:flutter/material.dart';

class TopUpPage extends StatefulWidget {
  const TopUpPage({Key? key}) : super(key: key);

  @override
  State<TopUpPage> createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {
  List pic = [
    'asstes/images/13.1.png',
    'asstes/images/13.2.png',
    'asstes/images/13.3.png',
  ];

  List name = [
    'Paypall',
    'Mcdonalds',
    'Amazon',
  ];

  List list1 = [
    '**********2878',
    '**********3978',
    '*********3980',
  ];
  double a = 0;
  int b = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.02,
                vertical: height * 0.02,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.23),
                    child: Text(
                      'Tranction Datails',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0xff011A51),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Center(
              child: Text(
                'Amount',
                style: TextStyle(
                  color: Color(0xffFF897E),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Center(
              child: Text(
                '\$78.00',
                style: TextStyle(
                  color: Color(0xffFF897E),
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            SliderTheme(
              data: SliderThemeData(
                activeTrackColor: Color(0xffFF897E),
                inactiveTrackColor: Color(0xffFF897E),
                thumbColor: Color(0xffFF897E),
              ),
              child: Slider.adaptive(
                value: a,
                max: 100,
                min: 0,
                onChanged: (value) {
                  setState(() {
                    a = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: SizedBox(
                height: height * 0.22,
                child: GridView.builder(
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      childAspectRatio: 1.6 / 1.6),
                  itemBuilder: (context, index) {
                    return Container(
                      height: height * 0.05,
                      width: height * 0.05,
                      decoration: BoxDecoration(
                        color: Color(0xffFF897E),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Wallet Type',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'add',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.03, vertical: height * 0.02),
              height: height * 0.37,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: height * 0.02),
                    leading: Image.asset(
                      pic[index],
                    ),
                    title: Text(
                      name[index],
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    subtitle: Text(
                      list1[index],
                    ),
                    trailing: GestureDetector(
                      onTap: () {
                        setState(() {
                          b = index;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor:
                            b == index ? Colors.pinkAccent : Colors.grey,
                        radius: 12,
                        child: Icon(
                          Icons.check,
                          size: 13,
                          color: b == index ? Colors.white : Colors.transparent,
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
