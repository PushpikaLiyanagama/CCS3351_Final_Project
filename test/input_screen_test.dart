import 'package:final_project/input_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  group('inputScreen Tests', () {
    testWidgets('inputScreen renders correctly', (WidgetTester tester) async {
      // Wrap inputScreen in a MaterialApp for proper rendering
      await tester.pumpWidget(GetMaterialApp(home: inputScreen()));

      // Check if certain widgets are found
      expect(find.byType(TextFormField), findsNWidgets(3)); // 3 TextFormField widgets
      expect(find.text('Blood Sugar Monitor'), findsOneWidget);
    });

    testWidgets('Validates empty fields', (WidgetTester tester) async {
      await tester.pumpWidget(GetMaterialApp(home: inputScreen()));

      // Try to find the ElevatedButton and tap it
      final button = find.byType(ElevatedButton);
      await tester.tap(button);
      await tester.pump();

      // After tapping the button, we expect to find error messages
      expect(find.text('Please enter your age'), findsOneWidget);
      expect(find.text('Please enter before meal glucose level'), findsOneWidget);
      expect(find.text('Please enter after meal glucose level'), findsOneWidget);
    });
  });
}
