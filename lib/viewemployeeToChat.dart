import 'package:flutter/material.dart';
import 'package:software/DetailsPage.dart';
import 'package:software/theme.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<Map<String, String>> Freinds = [
    {
      'date': 'أمس',
      'name': 'ساره خالد وليد حنو',
      'message': 'اخر مسج',
      'image': 'images/person2.png'
    },
    {
      'date': 'أمس',
      'name': 'لميس خالد وليد حنو',
      'message': 'اخر مسج',
      'image': 'images/person2.png'
    },
    {
      'date': 'أمس',
      'name': 'مجد خالد وليد حنو',
      'message': 'اخر مسج',
      'image': 'images/person2.png'
    },
    {
      'date': 'أمس',
      'name': 'وليد خالد وليد حنو',
      'message': 'اخر مسج',
      'image': 'images/person2.png'
    },
    {
      'date': 'أمس',
      'name': 'ساره خالد وليد حنو',
      'message': 'اخر مسج',
      'image': 'images/person2.png'
    },
    {
      'date': 'أمس',
      'name': 'ساره خالد وليد حنو',
      'message': 'اخر مسج',
      'image': 'images/person2.png'
    },
    {
      'date': 'أمس',
      'name': 'ساره خالد وليد حنو',
      'message': 'اخر مسج',
      'image': 'images/person2.png'
    },
    {
      'date': 'أمس',
      'name': 'ساره خالد وليد حنو',
      'message': 'اخر مسج',
      'image': 'images/person2.png'
    },
     {
      'date': 'أمس',
      'name': 'ساره خالد وليد حنو',
      'message': 'اخر مسج',
      'image': 'images/person2.png'
    },
     {
      'date': 'أمس',
      'name': 'ساره خالد وليد حنو',
      'message': 'اخر مسج',
      'image': 'images/person2.png'
    },
     {
      'date': 'أمس',
      'name': 'ساره خالد وليد حنو',
      'message': 'اخر مسج',
      'image': 'images/person2.png'
    }, {
      'date': 'أمس',
      'name': 'ساره خالد وليد حنو',
      'message': 'اخر مسج',
      'image': 'images/person2.png'
    }, {
      'date': 'أمس',
      'name': 'ساره خالد وليد حنو',
      'message': 'اخر مسج',
      'image': 'images/person2.png'
    },
    
    // Add more data as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6f35a5),
        title: Text('الـدردشـات',style: TextStyle(fontFamily: 'myfont'),),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
           SizedBox(height: 20,child: Container( color: Color.fromARGB(255, 237, 234, 240))),
           
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: Freinds.length,
              itemBuilder: (context, index) {
                  return GestureDetector(
                  onTap: () {
                //    Navigate to a new page when card is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(
                          name: Freinds[index]['name'] ?? '',
                          message: Freinds[index]['message'] ?? '',
                          image: Freinds[index]['image'] ?? '',
                        ),
                      ),
                    );
                  },
                child: Column(
                  children: <Widget>[
                    Card(
                      color: Color.fromARGB(255, 237, 234, 240),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            Freinds[index]['date'] ?? '',
                            style: TextStyle(),
                          ),
                          Spacer(),
                          Card(
                            color: Color.fromARGB(255, 237, 234, 240),
                            child: Column(
                              children: <Widget>[
                                Text(
                            Freinds[index]['name'] ?? '',
                                  style: TextStyle(
                                      fontFamily: 'myfont',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w200),
                                ),
                                SizedBox(height: 5),
                                Text(
                            Freinds[index]['message'] ?? '',
                                  style: TextStyle(
                                      fontSize: 15, fontFamily: 'myfont'),
                                ),
                              ],
                            ),
                          ),
                          //  Spacer(),
                          Image.asset(
                            Freinds[index]['image'] ?? '',
                            width: 60,
                            height: 60,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 1.0,
                      thickness: 1.0,
                      color: Color(0xff6f35a5),
                      indent: 0.0, // Set the starting padding
                      endIndent: 60.0, // Set the ending padding
                    ),
                  ],

                ),
                  );  
              },
            ),
          ],
        ),
      ),
    );
  }
}
