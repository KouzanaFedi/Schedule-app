import 'package:flutter/material.dart';

class DayCalendar extends StatefulWidget {
  @override
  _DayCalendarState createState() => _DayCalendarState();
}

class _DayCalendarState extends State<DayCalendar> {
  Widget createDay() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 5),
          child: Text("M",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
        ),
        Container(
          width: 30,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: Colors.white),
          child: Center(
            child: Text(
              "10",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];

    for (var i = 0; i < 7; i++) {
      items.add(createDay());
    }

    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 12),
      child: Row(
        children: <Widget>[
          ...items,
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
