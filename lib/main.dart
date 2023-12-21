import 'package:flutter/material.dart';
import 'package:software/parentPages/ChildrenPersInfo.dart';
import 'package:software/adminPages/addNewChild.dart';
import 'package:software/adminPages/DetailsPageOfEmployee.dart'; // Import the file where SpDetailsPage is defined
import 'package:software/specialestPages/empPersonalInformation.dart'; // Import the file where SpDetailsPage is defined
import 'package:software/specialestPages/empVications.dart'; // Import the file where SpDetailsPage is defined
import 'package:software/specialestPages/objectives.dart';
import 'package:software/specialestPages/objectivesSp.dart';
import 'package:software/parentPages/weeklySessions.dart'; // Import the file where SpDetailsPage is defined
import 'package:software/adminPages/adminPosts.dart'; // Import the file where SpDetailsPage is defined
import 'package:software/parentPages/viewPosts.dart'; // Import the file where SpDetailsPage is defined

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  late String id;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return newChild();
              }));
            },
            child: Text('add new child'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return spDetailsPage(
                  name: '',
                );
              }));
            },
            child: Text('page of emp'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return profile();
              }));
            },
            child: Text('profile'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return vications();
              }));
            },
            child: Text('vications'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return childProfile();
              }));
            },
            child: Text('childProfile'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return wSession();
              }));
            },
            child: Text('Weekly Sessions'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return adminPosts();
              }));
            },
            child: Text('admin Posts'),
          ),
             SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return posts();
              }));
            },
            child: Text('view Posts'),
          ),
               SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return goals();
              }));
            },
            child: Text('objectives'),
          ),
        ],
      )),
    );
  }
}
