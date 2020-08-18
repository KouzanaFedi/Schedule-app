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
      fontWeight: FontWeight.w300, fontSize: 20, color: Color(0xFF989393));
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
  Widget byWeek;
  bool firstSousGroup;

  @override
  void initState() {
    setState(() {
      byWeek = ByWeek(key: UniqueKey());
      currentSchedule = byWeek;
      weekTextStyle = focusedTextStyle;
      weekBorder = focusedBorder;
      dayTextStyle = notFocusedTextStyle;
      dayBorder = notFocusedBorder;
      firstSousGroup = true;
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
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    firstSousGroup = !firstSousGroup;
                  });
                },
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
                            firstSousGroup ? "1" : "2",
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
            ),
          ],
        ),
        Row(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  if (currentSchedule != byWeek) {
                    currentSchedule = byWeek;
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
                  if (currentSchedule != Center()) {
                    currentSchedule = Center(
                      key: UniqueKey(),
                      child: Container(
                        width: 550,
                        height: 550,
                        color: Colors.amberAccent,
                      ),
                    );
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
        Flexible(
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            child: currentSchedule,
            transitionBuilder: (child, animation) {
              final inAnimation =
                  Tween<Offset>(begin: Offset(-1.0, 0.0), end: Offset(0.0, 0.0))
                      .animate(animation);
              final outAnimation =
                  Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
                      .animate(animation);
              if (child.key == byWeek.key) {
                return SlideTransition(
                  position: outAnimation,
                  child: child,
                );
              } else {
                return SlideTransition(
                  position: inAnimation,
                  child: child,
                );
              }
            },
          ),
        )
      ],
    ));
  }
}
