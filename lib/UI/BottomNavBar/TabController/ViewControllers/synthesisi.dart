import 'package:flutter/material.dart';
import 'package:plant_ui/UI/Widgets/reusable_container.dart';

class Synthesis extends StatefulWidget {
  @override
  _SynthesisState createState() => _SynthesisState();
}

class _SynthesisState extends State<Synthesis> {
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
          SizedBox(width: 20),
          ReusableContainer(
              name: 'crassulaovata',
              url: 'assets/crassulaovata.png',
              price: '40.9'),
          SizedBox(width: 20),
          ReusableContainer(
              name: 'crassulaovata',
              url: 'assets/crassulaovata.png',
              price: '24.9'),
          SizedBox(width: 20),
          ReusableContainer(
              name: 'alphaplant', url: 'assets/alphaplant.png', price: '22.5'),
        ],
      ),
    );
  }
}
