import 'package:flutter/material.dart';
import '../smallCard.dart';

class TimeBar extends StatelessWidget {
  final int greyHex = 0xFF989393;

  Widget timeSpace(int i) {
    return Container(
      child: Center(
        child: Text(
          "S$i",
          style: TextStyle(color: Color(greyHex), fontWeight: FontWeight.w500),
        ),
      ),
      height: 100,
      width: 67,
      decoration: BoxDecoration(
          border: Border(
        right: BorderSide(color: Color(greyHex)),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> barItems = [];
    for (var i = 1; i <= 6; i++) {
      barItems.add(timeSpace(i));
    }

    return Container(
      child: Column(
        children: <Widget>[...barItems],
      ),
    );
  }
}
