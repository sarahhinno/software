import 'package:flutter/material.dart';
import 'package:software/theme.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class report extends StatefulWidget {
  @override
  _reportState createState() => _reportState();
}

class _reportState extends State<report> {
  String name = 'سـاره خـالـد ولـيـد حـنـو';
  String age = '15';
  String date = '21/1/2024';
  String svalueeLevel = 'الـعـلاج الـوظـيـفـي';
  List<String> level = [
    'الـعـلاج الـوظـيـفـي',
    'عـلاج الـنـطـق والـلـغـة ',
    'الـعـلاج الـسـلـوكـي'
  ];
  String selectedValueoptions1 = 'الـتـركـيـز والانـتـبـاه';
  List<String> options1 = [
    'الـتـركـيـز والانـتـبـاه',
    'الـمـهـارات الادراكـيـة',
    'الـتـواصـل الـبـصـري',
    ' الـمـشـاكـل الـحـسـيـة',
    'الـمـهـارات الـحـيـاتـيـة',
  ];
  String selectedValueoptions2 = 'الـلـغـة الاسـتـقـبـالـيـة';
  List<String> options2 = [
    'الـلـغـة الاسـتـقـبـالـيـة',
    'الـلـغـة الـتـعـبـيـريـة',
    'الأخـطـاء الـلـفـظـيـة',
    'أعـضـاء الـنـطـق',
  ];
  String selectedValueoptions3 = 'الاسـتـجـابـة';
  List<String> options3 = [
    'الاسـتـجـابـة',
    'الانـفـعـالات والـتـعـبـيـر عـنـهـا',
  ];
  String selectedValue = 'الاسـتـجـابـة';
  List<String> values = [
    '---------------------------------------------------------------------------------------------------------',
    '  **********************************************************************************************************',
  ];
  Future<void> savePdf() async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) => pw.Center(
          child: pw.Text('Hello World!'),
        ),
      ),
    );

    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/example.pdf';
    final file = File(filePath);

    Uint8List pdfBytes = await pdf.save();
    await file.writeAsBytes(pdfBytes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: primaryColor,
          title: Row(
            children: <Widget>[
              Text(
                'الـتـقـريـر الـطـبـي',
                style: TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: primaryLightColor),
              ),
              SizedBox(width: 80),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: primaryColor, // Set the background color here
                ),
                onPressed: savePdf,
                child: Text(
                  'حـفـظ الـتـقـريـر ',
                  style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: primaryLightColor),
                ),
              )
            ],
          )),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            //  crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(height: 20),
              Row(
                //     crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Spacer(),
                  Text(
                    date,
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    ': الـتـاريـخ',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Spacer(),
                  Text(
                    'جـمـعـيـة سـنـد لـذوي الاحـتـيـاجـات الـخـاصـة',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    ':     مــن ',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Spacer(),
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    ':  الاســـم',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Spacer(),
                  Text(
                    age,
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    ':   الـعـمــر',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),
              Center(
                  child: Text(
                'الـمـوضـوع تـقـريـر عـن حـالـة الـطـفـل',
                style: TextStyle(
                  fontFamily: 'myfont',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )),
              Text(
                'تـحـيـة وبـعـد ',
                style: TextStyle(
                  fontFamily: 'myfont',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.end,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Text(
                      ' نـعـلـمـكـم بأن الـطـفـل $name الـبـالـغ مـن العـمـر $age   سـنـوات',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 15,
                        fontWeight: FontWeight.w100,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    Text(
                      '، قد حضر إلـى الـجـمـعـيـة لإجـراء تـقـيـيـم لـحـالـتـه وبـنـاء عـلـى ذلـك تـم ادراجـه فـي الـجـمـعـيـة لـلـعـمـل مـعـه عـلـى مـراحـل تـأهـيـلـيـة وتـربـويـة ضـمـن خـطـة الـعـمـل مـن قـبـل فـريـق مـتـخـصـص ',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 15,
                        fontWeight: FontWeight.w100,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'وبـعـد مـتـابـعـة حـالـة الـطـفـل والـعـمـل مـعـه ضـمـن جـلـسـات فـرديـة مـتـخـصـصـة تـم الـوصـول مـعـه إلـى مـراحـل تـأهـيـلـيـة جـيـدة فـي الـنـواحـي الـتالـيـة ',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 15,
                        fontWeight: FontWeight.w100,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'الـعـلاج الـوظـيـفـي',
                            style: TextStyle(
                              fontFamily: 'myfont',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.end,
                          ),
                          for (int j = 0; j < options1.length; j++)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  options1[j],
                                  style: TextStyle(
                                      fontFamily: 'myfont',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                  textAlign: TextAlign.end,
                                ),
                                for (int k = 0; k < values.length; k++)
                                  Text(values[k]),
                              ],
                            )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'عـلاج الـنـطـق والـلـغـة ',
                            style: TextStyle(
                              fontFamily: 'myfont',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.end,
                          ),
                          for (int j = 0; j < options2.length; j++)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  options1[j],
                                  style: TextStyle(
                                      fontFamily: 'myfont',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                  textAlign: TextAlign.end,
                                ),
                                for (int k = 0; k < values.length; k++)
                                  Text(values[k]),
                              ],
                            )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'الـعـلاج الـسـلـوكـي',
                            style: TextStyle(
                              fontFamily: 'myfont',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.end,
                          ),
                          for (int j = 0; j < options3.length; j++)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  options1[j],
                                  style: TextStyle(
                                      fontFamily: 'myfont',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                  textAlign: TextAlign.end,
                                ),
                                for (int k = 0; k < values.length; k++)
                                  Text(values[k]),
                              ],
                            )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'الـتـوصـيـات',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    Text(
                        '++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      'نـابـلـس - رفـيـديـا- عـمـارة أبـو الـروح كـلـبـونـة',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    Text(
                      ' الـهـاتـف : 092342001/ جـوال :0595883338',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
