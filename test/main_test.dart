import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:final_project/main.dart' as app;

void main() {
  testWidgets('MyApp widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app.MyApp());

    // Verify if GetMaterialApp widget is used.
    expect(find.byType(GetMaterialApp), findsOneWidget);

    // Verify if the title is correct.
    expect(find.text('Blood Sugar Monitor'), findsOneWidget);

  });
}
