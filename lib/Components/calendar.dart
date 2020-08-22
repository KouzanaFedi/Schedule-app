import 'package:flutter/material.dart';
import 'dayCalendar.dart';
import 'package:schedule_app/Icons/custom_icons_icons.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  final int whiteShade = 0xFFF3F1EF;
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 135,
      width: screenWidth,
      decoration: BoxDecoration(
        color: Color(whiteShade),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      padding: EdgeInsets.fromLTRB(15, 5, 5, 15),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Tuesday 25, Dec",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Row(
                children: <Widget>[
                  ClipOval(
                    child: Material(
                      color: Colors.transparent, // button color
                      child: InkWell(
                        child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Icon(CustomIcons.calendar)),
                        onTap: () {},
                      ),
                    ),
                  ),
                  ClipOval(
                    child: Material(
                      color: Colors.transparent, // button color
                      child: InkWell(
                        child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Icon(CustomIcons.menu)),
                        onTap: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          DayCalendar()
        ],
      ),
    );
  }
}
