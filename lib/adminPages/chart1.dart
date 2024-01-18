// main.dart
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:software/theme.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         // Remove the debug banner
//         debugShowCheckedModeBanner: false,
//         title: 'KindaCode.com',
//         theme: ThemeData(
//           primarySwatch: Colors.indigo,
//         ),
//         home: MyHomePage());
//   }
// }

class chartOne extends StatefulWidget {
  @override
  _chartOneState createState() => _chartOneState();
}

class _chartOneState extends State<chartOne> {
  // MyHomePage({Key? key}) : super(key: key);

  // Generate some dummy data for the cahrt
  // This will be used to draw the red line
  final List<FlSpot> dummyData1 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  // This will be used to draw the orange line
  final List<FlSpot> dummyData2 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  // This will be used to draw the blue line
  final List<FlSpot> dummyData3 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      body: SafeArea(
        child: Center(
            //     scrollDirection: Axis.vertical,
            //     padding: const EdgeInsets.all(20),
            child: Column(
          children: <Widget>[
            Expanded(
                child: Container(
                  width: 300,
                  height: 200,
              child: LineChart(
                LineChartData(
                  titlesData: FlTitlesData(
                    rightTitles: AxisTitles(sideTitles: SideTitles()),
                    topTitles: AxisTitles(sideTitles: SideTitles()),
                  ),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    // The red line
                    LineChartBarData(
                      spots: dummyData1,
                      isCurved: true,
                      barWidth: 3,
                      color: Colors.indigo,
                    ),
                    // The orange line
                    LineChartBarData(
                      spots: dummyData2,
                      isCurved: true,
                      barWidth: 3,
                      color: Colors.red,
                    ),
                    // The blue line
                    LineChartBarData(
                      spots: dummyData3,
                      isCurved: false,
                      barWidth: 3,
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
            )),
          ],
        )
            //  width: double.infinity,

            ),
      ),
    );
  }
}
