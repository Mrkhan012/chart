import 'package:chart/view/chart_screen.dart';
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
      path: '/chart',
      builder: (context, state) => const ChartScreen(),
    ),
  ],
);
