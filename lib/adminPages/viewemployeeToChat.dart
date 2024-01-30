// ignore_for_file: prefer_const_constructors

import 'dart:convert';

//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:software/adminPages/chat.dart';
import 'package:http/http.dart' as http;
import 'package:software/theme.dart';



class chat extends StatefulWidget {
  @override
  _chatState createState() => _chatState();
}

class _chatState extends State<chat> {

   late final List<dynamic> data;
  List<String> imagePath = [];
  List<String> imageID = [];
  List<String> EMP = [];

  //final auth=FirebaseAuth.instance;
 // final firestore=FirebaseFirestore.instance;
  //late User? user;

  void getUser(){
    // try{
    //     final currentUser = auth.currentUser;
    //   if (currentUser != null) {
    //     setState(() {
    //       user = currentUser;
    //     });
    //     print("email firestore ");
    //     print(user!.email);
    //   }
    // }catch(e){
    //   print(e);
    // }
  }

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
        print("ch" + data[i]['id']);
      }
    } else {
      print("errrrrrrrror");
    }
  }

  Future<void> getSPImages()async{
    String path;
    String id;
    final images = await http.get(Uri.parse(ip+"/sanad/getAllSPImages"));
    if(images.statusCode==200){
      print(images.body);
    final List<dynamic> image = jsonDecode(images.body);
      for(int i=0;i<image.length;i++){
        path=image[i]['path'];
        id=image[i]['spID'];
        print(path);
        print(id);
        imagePath.add(path);
        imageID.add(id);
      }
      
    }
  }


  

  List<Map<String, String>> Freinds = [
    {
      'date': 'أمس',
      'name': 'سارة حنو',
      'message': ' اوك',
      'image': 'images/person1.png'
    },
    {
      'date': 'أمس',
      'name': '   نـغـم دريـنـي',
      'message': ' تـمـام',
      'image': 'images/person1.png'
    },
    {
      'date': '13/12',
      'name': ' شـام دريـنـي  ',
      'message': ' الجلسة',
      'image': 'images/person1.png'
    },
    {
      'date': '13/12',
      'name': '   مـيـس دريـنـي',
      'message': ' نفس الموعد',
      'image': 'images/person1.png'
    },
    {
      'date': '12/12',
      'name': '   لـولـو دريـنـي',
      'message': 'الاحد  ',
      'image': 'images/person1.png'
    },
    {
      'date': '5/12',
      'name': ' رنـا دريـنـي  ',
      'message': ' مسج',
      'image': 'images/person1.png'
    },
    {
      'date': 'أمس',
      'name': 'أحـمـد أحـمـد',
      'message': ' بكرا',
      'image': 'images/person1.png'
    },
   
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUser();
    getEmployeeName();
    getSPImages();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryLightColor,
      appBar: AppBar(
        backgroundColor: Color(0xff6f35a5),
        title: Text('الـدردشـات',style: TextStyle(fontFamily: 'myfont'),),
      ),
      
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 4),
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
           SizedBox(height: 20),
           
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: EMP.length,
              itemBuilder: (context, index) {
                  String employee = EMP[index];
                  return GestureDetector(
                  onTap: () async{
                    // Navigator.push(
                    //   context,
                    //   // MaterialPageRoute(
                    //   //   builder: (context) => ChatScreen(receiverID: data[index]['id'],receiverName: data[index]['Fname'],)
                    //   // ),
                    // );
                  },
                child: Column(
                  children: <Widget>[
                    Card(
                      color: Color.fromARGB(255, 237, 234, 240),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          
                          Spacer(),                           
                             Column(
                              children: <Widget>[
                                Text(
                                  employee ?? '',
                                  style: TextStyle(
                                      fontFamily: 'myfont',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w200),
                                ),
                                SizedBox(height: 5),
                            //     Text(
                            // Freinds[index]['message'] ?? '',
                            //       style: TextStyle(
                            //           fontSize: 15, fontFamily: 'myfont'),
                            //     ),
                              ],
                            ),
                            SizedBox(width: 30,),
                            ClipOval(
                              child: imageID.contains(data[index]['id'])
                                  ? Image.network(
                                      'http://192.168.1.19:3000/sanad/getSPImage?id=${imageID[imageID.indexOf(data[index]['id'])]}',
                                      width: 60,
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
                          SizedBox(width: 5,),
                        ],
                      ),
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