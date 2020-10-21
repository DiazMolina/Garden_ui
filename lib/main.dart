import 'package:flutter/material.dart';
import 'package:plant_ui/UI/BottomNavBar/navcontroller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant UI',
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
