import 'package:flutter/material.dart';
import 'package:plant_ui/UI/BottomNavBar/TabController/ViewControllers/indoor.dart';
import 'package:plant_ui/UI/BottomNavBar/TabController/ViewControllers/organic.dart';
import 'package:plant_ui/UI/BottomNavBar/TabController/ViewControllers/outdoor.dart';
import 'package:plant_ui/UI/BottomNavBar/TabController/ViewControllers/synthesisi.dart';

class SecondTab extends StatefulWidget {
  @override
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(24),
          child: TabBar(
            isScrollable: false,
            labelColor: Colors.black54,
            unselectedLabelColor: Colors.black38,
            labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            unselectedLabelStyle:
                TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            indicatorColor: Colors.transparent,
            tabs: [
              Tab(text: 'Synthesis'),
              Tab(text: 'Organic'),
              Tab(text: 'Outdoor'),
              Tab(text: 'Indoor')
            ],
          ),
        ),
        body: TabBarView(
          children: [Synthesis(), Organic(), Outdoor(), Indoor()],
        ),
      ),
    );
  }
}
