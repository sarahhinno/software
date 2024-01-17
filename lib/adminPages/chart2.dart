import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class chartTwo extends StatefulWidget {
  @override
  _chartTwoState createState() => _chartTwoState();
}

class _chartTwoState extends State<chartTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Piechart'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your Chart Title',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 300, // Set a fixed width
                height: 300, // Set a fixed height
                child: PieChart(
                  PieChartData(
                    centerSpaceRadius: 5,
                    borderData: FlBorderData(show: false),
                    sectionsSpace: 2,
                    sections: [
                      PieChartSectionData(
                        value: 35,
                        color: Colors.purple,
                        radius: 100,
                      ),
                      PieChartSectionData(
                        value: 40,
                        color: Colors.amber,
                        radius: 100,
                      ),
                      PieChartSectionData(
                        value: 55,
                        color: Colors.green,
                        radius: 100,
                      ),
                      PieChartSectionData(
                        value: 70,
                        color: Colors.orange,
                        radius: 100,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
