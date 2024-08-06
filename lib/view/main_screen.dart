import 'package:chart/view/ScatterChartSample.dart';
import 'package:chart/view/bar_graph.dart';
import 'package:chart/view/line_chart.dart';
import 'package:chart/view/pie_chart_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _ChartDemoState createState() => _ChartDemoState();
}

class _ChartDemoState extends State<MainScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _chartWidgets = <Widget>[
    const LineChartSample(),
    const BarChartSample(),
    const PieChartSample(),
    const ScatterChartSample(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _chartWidgets.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.show_chart), label: 'Line'),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Bar'),
            BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: 'Pie'),
            BottomNavigationBarItem(
                icon: Icon(Icons.scatter_plot), label: 'Scatter'),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Colors.blueGrey[800], // Set background color
          selectedItemColor: Colors.purple, // Set color for selected item
          unselectedItemColor: Colors.grey, // Set color for unselected items
          selectedIconTheme:
              const IconThemeData(size: 30), // Set size for selected icons
          unselectedIconTheme:
              const IconThemeData(size: 24), // Set size for unselected icons
        ),
      ),
    );
  }
}
