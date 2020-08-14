import 'package:flutter/material.dart';
import '../Components/subjectCard.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SubjectCard(
        subject: 'Methodologies d’analyse et de conception de logiciels',
        place: 'I15',
        prof: 'SAIDAINE Mhamed',
        type: 'C',
        time: 'S1',
      ),
    ));
  }
}
