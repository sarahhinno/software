import 'package:flutter/material.dart';
import 'package:software/ChildrenPersInfo.dart';
import 'package:software/addNewChild.dart';
import 'package:software/DetailsPageOfEmployee.dart'; // Import the file where SpDetailsPage is defined
import 'package:software/empPersonalInformation.dart'; // Import the file where SpDetailsPage is defined
import 'package:software/empVications.dart'; // Import the file where SpDetailsPage is defined
import 'package:software/weeklySessions.dart'; // Import the file where SpDetailsPage is defined
import 'package:software/adminPosts.dart'; // Import the file where SpDetailsPage is defined
import 'package:software/viewPosts.dart'; // Import the file where SpDetailsPage is defined

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
        ],
      )),
    );
  }
}
