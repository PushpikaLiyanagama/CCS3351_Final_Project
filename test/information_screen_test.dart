import 'package:final_project/information_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InformationScreen Tests', () {
    testWidgets('Displays Normal Stage for a young person correctly', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: InformationScreen(before: 85, after: 120, age: 17),
      ));

      // Verify that the correct category is displayed
      expect(find.text('Normal Stage'), findsOneWidget);
      expect(find.text('Your blood sugar level category is:'), findsOneWidget);
    });

    testWidgets('Displays Type 1 Diabetic Stage for an adult correctly', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: InformationScreen(before: 110, after: 150, age: 30),
      ));

      // Verify that the correct category is displayed
      expect(find.text('Type 1 Diabetic Stage'), findsOneWidget);
    });

    testWidgets('Displays Type 2 Diabetic Stage for an adult correctly', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: InformationScreen(before: 130, after: 205, age: 40),
      ));

      // Verify that the correct category is displayed
      expect(find.text('Type 2 Diabetic Stage'), findsOneWidget);
    });

    testWidgets('Displays Diabetic in Senior Stage for a senior correctly', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: InformationScreen(before: 100, after: 205, age: 70),
      ));

      // Verify that the correct category is displayed
      expect(find.text('Diabetic in Senior Stage'), findsOneWidget);
    });

    testWidgets('Displays Unknown for unspecified conditions', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: InformationScreen(before: 60, after: 190, age: 25),
      ));

      // Verify that the correct category is displayed
      expect(find.text('Unknown'), findsOneWidget);
    });
  });
}
