import 'package:flutter/material.dart';
import 'package:plant_ui/UI/BottomNavBar/TabController/ViewControllers/bestseller.dart';
import 'package:plant_ui/UI/BottomNavBar/TabController/ViewControllers/recomendation.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(44),
          child: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: TabBar(
              isScrollable: false,
              labelColor: Colors.black54,
              unselectedLabelColor: Colors.black38,
              labelStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              unselectedLabelStyle:
                  TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              indicatorColor: Colors.transparent,
              tabs: [Tab(text: 'Recomended'), Tab(text: 'Best seller')],
            ),
          ),
        ),
        body: TabBarView(
          children: [Recomendation(), BestSeller()],
        ),
      ),
    );
  }
}
