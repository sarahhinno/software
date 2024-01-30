// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
<<<<<<< HEAD
import 'package:software/adminPages/DetailsPageOfEmployee.dart';
import 'package:software/theme.dart';
import 'dart:convert';
=======
import 'package:software/adminPages/DetailsPageOfChildren.dart';
import 'package:software/adminPages/DetailsPageOfEmployee.dart';
import 'dart:convert';

import 'package:software/theme.dart';
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2

class Employee {
  final String name;
  final String image;
  final String details;
  Employee({required this.name, required this.image, required this.details});
}

class viewSpecialest extends StatefulWidget {
  @override
  viewSpecialestState createState() => viewSpecialestState();
}

class viewSpecialestState extends State<viewSpecialest> {
<<<<<<< HEAD
  String selectedValue = options.first;
  static List<String> options = [
    'سنة التوظيف',
    'الجلسة',
  ];
  String selectedValue4 = '-----';
  List<String> options4 = [];
  String selectedValue5 = '-----';
  List<String> options5 = [
    'سلوكي',
    'وظيفي',
    'تربية خاصة',
    'علاج طبيعي',
    'اللغة و النطق ',
  ];
  String svalue = '-----';
  List<String> soptions = [];
=======
  String selectedValue = 'تـخـصـص الأخـصـائـي';
  List<String> options = [
    'سـنـة دخـول الأخـصائـيـن',
    'تـخـصـص الأخـصـائـي',
  ];
  String selectedValue4 = '-----';
  List<String> options4 = [
    '2000',
    '2001',
    '2002',
    '2003',
    '2004',
    '2005',
    '2006',
    '2007',
    '2008',
  ];
  String selectedValue5 = '-----';
  List<String> options5 = [
    'ســلــوكــي',
    'وظــيــفــي',
    'تــربـيـة خـاصـة',
    'عــلاج طــبـيـعي',
    'الـلغـة و نــطــق',
  ];
  String svalue = '-----';
  List<String> soptions = [
    '-----',
  ];
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
  bool visable = false;
  List<String> names = [
    'ٍساره خالد وليد حنو',
    'وليد خالد وليد حنو',
    'مرح رائد ابراهيم دريني',
    'ٍساره خالد وليد حنو',
    'وليد خالد وليد حنو',
    'مرح رائد ابراهيم دريني',
    'ٍساره خالد وليد حنو',
    'وليد خالد وليد حنو',
  ];
  String id = "";

  List<String> EMP = [];
  String img = 'images/person4.png';
<<<<<<< HEAD
    List<dynamic> data=[];
  List<String> imagePath = [];
  List<String> imageID = [];

    List <String>idd=[];

    String searchBy="";
  String value2="";


  void initYear() {
    int y = DateTime.now().year;
    String yy = y.toString();
    while (y != 2000) {
      options4.add(yy);
      y--;
      yy = y.toString();
    }
  }

   Future<void> filter()async{
    print("search by $searchBy");
    final response=await http.get(Uri.parse("$ip/sanad/filterSp?searchBy=$searchBy&value=$value2"));
    if(response.statusCode==200){
      EMP.clear();
      idd.clear();
      String childName;
      data = jsonDecode(response.body);

      for (int i = 0; i < data.length; i++) {
        print(data[i]['firstName'] + " " + data[i]['lastName']);
        childName = data[i]['firstName'] + " " + data[i]['lastName'];
        setState(() {
          EMP.add(childName);
          idd.add(data[i]['idd']);
        });
      }
      
    } else if (response.statusCode == 404) {
      print("errrrrrrrror");
      setState(() {
        EMP.clear();
      });
      
    }
    
  }

=======
  late final List<dynamic> data;
  List<String> imagePath = [];
  List<String> imageID = [];
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2

  Future<void> getEmployeeName() async {
    // print("childrenssssssssssss");
    final EmployeeNamesResponse =
        await http.get(Uri.parse(ip + "/sanad/getspname"));
    if (EmployeeNamesResponse.statusCode == 200) {
      EMP.clear();
      idd.clear();
      String EmployeeName;
      data = jsonDecode(EmployeeNamesResponse.body);

      for (int i = 0; i < data.length; i++) {
        print(data[i]['Fname'] + " " + data[i]['Lname']);
        EmployeeName = data[i]['Fname'] + " " + data[i]['Lname'];
        setState(() {
          EMP.add(EmployeeName);
          idd.add(data[i]['id']);
        });
      }
      for (int i = 0; i < EMP.length; i++) {
        print("ch" + EMP[i]);
      }
    } else {
      print("errrrrrrrror");
    }
  }

