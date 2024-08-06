import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample extends StatelessWidget {
  const LineChartSample({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            spots: [
              const FlSpot(0, 4),
              const FlSpot(1, 3),
              const FlSpot(2, 5),
              const FlSpot(3, 7),
              const FlSpot(4, 6),
            ],
            isCurved: true,
            barWidth: 4,
            color: Colors.blue,
            dotData: const FlDotData(show: true),
          ),
        ],
      ),
    );
  }
}
