import 'package:flutter/material.dart';
import 'package:schedule_app/Models/day.dart';
import 'package:schedule_app/Models/seance.dart';
import '../smallCard.dart';

class SubjectsBar extends StatelessWidget {
  final int greyHex = 0xFF989393;
  final Day day;
  final String regim = "Q_B";

  SubjectsBar({this.day});

  Widget subjectSpace(String subject, String place, String type) {
    return Container(
      width: 80,
      height: 100,
      child: Center(
        child: SmallCard(subject: subject, place: place, type: type),
      ),
      decoration: BoxDecoration(
          border: Border(
        right: BorderSide(color: Color(greyHex)),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];
    List<Seance> seanceValide = [];

    for (var item in day.seance) {
      if (item.regime != regim) {
        seanceValide.add(item);
      }
    }

    Container empty = Container(
      width: 80,
      height: 100,
      decoration: BoxDecoration(
          border: Border(
        right: BorderSide(color: Color(greyHex)),
      )),
    );
    int current = 1;
    int i = 0;
    while (current <= 6) {
      if (seanceValide.length > i) {
        if (seanceValide[i].time == current) {
          items.add(subjectSpace(seanceValide[i].matiere, seanceValide[i].salle,
              seanceValide[i].type));
          current++;
          i++;
        } else {
          items.add(empty);
          current++;
        }
      } else {
        items.add(empty);
        current++;
      }
    }
    return Column(
      children: <Widget>[...items],
    );
  }
}