  Future<void> getSPImages() async {
    String path;
    String id;
    final images = await http.get(Uri.parse(ip + "/sanad/getAllSPImages"));
    if (images.statusCode == 200) {
      print(images.body);
      final List<dynamic> image = jsonDecode(images.body);
      for (int i = 0; i < image.length; i++) {
        path = image[i]['path'];
        id = image[i]['spID'];
        print(path);
        print(id);
        imagePath.add(path);
        imageID.add(id);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    initYear();
    soptions = options;
    svalue = soptions.first;
    getEmployeeName();
    getSPImages();
  }

  void _onPressed(BuildContext context, String name) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => spDetailsPage(name: name)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6f35a5),
        automaticallyImplyLeading: false,
        title: Text(
          "الأخــــصـــائـــيـــــيـــــن",
          style: TextStyle(
              fontFamily: 'myFont', fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
<<<<<<< HEAD
            color: Colors.white,
=======
            color: Colors.grey[200],
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  Row(
                    children: <Widget>[
<<<<<<< HEAD
                      DropdownButton<String>(
                        value: svalue,
                        items: soptions.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  fontSize: 19.0, fontFamily: 'myFont'),
                              textAlign: TextAlign.center,
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            svalue = newValue!;
                            visable = true;
                            value2=newValue!;
                          });
                        },
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 18.0,
                            fontFamily: "myFont"),
                        dropdownColor: Colors.grey[200],
                        elevation: 4,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      DropdownButton<String>(
                        value: selectedValue,
                        items: options.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue!;
                            // soptions = ['-----'];

                            if (newValue == 'سنة التوظيف') {
                              soptions = options4;
                              searchBy='year';
                            } else if (newValue == 'الجلسة') {
                              soptions = options5;
                              searchBy='sick';
                            }
                            svalue = soptions.first;
                          });
                        },
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 19.0,
                          fontFamily: 'myFont',
                        ),
                        dropdownColor: Colors.grey[200],
                        elevation: 2,
                      ),
                      SizedBox(width: 20),
=======
                      SizedBox(width: 10),
                      Expanded(
                        child: Center(
                          child: DropdownButton<String>(
                            value: selectedValue,
                            items: options.map((String value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                                soptions = ['-----'];

                                if (newValue == 'سـنـة دخـول الأخـصائـيـن') {
                                  soptions = soptions + options4;
                                } else if (newValue == 'تـخـصـص الأخـصـائـي') {
                                  soptions = soptions + options5;
                                }
                              });
                            },
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                            dropdownColor: Colors.grey[200],
                            elevation: 2,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
                      Text(
                        'الـبـحـث حـسـب',
                        style: TextStyle(
                          fontFamily: 'myfont',
<<<<<<< HEAD
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.filter_list,
                        color: primaryColor,
                        size: 20,
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: () async {
                         await filter();
                      },
                      child: Text(
                        "ابـــحــــث",
                        style: TextStyle(
                            fontFamily: 'myFont',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16),
                      )),
                  Divider(
                    thickness: 0.8,
                    color: Colors.grey,
=======
                          fontSize: 20,
                          color: primaryColor,
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 50),
                      Expanded(
                        // color: Colors.grey[200],
                        // width: 150,
                        child: Center(
                          child: DropdownButton<String>(
                            value: svalue,
                            items: soptions.map((String value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                svalue = newValue!;
                                visable = true;
                              });
                            },
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 18.0,
                            ),
                            dropdownColor: Colors.grey[200],
                            elevation: 4,
                          ),
                        ),
                      ),
                      SizedBox(width: 50),
                      Icon(
                        Icons.filter_list,
                        color: primaryColor,
                        size: 30,
                      ),
                      SizedBox(width: 20),
                    ],
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          /////////////////////////////////////////////////
          //show just what i need
          Visibility(
<<<<<<< HEAD
            visible: true,
=======
            visible: visable,
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
            child: Expanded(
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
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFF6F35A5)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
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
                        ClipOval(
<<<<<<< HEAD
                          child: imageID.contains(idd[index])
                              ? Image.network(
                                  'http://192.168.1.19:3000/sanad/getSPImage?id=${imageID[imageID.indexOf(idd[index])]}',
=======
                          child: imageID.contains(data[index]['id'])
                              ? Image.network(
                                  'http://192.168.1.19:3000/sanad/getSPImage?id=${imageID[imageID.indexOf(data[index]['id'])]}',
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
                                  width: 70,
                                  height: 60,
                                  fit: BoxFit.cover,
                                )
                              : Image.asset(
                                  'images/profileImage.jpg',
                                  width: 70,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          /////////////////////////////////
          ///// show all employee when the page load
          Visibility(
<<<<<<< HEAD
            visible: false,
=======
            visible: !visable,
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
            child: Expanded(
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
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFF6F35A5)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
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
                        ClipOval(
                          child: imageID.contains(data[index]['id'])
                              ? Image.network(
                                  'http://192.168.1.19:3000/sanad/getSPImage?id=${imageID[imageID.indexOf(data[index]['id'])]}',
                                  width: 70,
                                  height: 60,
                                  fit: BoxFit.cover,
                                )
                              : Image.asset(
                                  'images/profileImage.jpg',
                                  width: 70,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}