import 'package:flutter/material.dart';
import 'package:plant_ui/UI/BottomNavBar/TabController/firsttab.dart';
import 'package:plant_ui/UI/BottomNavBar/TabController/secondtab.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              height: 48,
              decoration: BoxDecoration(
                  color: Color(0xffedf7fb),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                    hintText: 'Search your plant',
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.keyboard),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(height: 16),
            Expanded(flex: 3, child: FirstTab()),
            SizedBox(height: 12),
            Expanded(flex: 2, child: SecondTab()),
          ],
        ),
      ),
    );
  }
}
