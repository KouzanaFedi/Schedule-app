import 'package:flutter/material.dart';
import 'package:schedule_app/Models/group.dart';
import 'dayBar.dart';
import 'subjectBarWeek.dart';
import 'timeBar.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';

class ByWeek extends StatefulWidget {
  final Group schedule;
  ByWeek({Key key, this.schedule}) : super(key: key);

  @override
  _ByWeekState createState() => _ByWeekState();
}

class _ByWeekState extends State<ByWeek> {
  LinkedScrollControllerGroup _controllersH;
  ScrollController _controller1H;
  ScrollController _controller2H;
  LinkedScrollControllerGroup _controllersV;
  ScrollController _controller1V;
  ScrollController _controller2V;
  final int greyHex = 0xFF989393;

  @override
  void initState() {
    _controllersH = LinkedScrollControllerGroup();
    _controller1H = _controllersH.addAndGet();
    _controller2H = _controllersH.addAndGet();

    _controllersV = LinkedScrollControllerGroup();
    _controller1V = _controllersV.addAndGet();
    _controller2V = _controllersV.addAndGet();
    super.initState();
  }

  @override
  void dispose() {
    _controller1H.dispose();
    _controller2H.dispose();

    _controller1V.dispose();
    _controller2V.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Container emptySpace = Container(
      height: 35,
      width: 67,
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(color: Color(greyHex)),
        ),
      ),
    );
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            emptySpace,
            Flexible(
              child: SingleChildScrollView(
                controller: _controller1V,
                child: TimeBar(),
              ),
            ),
          ],
        ),
        Flexible(
          child: Column(
            children: <Widget>[
              SingleChildScrollView(
                controller: _controller1H,
                scrollDirection: Axis.horizontal,
                child: DayBar(),
              ),
              Flexible(
                child: ListView(
                  padding: EdgeInsets.zero,
                  controller: _controller2V,
                  children: <Widget>[
                    SingleChildScrollView(
                      controller: _controller2H,
                      scrollDirection: Axis.horizontal,
                      child: SubjectBarWeek(
                        schedule: widget.schedule.group1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
