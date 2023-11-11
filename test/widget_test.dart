// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:cosmosense/src/app/app.dart';
import 'package:cosmosense/src/app/theme/cosmosense_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Cosmosense widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const CosmoSense());

    // Verify that MaterialApp.router is created.
    final materialAppFinder = find.byType(MaterialApp);
    expect(materialAppFinder, findsOneWidget);

    // Verify the theming system.
    final MaterialApp materialApp = tester.widget(materialAppFinder);
    expect(materialApp.theme, equals(CosmosenseTheme.light));
    expect(materialApp.darkTheme, equals(CosmosenseTheme.dark));
    expect(materialApp.themeMode, equals(ThemeMode.system));
    expect(materialApp.routerConfig, isNotNull);
    expect(materialApp.routeInformationParser, isNull);
  });
}
