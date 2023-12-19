import 'package:flutter/material.dart';
import 'package:software/DetailsPageOfEmployee.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:software/theme.dart';

void main() {
  runApp(MyApp());
}

class Employee {
  final String name;
  final String image;
  final String details;
  Employee({required this.name, required this.image, required this.details});
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
  String id = "";

  List<String> EMP = [];
  String img = 'images/person4.png';
  late final List<dynamic> data;

  Future<void> getEmployeeName() async {
    // print("childrenssssssssssss");
    final EmployeeNamesResponse =
        await http.get(Uri.parse(ip + "/sanad/getspname"));
    if (EmployeeNamesResponse.statusCode == 200) {
      EMP.clear();
      String EmployeeName;
      data = jsonDecode(EmployeeNamesResponse.body);

      for (int i = 0; i < data.length; i++) {
        print(data[i]['Fname'] + " " + data[i]['Lname']);
        EmployeeName = data[i]['Fname'] + " " + data[i]['Lname'];
        setState(() {
          EMP.add(EmployeeName);
        });
      }
      for (int i = 0; i < EMP.length; i++) {
        print("ch" + EMP[i]);
      }
    } else {
      print("errrrrrrrror");
    }
  }

  @override
  void initState() {
    super.initState();

    getEmployeeName();
  }

  void _onPressed(BuildContext context, String name) {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => DetailsPage(name: name)),
    // );
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
          itemCount: EMP.length,
          itemBuilder: (context, index) {
            String employee = EMP[index];
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
                          id = data[index]['id'];
                          print(index);
                          print(id);
                          _onPressed(context, id);
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
                          "رؤيـة كـافـة الـتـفـاصـيـل",
                          style: TextStyle(fontFamily: 'myfont'),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    employee,
                    style: TextStyle(fontSize: 18, fontFamily: 'myfont'),
                  ),
                  Spacer(),
                  Image.asset(
                    img,
                    width: 60,
                    height: 60,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
