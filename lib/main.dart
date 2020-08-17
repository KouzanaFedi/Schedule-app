import 'package:flutter/material.dart';
import 'Views/home.dart';
import 'Views/schedule.dart';
import 'Components/ByWeek/byWeek.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Schedule(),
      theme: ThemeData(),
    );
  }
}
