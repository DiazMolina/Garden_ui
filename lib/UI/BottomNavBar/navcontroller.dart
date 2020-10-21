import 'package:flutter/material.dart';
import 'package:plant_ui/UI/BottomNavBar/Pages/account.dart';
import 'package:plant_ui/UI/BottomNavBar/Pages/basket.dart';
import 'package:plant_ui/UI/BottomNavBar/Pages/chat.dart';
import 'package:plant_ui/UI/BottomNavBar/Pages/home.dart';
import 'package:plant_ui/UI/BottomNavBar/Pages/whislist.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
  final pages = [Home(), Chat(), Whislist(), Basket(), Account()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black54),
          backgroundColor: Colors.transparent,
          title: Text('Plants Garden',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                  color: Colors.black54)),
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(Icons.notifications, color: Colors.black54),
                onPressed: () {}),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          currentIndex: index,
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.black45,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.black45), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat, color: Colors.black45), label: 'Chat'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border, color: Colors.black45),
                label: 'Whislist'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket, color: Colors.black45),
                label: 'Basket'),
            BottomNavigationBarItem(
                icon: Icon(Icons.people, color: Colors.black45),
                label: 'Profile'),
          ],
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
        ),
        body: pages[index],
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text('Profile User'),
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                title: Text('Profile'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
