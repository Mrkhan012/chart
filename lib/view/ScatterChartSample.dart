import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ScatterChartSample extends StatelessWidget {
  const ScatterChartSample({super.key});

  @override
  Widget build(BuildContext context) {
    return ScatterChart(
      ScatterChartData(
        scatterSpots: [
          ScatterSpot(
            1,
            1,
            dotPainter: FlDotCirclePainter(
              radius: 8,
              color: Colors.blue,
            ),
          ),
          ScatterSpot(
            2,
            2,
            dotPainter: FlDotCirclePainter(
              radius: 8,
              color: Colors.green,
            ),
          ),
          ScatterSpot(
            3,
            3,
            dotPainter: FlDotCirclePainter(
              radius: 8,
              color: Colors.red,
            ),
          ),
          ScatterSpot(
            4,
            4,
            dotPainter: FlDotCirclePainter(
              radius: 8,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
