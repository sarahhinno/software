import 'package:flutter/material.dart';
import 'package:software/theme.dart';

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
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6f35a5),
        title: Text(
          'ٍساره حنو ',
          style: TextStyle(fontFamily: 'myfont'),
        ),
      ),
      drawer: Drawer(),
      body: Container(
        child: Text('data'),
      )
    );
  }
}

class DetailsPage extends StatelessWidget {
  final String name;
  final String message;
  final String image;

  DetailsPage({required this.name, required this.message, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Page'),
      ),
     
    );
  }
}
