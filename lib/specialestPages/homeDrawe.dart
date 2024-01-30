// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:software/specialestPages/addNewGoals.dart';
import 'package:software/specialestPages/empPersonalInformation.dart';
import 'package:software/specialestPages/empVications.dart';
import 'package:software/specialestPages/homePage.dart';
import 'package:software/specialestPages/objectives.dart';
import 'package:software/specialestPages/viewChildren.dart';
import 'package:software/theme.dart';
import 'package:http/http.dart' as http;


class spHomeDrawer extends StatefulWidget{
  final String id;

  const spHomeDrawer({super.key, required this.id});
  @override
  State<StatefulWidget> createState() {
    return _spHomeDrawerState();
  }
}

class _spHomeDrawerState extends State<spHomeDrawer> {
   String id="";
   String name="";

  void getUser(){
    // try{
    //   final user=auth.currentUser;
    //   if(user != null){
    //     print(user.email);
    //   }
    // }catch(e){
    //   print(e);
    // }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    id=widget.id;
    print("home drawer id "+id);
    getUser();
    getImageUrl();
    getSPname();
  }

  Color hoveredColor = primaryLightColor;
   late Widget container=spHomePage(id: id,name: "خديجة دريني",);

    String imageUrl = '';


  Future<void> getImageUrl() async {
    print(id);
    final String serverUrl = '$ip/sanad/getSPImage?id=$id';

    try {
      final response = await http.get(Uri.parse(serverUrl));
      print(response.body);
      if (response.statusCode == 200) {
        setState(() {
          imageUrl = serverUrl;
          print(imageUrl);
        });
      } else {
        print('Failed to get image. Status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error getting image: $error');
    }
  }

Future<void> getSPname()async{
  final spName = await http.get(Uri.parse("$ip/sanad/getsppnename?id=$id"));
  if(spName.statusCode==200){
    print("body "+spName.body.toString());
    final spNameBody=jsonDecode(spName.body);
      name=spNameBody['Fname']+" "+spNameBody['Lname'];
    
    print("name"+name);
  }
  else{
    print("error"+spName.body);
  }
}


  @override
  Widget build(BuildContext context) {
   Size size=MediaQuery.of(context).size;               
    return Scaffold(
      endDrawer: Drawer(
        backgroundColor: primaryLightColor,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children:[
               Container(
              color: primaryColor,
              width: double.infinity,
              height: 250,
              padding: EdgeInsets.only(top: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 100,
                    child: ClipOval(
                      child: imageUrl.isNotEmpty? (Image.network(imageUrl, height: 120.0,width: 150.0,fit: BoxFit.cover,)): 
                                Image.asset('images/nurse.png', width: 120, height: 200,fit: BoxFit.cover,) ,
                    ),
                  ),
                  Text(
                    name,
                    style: TextStyle(color: Colors.white, fontSize: 24,fontFamily: 'myFont'),
                  ),
                  Text(
                    "",
                    style: TextStyle(
                      color: Colors.grey[200],
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                width: size.width,
                height: 50,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        container=spHomePage(id: "",name: "",);
                      });
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: primaryColor,
                        padding: EdgeInsets.all(10),
                        backgroundColor: hoveredColor,
                        elevation: 3,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "الصـفـحـة الرئـسـيـة",
                          style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'myFont',
                            fontSize: 20,
                          ),
                        ),SizedBox(
                            width: 8),
                        Icon(
                          Icons.home, // Replace with the desired icon
                          color: primaryColor, // Set the color of the icon
                        ),
                        SizedBox(width: 30,),
                      ],
                    ),
                  ),
                ),
               // SizedBox(height: 5,),
                Container(
                width: size.width,
                height: 50,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        container=myChildren(id: id,);
                      });
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: primaryColor,
                        padding: EdgeInsets.all(10),
                        backgroundColor: hoveredColor,
                        elevation: 3,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "الأطـــفــال",
                          style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'myFont',
                            fontSize: 20,
                          ),
                        ),SizedBox(
                            width: 8),
                        Icon(
                          Icons.child_care, // Replace with the desired icon
                          color: primaryColor, // Set the color of the icon
                        ),
                        SizedBox(width: 30,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                width: size.width,
                height: 50,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        container=profile(id: id,);
                      });
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: primaryColor,
                        padding: EdgeInsets.all(10),
                        backgroundColor: hoveredColor,
                        elevation: 3,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "الـصـفـحـة الـشـخـصـيـة",
                          style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'myFont',
                            fontSize: 20,
                          ),
                        ),SizedBox(
                            width: 8),
                        Icon(
                          Icons.child_care, // Replace with the desired icon
                          color: primaryColor, // Set the color of the icon
                        ),
                        SizedBox(width: 30,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                width: size.width,
                height: 50,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        container=vications(id:id,);
                      });
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: primaryColor,
                        padding: EdgeInsets.all(10),
                        backgroundColor: hoveredColor,
                        elevation: 3,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "الإجـــازات",
                          style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'myFont',
                            fontSize: 20,
                          ),
                        ),SizedBox(
                            width: 8),
                        Icon(
                          Icons.person, // Replace with the desired icon
                          color: primaryColor, // Set the color of the icon
                        ),
                        SizedBox(width: 30,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                // Container(
                // width: size.width,
                // height: 50,
                //   child: TextButton(
                //     onPressed: () {
                //       setState(() {
                //         container=newGoals(spId: id,childId: "",);
                //       });
                //     },
                //     style: TextButton.styleFrom(
                //       foregroundColor: primaryColor,
                //         padding: EdgeInsets.all(10),
                //         backgroundColor: hoveredColor,
                //         elevation: 3,
                //     ),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.end,
                //       children: [
                //         Text(
                //           "الأهـــداف",
                //           style: TextStyle(
                //             color: primaryColor,
                //             fontFamily: 'myFont',
                //             fontSize: 20,
                //           ),
                //         ),SizedBox(
                //             width: 8),
                //         Icon(
                //           Icons.person, // Replace with the desired icon
                //           color: primaryColor, // Set the color of the icon
                //         ),
                //         SizedBox(width: 30,),
                //       ],
                //     ),
                //   ),
                // ),
                // SizedBox(height: 5,),
                Container(
                width: size.width,
                height: 50,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        container=goals(spId: id,childId: "",);
                      });
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: primaryColor,
                        padding: EdgeInsets.all(10),
                        backgroundColor: hoveredColor,
                        elevation: 3,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "الأهـــداف",
                          style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'myFont',
                            fontSize: 20,
                          ),
                        ),SizedBox(
                            width: 8),
                        Icon(
                          Icons.person, // Replace with the desired icon
                          color: primaryColor, // Set the color of the icon
                        ),
                        SizedBox(width: 30,),
                      ],
                    ),
                  ),
                ),
            ]),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: primaryColor,
        automaticallyImplyLeading: false,
        actions: [
         Builder(
          builder: (BuildContext context) {
           return IconButton(
              icon: Icon(Icons.list),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            );
          }
         ),
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context){return ChatScreen();}));
            },
          ),
         ],
       ),
       body: container
       //spHomePage(id: id,name:"فطوم دريني"),
      // Container(
      //   width: size.width,
      //   height: size.height,
      //   child: Stack(children: [
      //     Positioned(
      //         bottom: 0,
      //         right: 0,
      //         child: Image.asset("assets/images/welcome_bottom_right.png")),
      //     Column(
      //       children: [
      //         Container(
      //           child: SfCalendar(
      //             view: CalendarView.schedule,
      //         ),)
      //       ],)
      //   ]),
      //),
    );
  }
  
}
