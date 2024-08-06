import 'package:chart/view/ScatterChartSample.dart';
import 'package:chart/view/bar_graph.dart';
import 'package:chart/view/line_chart.dart';
import 'package:chart/view/main_screen.dart';
import 'package:chart/view/pie_chart_screen.dart';
import 'package:chart/view/splash_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/main',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: '/line',
      builder: (context, state) => const LineChartSample(),
    ),
    GoRoute(
      path: '/pie',
      builder: (context, state) => const PieChartSample(),
    ),
    GoRoute(
      path: '/scatt',
      builder: (context, state) => const ScatterChartSample(),
    ),
    GoRoute(
      path: '/bar',
      builder: (context, state) => const BarChartSample(),
    ),
  ],
);
