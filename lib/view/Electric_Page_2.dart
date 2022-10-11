import 'package:flutter/material.dart';

class ElectricPage2 extends StatefulWidget {
  const ElectricPage2({Key? key}) : super(key: key);

  @override
  State<ElectricPage2> createState() => _ElectricPage2State();
}

class _ElectricPage2State extends State<ElectricPage2>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  List items = ['Electricity Token', 'Bills'];

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TabBar(
                  indicatorColor: Colors.transparent,
                  controller: tabController,
                  onTap: (value) {
                    setState(() {
                      selected = value;
                    });
                  },
                  tabs: List.generate(
                    items.length,
                    (index) => Container(
                      height: 40,
                      width: 140,
                      decoration: BoxDecoration(
                          color: selected == index
                              ? Colors.indigo
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          items[index],
                          style: TextStyle(
                              color: selected == index
                                  ? Colors.white
                                  : Colors.grey),
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
                    Container(
                      height: 400,
                      color: Colors.red,
                    ),
                    Container(
                      height: 400,
                      color: Colors.green,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
