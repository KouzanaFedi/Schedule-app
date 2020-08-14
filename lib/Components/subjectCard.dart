import 'package:flutter/material.dart';
import '../Interfaces/CardColor.dart';

class SubjectCard extends StatelessWidget {
  final String subject, prof, place, type, time;
  final CardColor red = CardColor(0xFFED5B37, 0xFFC2402B);
  final CardColor yellow = CardColor(0xFFF9A11C, 0xFFE8900E);
  final CardColor blue = CardColor(0xFF56C9DE, 0xFF2BAED2);

  SubjectCard(
      {@required this.subject,
      @required this.prof,
      @required this.place,
      @required this.type,
      @required this.time});

  @override
  Widget build(BuildContext context) {
    CardColor currentColor;
    switch (this.type) {
      case 'C':
        currentColor = this.red;
        break;
      case 'TD':
        currentColor = this.yellow;
        break;
      case 'TP':
        currentColor = this.blue;
        break;
    }

    Container topCard = Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(currentColor.color)),
        width: 280,
        height: 105,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
              child: Text(
                this.subject,
                style: TextStyle(color: Colors.white, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    this.prof,
                    style: TextStyle(color: Colors.white, fontSize: 11),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    this.place,
                    style: TextStyle(color: Colors.white, fontSize: 11),
                    textAlign: TextAlign.right,
                  )
                ],
              ),
            ),
          ],
        ));

    Container bottomCard = Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(currentColor.shade)),
      width: 280,
      height: 115,
    );

    Container timeCard = Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Color(currentColor.shade)),
      child: Center(
        child: Text(
          this.time,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      width: 35,
      height: 35,
    );

    return Stack(
      children: <Widget>[bottomCard, topCard, timeCard],
    );
  }
}
