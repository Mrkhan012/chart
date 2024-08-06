import 'package:chart/view/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:chart/route/app_router.dart'; // Adjust the import as needed

void main() {
  testWidgets('MyApp widget test', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp.router(
          routerConfig: router,
        ),
      ),
    );
  });
}
