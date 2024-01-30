// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:software/auuth/signup.dart';
import 'package:software/specialestPages/otherSPNotes.dart';
import 'package:software/theme.dart';
import 'package:http/http.dart' as http;


class childDetailes extends StatefulWidget{
  final String id;
  final String name;

  const childDetailes({super.key, required this.id, required this.name});
  @override
  State<StatefulWidget> createState() {
    return childDetailesState();
  }

}

class childDetailesState extends State<childDetailes>{
  late String id;
  late String name;
  final List<Map<String, String>> rowData = [
    {'column1': 'Row 1 ', 'column2': 'Row 1 ', 'column3': 'Row 1 '},
    {'column1': 'Row 2 ', 'column2': 'Row 2 ', 'column3': 'Row 2 '},
    {'column1': 'Row 3 ', 'column2': 'Row 3 ', 'column3': 'Row 3 '},
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    id=widget.id;
    name=widget.name;
  }

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      body: Container(
          color: primaryLightColor,
          width: size.width,
          height: size.height,
          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
          child: ListView(
            children: [Column(
              children: [
                SizedBox(height: 20,),
                Container(
                  width: 250,
                  child: ClipOval(
                    child: Image.asset("assets/images/background.png",width: 250,height: 250,fit: BoxFit.cover,)),
                ),
                SizedBox(height: 20,),
                Card(
                    color: primaryLightColor,
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4,vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'myFont',fontSize: 18,color: Colors.black87),),
                        SizedBox(width: 15,),
                        Text(": الــطــفــل",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'myFont',fontSize: 18,color: Colors.black87),),
                      ],),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Card(
                    color: primaryLightColor,
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4,vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        Text("8",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'myFont',fontSize: 18,color: Colors.black87),),
                        SizedBox(width: 15,),
                        Text(": الــعــمــر",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'myFont',fontSize: 18,color: Colors.black87),),
                      ],),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Card(
                    color: primaryLightColor,
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4,vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        Text("تلبيتالبي",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'myFont',fontSize: 18,color: Colors.black87),),
                        SizedBox(width: 15,),
                        Text(": الــتـشـخـيـص",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'myFont',fontSize: 18,color: Colors.black87),),
                      ],),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: size.width,
                    child: Card(
                      color: primaryLightColor,
                      elevation: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4,vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                          Text(
                            " الــجـلـســات",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'myFont',
                                fontSize: 20,
                                color: Colors.black87),
                          ),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('الأخـصـائـيـة',style: TextStyle(fontFamily: 'myFont',fontWeight: FontWeight.bold,fontSize: 18,color: secondaryColor)),
                              Spacer(),
                              Text('الــعـدد',style: TextStyle(fontFamily: 'myFont',fontWeight: FontWeight.bold,fontSize: 18,color: secondaryColor)),
                              Spacer(),
                              Text('الـجـلـسـة',style: TextStyle(fontFamily: 'myFont',fontWeight: FontWeight.bold,fontSize: 18,color: secondaryColor),),
                            ],
                          ),
                          SizedBox(height:1),
                          Container(
                            child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: rowData.length,
                              itemBuilder: (context,index){
                              return TextButton(
                                style: TextButton.styleFrom(
                                  foregroundColor: primaryColor,
                                  backgroundColor: primaryLightColor
                                ),
                                onPressed: () {
                                  print(index);
                                  Navigator.push(context,MaterialPageRoute(builder: (context){return otherSpecialestNotes(childID: rowData[index]['column1']!,sesison: rowData[index]['column2']!,spName: rowData[index]['column1']!,);}));
                                  
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(rowData[index]['column1']!,style: TextStyle(fontFamily: 'myFont',fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black87)),
                                      Spacer(),
                                      Text(rowData[index]['column2']!,style: TextStyle(fontFamily: 'myFont',fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black87)),
                                      Spacer(),
                                      Text(rowData[index]['column3']!,style: TextStyle(fontFamily: 'myFont',fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black87))
                                    ],
                                  ),
                                ),
                              );
                              }),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: size.width,
                  color: primaryLightColor,
                  child: Card(
                    color: primaryLightColor,
                    elevation: 2,
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
                        child: Column(
                          children: [
                            Text(
                            " مـلاحــظــات جـلـسـاتـي",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'myFont',
                                fontSize: 20,
                                color: Colors.black87),
                          ),
                          SizedBox(height: 7,),
                          ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            shrinkWrap: true,
                            itemCount: rowData.length,
                            itemBuilder: (context,index){
                            return Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("1/10/2023",style: TextStyle(fontFamily: 'myFont',fontWeight: FontWeight.bold,fontSize: 17,color: secondaryColor)),
                                    SizedBox(width: 8,),
                                    Text(": الـتــاريـخ",style: TextStyle(fontFamily: 'myFont',fontWeight: FontWeight.bold,fontSize: 17,color:secondaryColor)),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Text("ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",textAlign: TextAlign.right,maxLines: null,style: TextStyle(fontFamily: 'myFont',fontSize: 18),),
                                SizedBox(height: 10,),
                                Divider(thickness: 2,),
                              ],
                            );
                          })
                          ],
                        )
                    )
                  ),
                )
          
              ],
            ),
          ]),
        ),
      
    );
  }

}


// //DataTable(
//                           columns: [
//                             DataColumn(label: Text('الـجـلـسـة',style: TextStyle(fontFamily: 'myFont',fontWeight: FontWeight.bold,fontSize: 17,color: secondaryColor),)),
//                             DataColumn(label: Text('الــعـدد',style: TextStyle(fontFamily: 'myFont',fontWeight: FontWeight.bold,fontSize: 17,color: secondaryColor))),
//                             DataColumn(label: Text('الأخـصـائـيـة',style: TextStyle(fontFamily: 'myFont',fontWeight: FontWeight.bold,fontSize: 17,color: secondaryColor))),
//                             // Add more DataColumn widgets for additional columns
//                           ],
//                           rows: List.generate(rowData.length, (index) {
//                             final row = rowData[index];
//                             return DataRow(
//                               onSelectChanged: (selected) {
//                                 // Your action when the row is tapped
//                                 if (selected != null && selected) {
//                                   print(
//                                       'index $index Row tapped: ${row['column1']}, ${row['column2']}, ${row['column3']}');
//                                 }
//                               },
//                               cells: [
//                                 DataCell(Text(rowData[index]['column1']!)),
//                                 DataCell(Text(rowData[index]['column2']!)),
//                                 DataCell(Text(rowData[index]['column3']!)),
//                                 // Add more DataCell widgets for additional columns
//                               ],
//                             );
//                           })
//                         ),