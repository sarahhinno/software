import 'package:flutter/material.dart';
import 'package:software/DetailsPage.dart';
import 'package:software/adminPages/DetailsPageOfChildren.dart';
import 'package:software/adminPages/addNewSpecialest.dart';
import 'package:software/adminPages/adminHome.dart';
import 'package:software/adminPages/calender.dart';
import 'package:software/adminPages/dailyScheduale.dart';
import 'package:software/adminPages/showAllChildren.dart';
import 'package:software/adminPages/showAllEmployee.dart';
import 'package:software/adminPages/viewemployeeToChat.dart';
import 'package:software/auuth/login.dart';
import 'package:software/auuth/signup.dart';
import 'package:software/parentPages/ChildrenPersInfo.dart';
import 'package:software/adminPages/addNewChild.dart';
import 'package:software/adminPages/DetailsPageOfEmployee.dart'; // Import the file where SpDetailsPage is defined
import 'package:software/parentPages/completeChildProfile.dart';
import 'package:software/specialestPages/completeEmployeeProfile.dart';
import 'package:software/specialestPages/empPersonalInformation.dart'; // Import the file where SpDetailsPage is defined
import 'package:software/specialestPages/empVications.dart'; // Import the file where SpDetailsPage is defined
import 'package:software/specialestPages/homePage.dart';
import 'package:software/specialestPages/objectives.dart';
import 'package:software/specialestPages/objectivesSp.dart';
import 'package:software/parentPages/weeklySessions.dart'; // Import the file where SpDetailsPage is defined
import 'package:software/adminPages/adminPosts.dart'; // Import the file where SpDetailsPage is defined
import 'package:software/parentPages/viewPosts.dart';
import 'package:software/specialestPages/sessionNotes.dart'; // Import the file where SpDetailsPage is defined

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
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
                    return newSpecialest();
                  }));
                },
                child: Text('add new sp'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return viewSpecialest();
                  }));
                },
                child: Text('viewSpecialest'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return viewChildren();
                  }));
                },
                child: Text('viewChildren'),
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
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return adminChat();
                  }));
                },
                child: Text('admin Chat'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return completeProfileCh();
                  }));
                },
                child: Text('complete Profile ch'),
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
                child: Text('spDetailsPage'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailsOfChild(
                      name: '',
                    );
                  }));
                },
                child: Text('DetailsPage'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return spHomePage(
                      id: '',
                      name: '',
                    );
                  }));
                },
                child: Text('spHomePage'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return newSpecialest();
                  }));
                },
                child: Text('add'),
              ),
            ],
          )),
    );
  }
}
// _calenderState