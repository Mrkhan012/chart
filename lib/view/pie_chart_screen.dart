import 'package:chart/provider/wholesale_price_provider.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/theme.dart';

class PieChartSample extends ConsumerWidget {
  const PieChartSample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final petrolAsyncValue = ref.watch(dataProvider);

    return petrolAsyncValue.when(
      data: (petrol) {
        final sectors = petrol.sector ?? [];
        final List<PieChartSectionData> pieChartSections = [];

        // Define the colors for each sector
        final colors = [Colors.blue, Colors.green, Colors.red, Colors.yellow];

        // Assign a dummy value to each sector for display purposes
        final values = [40, 30, 20, 10];

        for (var i = 0; i < sectors.length && i < values.length; i++) {
          final sector = sectors[i];
          final value = values[i].toDouble();
          final color = colors[i % colors.length];

          pieChartSections.add(
            PieChartSectionData(
              value: value,
              radius: 100,
              color: color,
              title: sector, // Set the sector name as the title
            ),
          );
        }

        return Stack(
          alignment: Alignment.topCenter,
          children: [
            Text(petrol.title ?? "Sector",
                style: theme.textTheme.bodyLarge
                    ?.copyWith()), // Display the title from petrol data
            PieChart(
              PieChartData(
                sections: pieChartSections,
                sectionsSpace: 0, // Space between sections
                centerSpaceRadius: 45, // Space in the center
              ),
            ),
          ],
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text('Error: $error')),
    );
  }
}
