import 'package:chart/provider/wholesale_price_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:shimmer/shimmer.dart';

class ChartScreen extends ConsumerWidget {
  const ChartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataAsyncValue = ref.watch(dataProvider);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 224, 224),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 226, 224, 224),
        title: const Text('Wholesale Price Index'),
      ),
      body: dataAsyncValue.when(
        data: (data) {
          final records = data.records ?? [];
          final sectors = data.sector ?? [];

          // Prepare data for LineChart
          final lineChartSpots = records.asMap().entries.map((entry) {
            final index = entry.key;
            final record = entry.value;
            return FlSpot(
              index.toDouble(),
              record.iNDEX2022 ?? 0.0,
            );
          }).toList();

          // Prepare data for PieChart
          final pieChartSections = records.asMap().entries.map((entry) {
            final index = entry.key;
            final record = entry.value;
            return PieChartSectionData(
              value: record.cOMMWT ?? 0.0,
              color: Colors.primaries[index % Colors.primaries.length],
              title: record.cOMMNAME ?? '',
              titlePositionPercentageOffset: 0.5,
              titleStyle: const TextStyle(fontSize: 14, color: Colors.white),
              radius: 50,
            );
          }).toList();

          // Prepare data for BarChart
          final barGroups = records.asMap().entries.map((entry) {
            final index = entry.key;
            final record = entry.value;
            return BarChartGroupData(
              x: index,
              barRods: [
                BarChartRodData(
                  toY: record.iNDEX2022 ?? 0.0,
                  gradient: const LinearGradient(
                    colors: [
                      Colors.blueAccent,
                      Colors.cyan,
                    ],
                  ),
                  width: 15,
                  borderRadius: BorderRadius.circular(5),
                ),
              ],
              showingTooltipIndicators: [0],
            );
          }).toList();

          return SingleChildScrollView(
            child: Column(
              children: [
                // LineChart section with sectors
                Container(
                  height: 300,
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Economic Indicators',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: LineChart(
                          LineChartData(
                            lineBarsData: [
                              LineChartBarData(
                                spots: lineChartSpots,
                                isCurved: true,
                                gradient: const LinearGradient(
                                  colors: [
                                    Colors.blue,
                                    Colors.lightBlueAccent,
                                  ],
                                ),
                                dotData: const FlDotData(show: false),
                                belowBarData: BarAreaData(show: false),
                              ),
                            ],
                            titlesData: FlTitlesData(
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  reservedSize: 40,
                                  interval: 1,
                                  getTitlesWidget: (value, meta) {
                                    return SideTitleWidget(
                                      axisSide: meta.axisSide,
                                      child: Text(
                                        value.toString(),
                                        style: const TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              leftTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  reservedSize: 40,
                                  interval: 10,
                                  getTitlesWidget: (value, meta) {
                                    return SideTitleWidget(
                                      axisSide: meta.axisSide,
                                      child: Text(
                                        value.toString(),
                                        style: const TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            borderData: FlBorderData(
                              show: true,
                              border: const Border(
                                left: BorderSide(color: Colors.grey),
                                bottom: BorderSide(color: Colors.grey),
                              ),
                            ),
                            gridData: const FlGridData(show: true),
                            lineTouchData: const LineTouchData(enabled: true),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Sector: ${sectors.isNotEmpty ? sectors[0] : 'N/A'}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                // BarChart section
                Container(
                  height: 300,
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Commodity Prices',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: BarChart(
                          BarChartData(
                            barGroups: barGroups,
                            titlesData: FlTitlesData(
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  reservedSize: 40,
                                  getTitlesWidget: (value, meta) {
                                    return SideTitleWidget(
                                      axisSide: meta.axisSide,
                                      child: Text(
                                        records[value.toInt()].cOMMNAME ?? '',
                                        style: const TextStyle(
                                            fontSize: 12, color: Colors.black),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              leftTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  reservedSize: 40,
                                  getTitlesWidget: (value, meta) {
                                    return SideTitleWidget(
                                      axisSide: meta.axisSide,
                                      child: Text(
                                        value.toString(),
                                        style: const TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            borderData: FlBorderData(show: true),
                            barTouchData: BarTouchData(enabled: true),
                            gridData: const FlGridData(show: true),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        loading: () => shimmerLoading(),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
    );
  }

  Widget shimmerLoading() {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: [
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            height: 300,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            height: 50,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            height: 300,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
