import 'package:flutter/material.dart';
import '../smallCard.dart';

class SubjectsBar extends StatelessWidget {
  final int greyHex = 0xFF989393;
  final List day = [
    {
      "S": "1",
      "Matière": "Fondements des systèmes d'exploitation",
      "Enseignant": "BAROUNI Yosra",
      "Type": "C",
      "Salle": "I-16",
      "Régime": "H"
    },
    {
      "S": "3",
      "Matière": "Paradigmes de programmation",
      "Enseignant": "ZALILA Siwar",
      "Type": "TP",
      "Salle": "G15",
      "Régime": "H"
    },
    {
      "S": "4",
      "Matière": "Paradigmes de programmation",
      "Enseignant": "ZALILA Siwar",
      "Type": "TP",
      "Salle": "G15",
      "Régime": "H"
    },
    {
      "S": "5",
      "Matière": "Architectures des ordinateurs",
      "Enseignant": "LAZREG Nissan",
      "Type": "TP",
      "Salle": "G17",
      "Régime": "Q_B"
    },
    {
      "S": "6",
      "Matière": "Architectures des ordinateurs",
      "Enseignant": "LAZREG Nissan",
      "Type": "TP",
      "Salle": "G17",
      "Régime": "Q_B"
    }
  ];

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
    Container empty = Container(
      width: 80,
      height: 100,
      decoration: BoxDecoration(
          border: Border(
        right: BorderSide(color: Color(greyHex)),
      )),
    );
    int current = 0;
    for (var i = 1; i <= 6; i++) {
      if (current < day.length) {
        if (int.parse(day[current]["S"]) == i) {
          items.add(subjectSpace(day[current]["Matière"], day[current]["Salle"],
              day[current]["Type"]));
          current++;
        } else {
          items.add(empty);
        }
      } else
        items.add(empty);
    }
    return Column(
      children: <Widget>[...items],
    );
  }
}
