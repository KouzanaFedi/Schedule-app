import 'package:flutter/material.dart';

class DayBar extends StatelessWidget {
  final int greyHex = 0xFF989393;
  final List<String> days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

  Widget daySpace(String day) {
    return Container(
      child: Center(
        child: Text(
          day,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),
      height: 35,
      width: 80,
      decoration: BoxDecoration(
          border: Border(right: BorderSide(color: Color(greyHex)))),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> daysItems = [];
    for (var day in days) {
      daysItems.add(daySpace(day));
    }
    return Row(
      children: <Widget>[...daysItems],
    );
  }
}
