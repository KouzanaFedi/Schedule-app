import 'package:flutter/material.dart';
import '../Models/cardColor.dart';

class SmallCard extends StatelessWidget {
  final String subject, place, type;
  final CardColor red = CardColor(0xFFED5B37, 0xFFC2402B);
  final CardColor yellow = CardColor(0xFFF9A11C, 0xFFE8900E);
  final CardColor blue = CardColor(0xFF56C9DE, 0xFF2BAED2);

  SmallCard({
    @required this.subject,
    @required this.place,
    @required this.type,
  });

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
        width: 66,
        height: 81,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
              child: Text(
                this.subject,
                style: TextStyle(color: Colors.white, fontSize: 8),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              this.place,
              style: TextStyle(color: Colors.white, fontSize: 6),
              textAlign: TextAlign.right,
            ),
          ],
        ));

    Container bottomCard = Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(currentColor.shade)),
      width: 66,
      height: 88,
    );

    return Stack(
      children: <Widget>[bottomCard, topCard],
    );
  }
}
