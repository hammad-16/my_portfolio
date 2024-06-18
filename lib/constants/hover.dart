import 'package:flutter/material.dart';

class HoveringWidget extends StatefulWidget {
  _HoveringWidgetState createState() => _HoveringWidgetState();
}

class _HoveringWidgetState extends State<HoveringWidget> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 1,

      duration: Duration(milliseconds: 200),
      padding: EdgeInsets.only(
          top: (isHover)? 25 : 30.0, bottom:!(isHover)? 25 : 30),
      child: InkWell(
        onTap: () {},
        child: Text("Hover Button"),
        onHover: (val) {
          setState(() {
            isHover = val;
          });
        },
      ),
    );
  }
}