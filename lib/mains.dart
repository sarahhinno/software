import 'package:flutter/material.dart';
import 'package:software/DetailsPage.dart';
<<<<<<< HEAD
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
=======
import 'package:software/adminPages/chart1.dart';
import 'package:software/adminPages/chart3.dart';
import 'package:software/adminPages/report.dart';
import 'package:software/adminPages/showAllChildren.dart';
import 'package:software/adminPages/showAllEmployee.dart';
import 'package:software/adminPages/view.dart';
import 'package:software/parentPages/specialistEvaluation.dart';
// Import the file where SpDetailsPage is defined
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
=======
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.push(context, MaterialPageRoute(builder: (context) {
              //       return charts();
              //     }));
              //   },
              //   child: Text('charts'),
              // ),
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return adminPosts();
                  }));
                },
                child: Text('admin Posts'),
              ),
<<<<<<< HEAD
              SizedBox(height: 10),
=======
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return posts();
                  }));
                },
                child: Text('view Posts'),
              ),
<<<<<<< HEAD
              SizedBox(height: 10),
=======
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return goals();
                  }));
                },
                child: Text('objectives'),
              ),
<<<<<<< HEAD
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
=======
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return view();
                  }));
                },
                child: Text('view'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return viewChildren();
                  }));
                },
                child: Text('showChildren'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return viewSpecialest();
                  }));
                },
                child: Text('showEmp'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return chartOne();
                  }));
                },
                child: Text('chartOne'),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return chartThree();
                  }));
                },
                child: Text('chartThree'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return spEvaluation();
                  }));
                },
                child: Text('spEvaluation'),
              ),
               ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return report();
                  }));
                },
                child: Text('report'),
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
              ),
            ],
          )),
    );
  }
}
<<<<<<< HEAD
// _calenderState
=======
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
