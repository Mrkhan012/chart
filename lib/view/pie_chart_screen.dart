import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PieChartScreen extends StatelessWidget {
  const PieChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      const Text("Revence"),
      PieChart(
          swapAnimationDuration: const Duration(milliseconds: 750),
          PieChartData(sections: [
            PieChartSectionData(value: 20, color: Colors.blue),
            PieChartSectionData(value: 20, color: Colors.red),
            PieChartSectionData(value: 20, color: Colors.yellow),
            PieChartSectionData(value: 20, color: Colors.purple),
            PieChartSectionData(value: 20, color: Colors.pink),
          ])),
    ]);
  }
}
