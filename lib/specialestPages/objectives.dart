import 'package:flutter/material.dart';
import 'package:software/specialestPages/addNewGoals.dart';
import 'package:software/specialestPages/evaluatingGoals.dart';
import 'package:software/specialestPages/objectivesSp.dart';
import 'package:software/theme.dart';
import 'package:software/components/rounded_button.dart';
import 'package:software/parentPages/detailsOfSessions.dart';

class goals extends StatefulWidget {
  @override
  _goalsState createState() => _goalsState();
}

class _goalsState extends State<goals> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          " الأهـداف",
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'myFont',
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 500,
              child: RoundedButton(
                color: primaryLightColor,
                text: "الأهـداف الـحـالـيـة",
                textColor: primaryColor,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => objectives(),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: 500,
              child: RoundedButton(
                color: primaryLightColor,
                text: "الأهـداف الـمنـجـزة بـالـكـامـل",
                textColor: primaryColor,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => objectives(),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: 500,
              child: RoundedButton(
                color: primaryLightColor,
                text: "تـقـيـيـم الأهـداف",
                textColor: primaryColor,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => evalobjec(),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: 500,
              child: RoundedButton(
                color: primaryLightColor,
                text: "إضافـة أهـداف جـديـدة",
                textColor: primaryColor,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => newGoals(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
