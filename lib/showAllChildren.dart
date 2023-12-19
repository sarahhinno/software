import 'package:flutter/material.dart';
import 'package:software/DetailsPageOfChildren.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:software/theme.dart';

void main() {
  runApp(MyApp());
}

class Registered_children {
  final String name;
  final String image;
  final String details;

  Registered_children(
      {required this.name, required this.image, required this.details});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TestPage(), debugShowCheckedModeBanner: false);
  }
}

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<String> children = [];
  String img = 'images/child1.png';

  Future<void> getChildrenNames() async {
    print("childrenssssssssssss");
    final childreNamesResponse =
        await http.get(Uri.parse(ip + "/sanad/getchname"));
    if (childreNamesResponse.statusCode == 200) {
      children.clear();
      String childName;
      final List<dynamic> data = jsonDecode(childreNamesResponse.body);

      for (int i = 0; i < data.length; i++) {
        print(data[i]['Fname'] + " " + data[i]['Lname']);
        childName = data[i]['Fname'] + " " + data[i]['Lname'];
        setState(() {
          children.add(childName);
        });
      }
      for (int i = 0; i < children.length; i++) {
        print("ch" + children[i]);
      }
    } else {
      print("errrrrrrrror");
    }
  }

  @override
  void initState() {
    super.initState();

    getChildrenNames();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6f35a5),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: ListView.builder(
          itemCount: children.length,
          itemBuilder: (context, index) {
            String registered_child = children[index];
            return Card(
              margin: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          _onPressed(context, registered_child);
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF6F35A5)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(29.0),
                            ),
                          ),
                        ),
                        child: Text(
                          "كـافـة الـتـفـاصـيـل",
                          style: TextStyle(fontFamily: 'myfont'),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    registered_child,
                    style: TextStyle(fontSize: 18, fontFamily: 'myfont'),
                  ),
                  Spacer(),
                  Image.asset(
                    img,
                    width: 80,
                    height: 80,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void _onPressed(BuildContext context, String name) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailsPage(name: name)),
    );
  }
}
