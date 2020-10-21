import 'package:flutter/material.dart';

class ReusableContainer extends StatefulWidget {
  final String name;
  final String price;
  final String url;

  ReusableContainer({this.name, this.price, this.url});

  @override
  _ReusableContainerState createState() => _ReusableContainerState();
}

class _ReusableContainerState extends State<ReusableContainer> {
  bool ontap = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      decoration: BoxDecoration(
          color: Color(0xffedf7fb),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, right: 8),
            child: GestureDetector(
              onTap: () {
                ontap = !ontap;
                setState(() {});
              },
              child: Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: ontap == false
                      ? Icon(Icons.favorite_border)
                      : Icon(
                          Icons.favorite,
                          color: Colors.redAccent,
                        ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Image.asset(
                widget.url,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(widget.name,
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('\$ ${widget.price}',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 12)
        ],
      ),
    );
  }
}
