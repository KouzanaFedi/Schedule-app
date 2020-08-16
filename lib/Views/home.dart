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
// SubjectCard(
//         subject: 'Methodologies d’analyse et de conception de logiciels',
//         place: 'I15',
//         prof: 'SAIDAINE Mhamed',
//         type: 'C',
//         time: 'S1',
//       ),
// SmallCard(
//         subject: 'Methodologies d’analyse et de conception de logiciels',
//         place: 'I15',
//         type: 'TP',
//       ),
