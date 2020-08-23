import 'package:flutter/material.dart';
import 'package:schedule_app/Models/schedule.dart';
import '../ByWeek/subjectsBar.dart';

class SubjectBarWeek extends StatelessWidget {
  final Schedule schedule;
  SubjectBarWeek({this.schedule});

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];
    for (var i = 0; i < 6; i++) {
      switch (i) {
        case 0:
          if (schedule.monday != null) {
            items.add(SubjectsBar(
              day: schedule.monday,
            ));
          }
          break;
        case 1:
          if (schedule.monday != null) {
            items.add(SubjectsBar(
              day: schedule.tuesday,
            ));
          }
          break;
        case 2:
          if (schedule.monday != null) {
            items.add(SubjectsBar(
              day: schedule.wednesday,
            ));
          }
          break;
        case 3:
          if (schedule.monday != null) {
            items.add(SubjectsBar(
              day: schedule.thursday,
            ));
          }
          break;
        case 4:
          if (schedule.monday != null) {
            items.add(SubjectsBar(
              day: schedule.friday,
            ));
          }
          break;
        case 5:
          if (schedule.monday != null) {
            items.add(SubjectsBar(
              day: schedule.saturday,
            ));
          }
          break;
      }
    }
    return Row(
      children: <Widget>[...items],
    );
  }
}
