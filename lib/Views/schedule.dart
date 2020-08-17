import 'package:flutter/material.dart';
import '../Components/ByWeek/byWeek.dart';
import '../Components/calendar.dart';

class Schedule extends StatefulWidget {
  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  final int whiteShade = 0xFFF3F1EF;
  final int grey = 0xFF989393;
  Widget currentSchedule;
  final TextStyle focusedTextStyle = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 20, color: Color(0xFF000000));
  final TextStyle notFocusedTextStyle = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 20, color: Color(0xFF989393));
  final Border focusedBorder = Border(
    bottom: BorderSide(width: 2, color: Color(0xFF000000)),
  );
  final Border notFocusedBorder = Border(
    bottom: BorderSide(width: 1, color: Color(0xFF989393)),
  );
  TextStyle weekTextStyle;
  TextStyle dayTextStyle;
  Border weekBorder;
  Border dayBorder;

  @override
  void initState() {
    setState(() {
      currentSchedule = ByWeek();
      weekTextStyle = focusedTextStyle;
      weekBorder = focusedBorder;
      dayTextStyle = notFocusedTextStyle;
      dayBorder = notFocusedBorder;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Column(
      children: <Widget>[
        Calendar(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Schedule",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 7.5, left: 7.5),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(whiteShade),
                      ),
                      child: Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        ),
                      ),
                      height: 30,
                      width: 30,
                    ),
                  ),
                  Icon(
                    Icons.cached,
                    size: 45,
                    textDirection: TextDirection.rtl,
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  if (currentSchedule != ByWeek()) {
                    currentSchedule = ByWeek();
                    weekTextStyle = focusedTextStyle;
                    weekBorder = focusedBorder;
                    dayTextStyle = notFocusedTextStyle;
                    dayBorder = notFocusedBorder;
                  }
                });
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 7),
                width: screenWidth * 0.5,
                child: Center(
                  child: Text("Week", style: weekTextStyle),
                ),
                decoration: BoxDecoration(border: weekBorder),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (currentSchedule != Container()) {
                    currentSchedule = Container();
                    weekTextStyle = notFocusedTextStyle;
                    weekBorder = notFocusedBorder;
                    dayTextStyle = focusedTextStyle;
                    dayBorder = focusedBorder;
                  }
                });
              },
              child: Container(
                width: screenWidth * 0.5,
                padding: EdgeInsets.only(bottom: 7),
                child: Center(
                  child: Text("Day", style: dayTextStyle),
                ),
                decoration: BoxDecoration(border: dayBorder),
              ),
            ),
          ],
        ),
        Flexible(child: currentSchedule)
      ],
    ));
  }
}
