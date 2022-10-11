import 'package:flutter/material.dart';

class WithdarwPage extends StatefulWidget {
  const WithdarwPage({Key? key}) : super(key: key);

  @override
  State<WithdarwPage> createState() => _WithdarwPageState();
}

class _WithdarwPageState extends State<WithdarwPage> {
  double a = 0;
  int b = 0;
  int c = 0;
  int d = 0;
  List name = [
    '\$05',
    '\$10',
    '\$15',
    '\$20',
    '\$50',
    '\$100',
    '\$500',
    '\$1k'
  ];
  List pic = [
    'asstes/images/23.png',
    'asstes/images/24.png',
    'asstes/images/25.png',
  ];
  List name2 = [
    'Personal Account',
    'Business Account',
    'Saving Account',
  ];
  List list1 = [
    '**** *** 2878',
    '**** *** 3720',
    '**** *** 3980',
  ];
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
                  horizontal: width * 0.02, vertical: height * 0.02),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                  ),
                  SizedBox(
                    width: width * 0.3,
                  ),
                  Text(
                    'Withdarw',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff011A51),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.02),
            child: Text(
              'Amount',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.07,
          ),
          Center(
            child: Text(
              '\$${a.toStringAsFixed(0)}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.003,
          ),
          Center(
            child: Text(
              'Your Balance \$9840.50',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          SliderTheme(
            data: SliderThemeData(
              activeTrackColor: Color(0xffFF897E),
              inactiveTrackColor: Color(0xffFF897E),
              thumbColor: Color(0xffFF897E),
            ),
            child: Slider.adaptive(
              divisions: 200,
              value: a,
              max: 1000,
              min: 0,
              label: '\$${a.toStringAsFixed(0)}',
              onChanged: (value) {
                setState(() {
                  a = value;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: SizedBox(
              height: height * 0.25,
              child: GridView.builder(
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: 1.6 / 1.6),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        c = index;
                      });
                    },
                    child: Container(
                      height: height * 0.05,
                      width: height * 0.05,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: c == index
                              ? Colors.transparent
                              : Colors.grey.shade400,
                        ),
                        color: c == index ? Color(0xffFF897E) : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          name[index],
                          style: TextStyle(
                            color: c == index ? Colors.white : Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
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
                  contentPadding: EdgeInsets.symmetric(vertical: height * 0.01),
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
                        d = index;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor:
                          d == index ? Colors.pinkAccent : Colors.grey,
                      radius: 12,
                      child: Icon(
                        Icons.check,
                        size: 13,
                        color: d == index ? Colors.white : Colors.transparent,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
