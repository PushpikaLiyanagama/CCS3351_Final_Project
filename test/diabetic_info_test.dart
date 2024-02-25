import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:final_project/diabetic_info_screen.dart'; // Adjust the import path according to your project structure

void main() {
  group('DiabeticInfo Widget Tests', () {
    testWidgets('DiabeticInfo builds correctly and displays its AppBar title', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MaterialApp(home: diabeticInfo()));

      // Verify that the AppBar contains the expected title.
      expect(find.text('Blood Sugar Level Informations'), findsOneWidget);

      // Verify the presence of BottomNavigationBar
      expect(find.byType(BottomNavigationBar), findsOneWidget);

      // Verify specific BottomNavigationBar items labels
      expect(find.text('Home'), findsOneWidget);
      expect(find.text('Info'), findsOneWidget);

      // Verify presence of key information sections
      expect(find.text('What is Diabetic ?'), findsOneWidget);
      expect(find.text('Understanding Diabetes and Maintaining Health'), findsOneWidget);
      expect(find.text('Managing Diabetes'), findsOneWidget);

      // You can add more finders here to test for other widgets or text present in your DiabeticInfo widget.
    });

    // You can add more testWidgets here for other aspects of the DiabeticInfo widget
  });
}
