import 'package:flutter/material.dart';
import 'package:plant_ui/UI/Widgets/reusable_container.dart';

class Recomendation extends StatefulWidget {
  @override
  _RecomendationState createState() => _RecomendationState();
}

class _RecomendationState extends State<Recomendation> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ReusableContainer(
              name: 'alphaplant', url: 'assets/alphaplant.png', price: '22.5'),
          SizedBox(width: 25),
          ReusableContainer(
              name: 'crassulaovata',
              url: 'assets/crassulaovata.png',
              price: '40.9'),
          SizedBox(width: 25),
          ReusableContainer(
              name: 'crassulaovata', url: 'assets/img2.png', price: '24.9'),
          SizedBox(width: 25),
          ReusableContainer(
              name: 'alphaplant', url: 'assets/img1.png', price: '22.5'),
        ],
      ),
    );
  }
}
