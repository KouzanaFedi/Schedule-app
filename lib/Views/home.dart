import 'package:flutter/material.dart';
import '../Components/subjectCard.dart';
import '../Components/smallCard.dart';
import '../Components/ByWeek/timeBar.dart';
import '../Components/ByWeek/dayBar.dart';
import '../Components/ByWeek/subjectsBar.dart';
import '../Components/ByWeek/subjectBarWeek.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[Expanded(child: SubjectBarWeek())],
    ));
  }
}
