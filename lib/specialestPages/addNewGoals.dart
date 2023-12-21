import 'package:flutter/material.dart';
import 'package:software/theme.dart';

class newGoals extends StatefulWidget {
  @override
  _newGoalsState createState() => _newGoalsState();
}

class _newGoalsState extends State<newGoals> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          " إضـافـة أهـداف جـديـدة",
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'myFont',
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
      ),
    );
  }
}
