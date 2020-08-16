import 'package:flutter/material.dart';
import '../ByWeek/subjectsBar.dart';

class SubjectBarWeek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];
    for (var i = 0; i < 6; i++) {
      items.add(SubjectsBar());
    }
    return Row(
      children: <Widget>[...items],
    );
  }
}
