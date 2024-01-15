import 'package:flutter/material.dart';
import 'package:software/DetailsPage.dart';
import 'package:software/theme.dart';
import 'package:http/http.dart' as http;
import 'package:syncfusion_flutter_charts/charts.dart';


class charts extends StatefulWidget {
  @override
  _chartsState createState() => _chartsState();
}
   class ChartData {
      ChartData(this.x, this.y);
        final String x;
        final double y;
    }
class _chartsState extends State<charts> {
 @override
    Widget build(BuildContext context) {
        final List<ChartData> chartData = [
            ChartData('David', 25),
            ChartData('Steve', 38),
            ChartData('Jack', 34),
            ChartData('Others', 52)
        ];
        return Scaffold(
            body: Center(
                child: Container(
                    child: SfCircularChart(series: <CircularSeries>[
                        // Render pie chart
                        PieSeries<ChartData, String>(
                            dataSource: chartData,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y
                        )
                    ])
                )
            )
        );
    }

 
}