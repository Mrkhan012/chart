import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSample extends StatelessWidget {
  const BarChartSample({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barGroups: [
          BarChartGroupData(x: 0, barRods: [
            BarChartRodData(fromY: 0, toY: 8, color: Colors.lightBlueAccent)
          ]),
          BarChartGroupData(x: 1, barRods: [
            BarChartRodData(fromY: 0, toY: 10, color: Colors.lightBlueAccent)
          ]),
          BarChartGroupData(x: 2, barRods: [
            BarChartRodData(fromY: 0, toY: 14, color: Colors.lightBlueAccent)
          ]),
          BarChartGroupData(x: 3, barRods: [
            BarChartRodData(fromY: 0, toY: 15, color: Colors.lightBlueAccent)
          ]),
          BarChartGroupData(x: 4, barRods: [
            BarChartRodData(fromY: 0, toY: 13, color: Colors.lightBlueAccent)
          ]),
        ],
      ),
    );
  }
}
