import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:software/theme.dart';

class chartThree extends StatefulWidget {
  @override
  _chartThreeState createState() => _chartThreeState();
}

class _chartThreeState extends State<chartThree> {
  String selectedValue = 'سـنـة دخـول الأخـصائـيـن';
  List<String> options = [
    'سـنـة دخـول الأخـصائـيـن',
    'تـخـصـص الأخـصـائـي',
  ];
  List<Map<String, String>> dynamicEvaluation = [
    {
      'name': 'sarah hinno',
      'evaluation': '5',
    },
    {
      'name': 'marah raed',
      'evaluation': '6',
    },
    {
      'name': 'waleed khaled ',
      'evaluation': '2.5',
    },
    {
      'name': 'nuha salem',
      'evaluation': '5',
    },
    {
      'name': 'nuha salem',
      'evaluation': '1',
    },
    {
      'name': 'nuha salem',
      'evaluation': '3.5',
    },
    {
      'name': 'nuha salem',
      'evaluation': '1.5',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
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
                  Text(
                    ' عـرض حـسـب',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 20,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(width: 30),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'تـقـيـيــم الأخـصـائـيـن',
                style: TextStyle(
                  fontFamily: 'myfont',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: 400,
                height: 500,
                child: BarChart(BarChartData(
                  borderData: FlBorderData(
                      border: const Border(
                    top: BorderSide.none,
                    right: BorderSide.none,
                    left: BorderSide(width: 1),
                    bottom: BorderSide(width: 1),
                  )),
                  titlesData: FlTitlesData(
                    rightTitles: AxisTitles(sideTitles: SideTitles()),
                    topTitles: AxisTitles(sideTitles: SideTitles()),
                    // bottomTitles: AxisTitles(
                    //     sideTitles: SideTitles(showTitles:t

                    //   titlesData: List.generate(
                    //     dynamicEvaluation.length,
                    //     (index) => FlTitlesData(
                    //       show: true,
                    //       reservedSize: 22,
                    //       margin: 10,
                    //       getTitles: (double value) {
                    //         // Use the 'name' from your data as the x-axis label
                    //         return dynamicEvaluation[index]['name'] ?? '';
                    //       },
                    //     ),
                    //   ),
                    // )),
                  ),
                  groupsSpace: 5,
                  barGroups: List.generate(
                    dynamicEvaluation.length,
                    (index) => BarChartGroupData(
                      x: index,
                      barRods: [
                        BarChartRodData(
                          toY: double.parse(
                              dynamicEvaluation[index]['evaluation'] ?? '0'),
                          width: 20,
                          color: const Color.fromARGB(255, 241, 195, 54),
                        ),
                      ],
                    ),
                  ),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
